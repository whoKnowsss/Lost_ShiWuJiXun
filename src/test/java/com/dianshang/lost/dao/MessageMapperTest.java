package com.dianshang.lost.dao;

import com.dianshang.lost.model.Message;
import com.dianshang.lost.util.Encryption;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import static org.junit.Assert.*;

/**
 * Created by 11655 on 2017/4/6.
 */
public class MessageMapperTest {
  @Autowired
  private  MessageMapper messageMapper;


    private ApplicationContext applicationContext;

    @Before
    public void setUp() throws Exception {
        applicationContext = new ClassPathXmlApplicationContext( "classpath*:spring/spring-*.xml");//加载spring配置文件
        messageMapper=applicationContext.getBean(MessageMapper.class);//在这里导入要测试的

    }
    @After
    public void tearDown() throws Exception {

    }



    @Test
    public void select() throws Exception {
        System.out.println(Encryption.MD5("123456"));
    }

}