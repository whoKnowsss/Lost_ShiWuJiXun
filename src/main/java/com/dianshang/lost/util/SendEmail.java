package com.dianshang.lost.util;

/**
 * Created by xiuFeng on 2016/12/17.
 */

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Date;
import java.util.Properties;

public class SendEmail {
    public static final String HOST = "smtp.163.com";
    public static final String PROTOCOL = "smtp";
    public static final int PORT = 25;
    public static final String FROM = "m15968165981@163.com";//发件人的email
    public static final String PWD = "lixiufeng123";//发件人密码


    /**
     * 获取Session
     *
     * @return
     */
    private static Session getSession() {
        Properties props = new Properties();
        props.put("mail.smtp.host", HOST);//设置服务器地址
        props.put("mail.store.protocol", PROTOCOL);//设置协议
        props.put("mail.smtp.port", PORT);//设置端口
        props.put("mail.smtp.auth", true);

        Authenticator authenticator = new Authenticator() {

            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(FROM, PWD);
            }

        };
        Session session = Session.getInstance(props, authenticator);

        return session;
    }

    public static void send(String toEmail, String title, String content) {
        Session session = getSession();
        try {
            System.out.println("--send--" + content);
            // Instantiate a message
            Message msg = new MimeMessage(session);

            //Set message attributes
            msg.setFrom(new InternetAddress(FROM));
            InternetAddress[] address = {new InternetAddress(toEmail)};
            msg.setRecipients(Message.RecipientType.TO, address);
            msg.setSubject(title);
            msg.setSentDate(new Date());
            msg.setContent(content, "text/html;charset=utf-8");

            //Send the message
            Transport.send(msg);
        } catch (MessagingException mex) {
            mex.printStackTrace();
        }
    }

    public static void main(String[] args) {
//        String content = "kfsmfkl";
//        String reply = "jdngrngr";
//        String email = "1165527916@qq.com";
//        content = content+"<br>---------------------------------------我是分割线-----------------------------------------------------<br>"+reply;
//        send(email,"反馈回复",content);
//        send("1165527916@qq.com","注册","欢迎用户15058317注册使用本平台，您本次的验证码是\"3eec8\",30min后失效！");
        send("1165527916@qq.com","注册"," <img src=\"http://avatar.csdn.net/E/C/E/2_lxfhahaha.jpg\" width=\"100px\" height=\"100px\">");
    }

}
