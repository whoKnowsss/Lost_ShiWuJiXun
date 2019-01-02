package com.dianshang.lost.action;

import com.dianshang.lost.model.LostAndFound;
import com.dianshang.lost.model.Member;
import com.dianshang.lost.model.Message;
import com.dianshang.lost.service.LostAndFoundService;
import com.dianshang.lost.service.MemberService;
import com.dianshang.lost.service.MessageService;
import com.sun.mail.util.LineOutputStream;
import net.sf.json.JSONObject;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 * Created by xiuFeng on 2017/1/24.
 */
@Controller
public class mainController {

    @Autowired
    private MemberService memberService;
    @Autowired
    private LostAndFoundService lostAndFoundService;
    @Autowired
    private MessageService messageService;

    @RequestMapping("a/form")
    public String mainn(Model model, @RequestParam("id") String id) {
        model.addAttribute("id", id);
        return "new";
    }

    @RequestMapping(value = "/m/infoSave", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject infoSave(HttpSession session, Model model, @ModelAttribute Member user) {
        JSONObject jsonObject = new JSONObject();
        Member member = (Member) session.getAttribute("user");
        member.setPhone(user.getPhone());
        member.setOther(user.getOther());
        member.setQq(user.getQq());
        member.setWx(user.getWx());
        if (memberService.updateByPk(member) == 1) {
            jsonObject.put("result", 1);
            model.addAttribute("user", member);
            session.setAttribute("user", member);
        } else
            jsonObject.put("result", 0);
        return jsonObject;
    }


    @RequestMapping("/m/infoPublish")
    public String infopublish(HttpSession session, Model model) {
        if (session.getAttribute("user") != null) {
            Member member = (Member) session.getAttribute("user");
            model.addAttribute("user", member);
        }
        return "infoPublish";
    }

    @RequestMapping("/m/infoToQR")
    public String infotoQR(HttpSession session, Model model) {
        if (session.getAttribute("user") != null) {
            Member member = (Member) session.getAttribute("user");
            model.addAttribute("user", member);
        }
        return "infoToQR";
    }

    @RequestMapping("/m/userQR")
    public String userQR(HttpSession session, Model model) {
        if (session.getAttribute("user") != null) {
            Member member = (Member) session.getAttribute("user");
            model.addAttribute("user", member);
        }
        return "userQR";
    }

    @RequestMapping("/userIndex")
    private String toUserIndex(HttpSession session, Model model) {
        if (session.getAttribute("user") != null) {
            Member member = (Member) session.getAttribute("user");
            model.addAttribute("user", member);
        }
        return "userIndex";
    }

    @RequestMapping("/index")
    private String index(HttpSession session, Model model) {
        if (session.getAttribute("user") != null) {
            Member member = (Member) session.getAttribute("user");
            model.addAttribute("user", member);
        }
        return "index";
    }

    @RequestMapping("/m/mySpace")
    private String myspace(Model model, HttpSession session) {
        if (session.getAttribute("user") != null) {
            Member member = (Member) session.getAttribute("user");
            model.addAttribute("user", member);
            model.addAttribute("host", member);
            LostAndFound lostAndFound=new LostAndFound();
            lostAndFound.setSponsorId(((Member) session.getAttribute("user")).getId().toString());
            ArrayList<LostAndFound> lostAndFounds=lostAndFoundService.selectSecletive(lostAndFound);
            model.addAttribute("losts",lostAndFounds);
            Message message=new Message();
            message.setToUser(member.getId());
            ArrayList<Message> mes=messageService.select(message);
            model.addAttribute("mes",mes);
        }
        return "mySpace";
    }

    @RequestMapping("/market")
    private String market(){ return "market"; }

    @RequestMapping("/userSpace/{id}")
    private String userSpace(@PathVariable("id") int id, Model model, HttpSession session) {
        Member member = (Member) session.getAttribute("user");
        model.addAttribute("user", member);
        if (member != null && member.getId() == id) {
            model.addAttribute("host", member);
        } else {
            Member userGet = memberService.selectByPk(id);
            if (userGet == null)
                return "404";
            else {
               // userGet.setId(null);
                userGet.setPassword(null);
                userGet.setIsAdmin(null);
                userGet.setCreateTime(null);
                model.addAttribute("host", userGet);
            }
        }
        return "mySpaceShow";
    }
    @RequestMapping("/404")
    private String to404(){
        return "404";
    }

    @RequestMapping("/aboutUs")
    private  String aboutUs(){return "aboutUs";}

    @RequestMapping("/latest")
    private String latest(){return "latest";}

    @RequestMapping("/mySpaceShow")
    private  String mySpaceShow(){return "mySpaceShow";}

    @RequestMapping("/moreInfo")
    private String moreInfo(){return "moreInfo";}
}
