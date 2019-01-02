package com.dianshang.lost.action;

import com.dianshang.lost.model.Member;
import com.dianshang.lost.model.Message;
import com.dianshang.lost.service.MemberService;
import com.dianshang.lost.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.Date;

/**
 * Created by 11655 on 2017/4/6.
 */
@Controller
public class messageController {
    @Autowired
    private MessageService messageService;
    @Autowired
    private MemberService memberService;

    @RequestMapping(value = "userSpace/postThing", method = RequestMethod.POST)
    private String tijiao(@ModelAttribute Message message, Model model, HttpSession session) {
        message.setCreateTime(new Date());
        if (messageService.insert(message) == 1)
            model.addAttribute("result", 1);
        else
            model.addAttribute("result", 0);
        Member member = (Member) session.getAttribute("user");
        model.addAttribute("user", member);
        int id = message.getToUser();
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
}
