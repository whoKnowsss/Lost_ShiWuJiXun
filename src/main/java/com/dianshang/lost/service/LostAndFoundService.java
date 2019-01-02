package com.dianshang.lost.service;

import com.dianshang.lost.dao.LostAndFoundMapper;
import com.dianshang.lost.model.LostAndFound;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

/**
 * Created by 11655 on 2017/4/2.
 */
@Service
public class LostAndFoundService {
    @Autowired
    private LostAndFoundMapper lostAndFoundMapper;


    //插入
    public int insert(LostAndFound lostAndFound) {
        return lostAndFoundMapper.insertSelective(lostAndFound);
    }


    //选择
    public ArrayList<LostAndFound> selectSecletive(LostAndFound lostAndFound){
        return  lostAndFoundMapper.selectSelective(lostAndFound);
    }
}
