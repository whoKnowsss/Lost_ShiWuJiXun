package com.dianshang.lost.service;

import com.dianshang.lost.dao.MessageMapper;
import com.dianshang.lost.model.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

/**
 * Created by 11655 on 2017/4/6.
 */
@Service
public class MessageService {
    @Autowired
    private MessageMapper messageMapper;

    public int insert(Message message){
        return  messageMapper.insertSelective(message);
    }

    public ArrayList<Message> select(Message message){
        return  messageMapper.select(message);
    }

}
