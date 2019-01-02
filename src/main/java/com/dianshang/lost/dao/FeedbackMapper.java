package com.dianshang.lost.dao;

import com.dianshang.lost.model.Feedback;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface FeedbackMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Feedback record);

    int insertSelective(Feedback record);

    Feedback selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Feedback record);

    int updateByPrimaryKey(Feedback record);

    ArrayList<Feedback> selectSelective(Feedback feedback);
}