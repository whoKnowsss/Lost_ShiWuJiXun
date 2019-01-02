package com.dianshang.lost.dao;

import com.dianshang.lost.model.Member;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface MemberMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Member record);

    int insertSelective(Member record);

    Member selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Member record);

    int updateByPrimaryKey(Member record);

    ArrayList<Member> selectSelective(Member member);
}