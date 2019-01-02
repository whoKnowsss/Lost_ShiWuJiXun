package com.dianshang.lost.dao;

import com.dianshang.lost.model.Message;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface MessageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Message record);

    int insertSelective(Message record);

    Message selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Message record);

    int updateByPrimaryKeyWithBLOBs(Message record);

    int updateByPrimaryKey(Message record);

    ArrayList<Message> select(Message record);
}