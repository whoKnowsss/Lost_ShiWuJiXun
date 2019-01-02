package com.dianshang.lost.action;

import com.dianshang.lost.model.LostAndFound;
import com.dianshang.lost.service.LostAndFoundService;
import com.dianshang.lost.util.pc;
import com.qiniu.util.Json;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.Date;
import java.util.List;

/**
 * Created by 11655 on 2017/4/2.
 */
@Controller
public class lostAndFoundController {
    @Autowired
    private LostAndFoundService lostAndFoundService;

    @RequestMapping(value = "/m/info/doPublish", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject dopostpublish(Model model, @ModelAttribute LostAndFound lostAndFound, HttpSession session) {
        JSONObject jsonObject = new JSONObject();
        lostAndFound.setCreateTime(new Date());
        lostAndFound.setResults(0);
        if (lostAndFoundService.insert(lostAndFound) == 1)
            jsonObject.put("result", 1);
        else
            jsonObject.put("result", 0);
        return jsonObject;
    }

    /**
     * 上传照片
     *
     * @param request
     * @param id
     * @param file0
     * @param file1
     * @return
     */
    @RequestMapping(value = "/lostandfound/file/upload/{id}")
    @ResponseBody
    public JSONObject uploadImg(HttpServletRequest request, @PathVariable("id") int id, @RequestParam(value = "file0", required = false) MultipartFile file0, @RequestParam(value = "file1", required = false) MultipartFile file1) {
        //如果用的是Tomcat服务器，则文件会上传到\\%TOMCAT_HOME%\\webapps\\YourWebProject\\upload\\文件夹中
        MultipartFile file = id == 0 ? file0 : file1;
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

    @RequestMapping("/find/picture")
    @ResponseBody
    public  JSONObject getPic(@RequestParam("gjz")String gjz,@RequestParam("num") int num) throws Exception {
        JSONObject jsonObject=new JSONObject();
        List<String> lists= pc.getPicturesURL(gjz,num*2);
        jsonObject.put("url",lists);
        return  jsonObject;
    }
}
