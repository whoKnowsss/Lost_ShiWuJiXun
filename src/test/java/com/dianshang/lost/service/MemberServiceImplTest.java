package com.dianshang.lost.service;

import com.dianshang.lost.model.Member;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.Date;

import static com.dianshang.lost.util.Encryption.MD5;
import static org.junit.Assert.*;

/**
 * Created by xiuFeng on 2017/2/5.
 */
public class MemberServiceImplTest {

    private ApplicationContext applicationContext;
   @Autowired
    private MemberService memberService;
    @Before
    public void setUp() throws Exception {
        applicationContext = new ClassPathXmlApplicationContext( "classpath*:spring/spring-*.xml");//加载spring配置文件
        memberService=applicationContext.getBean(MemberService.class);//在这里导入要测试的

    }
    @After
    public void tearDown() throws Exception {

    }



    @Test
    public void insertSelective() throws Exception {
        Member member=new Member();
        member.setEmail("1165527916@qq.com");
        member.setPhone("15968165981");
        member.setCreateTime(new Date());
        member.setImgPath("/img/pic.png");
        member.setIsAdmin(1);
        member.setPassword(MD5("123456"));
        member.setName("admin");
        System.out.println(memberService.insertSelective(member));
    }

    @Test
    public void selectSelective() throws Exception {

    }

    @Test
    public void doLogin() throws Exception {

    }

}