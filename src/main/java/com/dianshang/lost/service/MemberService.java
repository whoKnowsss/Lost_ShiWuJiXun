package com.dianshang.lost.service;

import com.dianshang.lost.dao.MemberMapper;
import com.dianshang.lost.model.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by xiuFeng on 2017/2/5.
 */
@Service
public class MemberService {
    @Autowired
    private MemberMapper memberMapper;

    public int insertSelective(Member member) {
        return memberMapper.insertSelective(member);
    }

    public ArrayList<Member> selectSelective(Member member) {
        return memberMapper.selectSelective(member);
    }

    public Member selectByPk(Integer id) {
        return memberMapper.selectByPrimaryKey(id);
    }


    public int updateByPk(Member member) {
        return memberMapper.updateByPrimaryKey(member);
    }

    //用姓名。电话。邮箱登陆
    public Member doLogin(String name) {
        Member member = new Member();
        member.setName(name);
        List<Member> members = memberMapper.selectSelective(member);
        if (members.size() == 0) {
            member.setName(null);
            member.setPhone(name);
            members = memberMapper.selectSelective(member);
            if (members.size() == 0) {
                member.setPhone(null);
                member.setEmail(name);
                members = memberMapper.selectSelective(member);
                if (members.size() == 0)
                    return null;
                else return members.get(0);
            } else return members.get(0);
        } else
            return members.get(0);
    }
}
