package com.dianshang.lost.action;

import com.dianshang.lost.model.Feedback;
import com.dianshang.lost.service.FeedBackService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;

/**
 * Created by 11655 on 2017/3/24.
 */
@Controller
public class feedController {
    @Autowired
    private FeedBackService feedBackService;

    //添加用户反馈
    @RequestMapping(value = "/feed/addfeedback",method = RequestMethod.POST)
    @ResponseBody
    public JSONObject add_feedback(@ModelAttribute Feedback contract){

        JSONObject jsonObject = new JSONObject();
        contract.setCreatetime(new Date());
        System.out.println(contract);
        if(feedBackService.insert(contract)==1){
            jsonObject.put("result","success");
        }
        else
        {
            jsonObject.put("result","发生未知错误，请联系管理员！");
        }
        return jsonObject;
    }
}
