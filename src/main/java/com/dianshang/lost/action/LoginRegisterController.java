package com.dianshang.lost.action;

import com.dianshang.lost.model.Member;
import com.dianshang.lost.service.MemberService;
import com.dianshang.lost.util.ValidateCode;
import net.sf.json.JSONObject;
import org.apache.commons.lang.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.util.WebUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;

import static com.dianshang.lost.util.Encodes.decodeBase64String;
import static com.dianshang.lost.util.Encodes.encodeBase64;
import static com.dianshang.lost.util.Encryption.MD5;
import static com.dianshang.lost.util.SendEmail.send;
import static com.dianshang.lost.util.ValidateCode.generateTextCode;
//import static com.dianshang.lost.util.Encodes.getURLDecoderString;
//import static com.dianshang.lost.util.Encodes.getURLEncoderString;

/**
 * Created by xiuFeng on 2017/2/3.
 */
@Controller
public class LoginRegisterController {

    @Autowired
    private MemberService memberService;

    /*
    * 跳转到登陆页面
     */
    @RequestMapping("/userLogin")
    public String userlogin(HttpSession session, Model model) {
        Member member = (Member) session.getAttribute("user");
        if (member == null)
            return "userLogin";
        else {
            model.addAttribute("user", member);
            return "userIndex";
        }
    }


