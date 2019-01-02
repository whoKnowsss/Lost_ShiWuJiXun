package com.dianshang.lost.service;

import com.dianshang.lost.dao.FeedbackMapper;
import com.dianshang.lost.model.Feedback;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 11655 on 2017/3/24.
 */
@Service
public class FeedBackService {
    @Autowired
    private FeedbackMapper feedbackMapper;

    //插入
    public int insert(Feedback feedback){
        return  feedbackMapper.insertSelective(feedback);
    }
}
