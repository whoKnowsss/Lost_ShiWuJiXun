package com.dianshang.lost.dao;

import com.dianshang.lost.model.LostAndFound;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface LostAndFoundMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LostAndFound record);

    int insertSelective(LostAndFound record);

    LostAndFound selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LostAndFound record);

    int updateByPrimaryKey(LostAndFound record);
    ArrayList<LostAndFound> selectSelective(LostAndFound lostAndFound);
}