    /*
    *  登陆的方法
     */
    @RequestMapping(value = "/doLogin", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject doLogin(@RequestParam("password") String password,
                              @RequestParam("username") String username,
                              @RequestParam("yzm") String submitCode, HttpServletRequest request) {
        JSONObject jsonObject = new JSONObject();
        if (request.getSession().getAttribute("user") != null) {
            jsonObject.put("msg", "检测到已有账号登录，请退出登录后再试！");
            jsonObject.put("url", "userIndex");
            return jsonObject;

        }
        String code = (String) request.getSession().getAttribute("validateCode");
//        System.out.println("submitCode:"+submitCode);
//        System.out.println("code:"+code);
        if (StringUtils.isEmpty(submitCode) || !StringUtils.equals(code, submitCode.toLowerCase())) {
            jsonObject.put("msg", "验证码错误！");
            return jsonObject;
        }
        //获取当前的Subject
        Subject currentUser = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(username, MD5(password));
        String authtication = null;
        try {
            if (!currentUser.isAuthenticated()) {
                token.setRememberMe(true);
                currentUser.login(token);
                //jsonObject.put("result", "success");
                Member member = memberService.doLogin(username);
                request.getSession().setAttribute("user", member);
                authtication = "1";
            }
        } catch (UnknownAccountException e) {
            authtication = "账号错误！";
        } catch (IncorrectCredentialsException e) {
            authtication = "密码不正确!";
        } catch (ExcessiveAttemptsException e) {
            authtication = "登录失败次数过多！";
        } catch (LockedAccountException e) {
            authtication = "账户已被锁定，不可用！";
        } catch (AuthenticationException e) {
            authtication = "认证错误！";
        }
        jsonObject.put("msg", authtication);
        String url;
        try {
            url = WebUtils.getSavedRequest(request).getRequestUrl();
        } catch (Exception ex) {
            ex.printStackTrace();
            url = "userIndex";
        }
//        String url = WebUtils.getSavedRequest(request).getRequestUrl() == null ? "userIndex" : WebUtils.getSavedRequest(request).getRequestUrl();
        jsonObject.put("url", url);
        return jsonObject;

    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(RedirectAttributes redirectAttributes) {
        //使用权限管理工具进行用户的退出，跳出登录，给出提示信息
        SecurityUtils.getSubject().logout();
        redirectAttributes.addFlashAttribute("message", "您已安全退出！");
        return "redirect:/login";
    }


    /**
     * 生成验证码
     *
     * @param request
     * @param response
     * @throws IOException
     */
    @RequestMapping(value = "/validateCode")
    public void validateCode(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setHeader("Cache-Control", "no-cache");
        String verifyCode = generateTextCode(ValidateCode.TYPE_NUM_ONLY, 4, null);
        request.getSession().setAttribute("validateCode", verifyCode);
        response.setContentType("image/jpeg");
        BufferedImage bim = ValidateCode.generateImageCode(verifyCode, 90, 30, 3, true, Color.WHITE, Color.BLACK, null);
        ImageIO.write(bim, "JPEG", response.getOutputStream());
    }

    /**
     * 跳转到注册页面
     *
     * @return
     */
    @RequestMapping(value = "/userRegister", method = RequestMethod.GET)
    public String userregister() {
        return "userRegister";
    }

    /**
     * 注册,发送邮件
     *
     * @param member
     * @return
     */
    @RequestMapping(value = "/doRegister", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject userDoRegister(@ModelAttribute Member member, HttpServletRequest request) {
        JSONObject jsonObject = new JSONObject();
        Member member1 = new Member();
        member1.setName(member.getName());
        if (memberService.selectSelective(member1).size() > 0) {
            jsonObject.put("error", "该用户名已有人注册过！");
            jsonObject.put("result", "wrong");
        } else {
            member1.setName(null);
            member1.setEmail(member.getEmail());
            if (memberService.selectSelective(member1).size() > 0) {
                jsonObject.put("error", "该邮箱已有人注册过！");
                jsonObject.put("result", "wrong");
            } else {
                if (member.getPassword() == null) {
                    jsonObject.put("result", "wrong");
                } else {
                    jsonObject.put("result", "1");
                    request.getSession().setAttribute("register", "1");
                    StringBuilder content = new StringBuilder();
                    Date date = new Date();
                    DateFormat ddtf = DateFormat.getDateTimeInstance();
                    content.append("<h2>欢迎注册\"失物即寻\"平台，以下是您的注册码！该注册码有效期为一小时！</h2>");
                    String zcm = generateTextCode(4, 4, null);
                    content.append(zcm);
//                    content.append("<a style='font-size:16px;' href='http://" + "127.0.0.1:8080/" + "lost/user/doRegister/");
//                    content.append("http://" + "115.159.43.70/" + "lost/user/userRegister/");
//                    content.append(encodeBase64(member.getEmail() + "::" + member.getName() + "::" + member.getImgPath() + "::" + MD5(member.getPassword()))).append("/").append(encodeBase64((ddtf.format(new Date(date.getTime() + (long) 60 * 60 * 1000))))).append("'>Click Here..</a>");
//                    content.append("<img src='http://").append("127.0.0.1:8080/").append("lost/validateCode'>");
                    content.append("<br>---------------------------------------我是分割线-----------------------------------------------------<br>");
                    content.append("该注册码将于").append(ddtf.format(new Date(date.getTime() + (long) 60 * 60 * 1000))).append("失效，请尽快点击完成注册！");
                    System.out.println(content);
//                System.out.println(JM(getURLDecoderString(a)));
                    send(member.getEmail(), "失物即寻-注册", content.toString());
                    member.setCreateTime(new Date());
                    member.setIsAdmin(0);
                    member.setPassword(MD5(member.getPassword()));
                    request.getSession().setAttribute("regis", member);
                    request.getSession().setAttribute("zcm", zcm);
                }

            }
        }
        return jsonObject;
    }

    @RequestMapping(value = "/user/doRegister", method = RequestMethod.POST)
    @ResponseBody
    private JSONObject getEmailInfo(@RequestParam("zcm") String zcm, Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        JSONObject jsonObject = new JSONObject();
        String sezcm = (String) session.getAttribute("zcm");
        if (StringUtils.isEmpty(zcm) || !StringUtils.equals(sezcm, zcm.toLowerCase())) {
            jsonObject.put("result", "验证码错误！");
        } else if (memberService.insertSelective((Member) session.getAttribute("regis")) == 1) {
            jsonObject.put("result", "1");
        } else {
            jsonObject.put("result", "未知错误，请联系管理员！");
        }
        return jsonObject;
    }

    /**
     * 上传头像
     *
     * @param request
     * @param file
     * @return
     */
    @RequestMapping(value = "/file/upload")
    @ResponseBody
    public JSONObject uploadImg(HttpServletRequest request, @RequestParam(value = "file", required = false) MultipartFile file) {
        //如果用的是Tomcat服务器，则文件会上传到\\%TOMCAT_HOME%\\webapps\\YourWebProject\\upload\\文件夹中
        JSONObject jsonObject = new JSONObject();
        //获得文件上传目标路径
        try {

            if (file == null) {
                System.out.println("后台空");
                jsonObject.put("success", 0);
                jsonObject.put("message", "文件为空");
                return jsonObject;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        String path = request.getSession().getServletContext().getRealPath("upload");
        //System.out.print("路径"+path);
        String fileName = new Date().getTime() + ".png";//设置文件名
        System.out.println(path);
        File targetFile = new File(path, fileName);
        if (!targetFile.exists()) {
            targetFile.mkdirs();
        }
        //保存
        try {
            file.transferTo(targetFile);
        } catch (Exception e) {
            e.printStackTrace();
            jsonObject.put("success", 0);
            jsonObject.put("message", "上传失败");
            return jsonObject;
        }

        String url = request.getRequestURL().toString();
        System.out.println("url" + url.substring(0, url.indexOf("/", url.indexOf("/") + 1)));
        System.out.print("request.getContextPath() :" + request.getContextPath() + "\n"
                + "request.getRequestURL()" + request.getRequestURL()
        );
        jsonObject.put("success", 1);
        jsonObject.put("message", "上传成功");
        jsonObject.put("url", request.getContextPath() + "/upload/" + fileName);
        return jsonObject;
    }


    @RequestMapping("/user/wait")
    private String toWait(HttpServletRequest request) {
        if (("1").equals((String) request.getSession().getAttribute("register")))
            return "userWait";
        else
            return "userRegister";
    }
}
