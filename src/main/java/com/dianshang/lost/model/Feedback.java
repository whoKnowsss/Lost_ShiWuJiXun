package com.dianshang.lost.model;

import java.util.Date;

public class Feedback {
    private Integer id;

    private String email;

    private String name;

    private String subject;

    private String content;

    private Date createtime;

    private Date replaytime;

    private String replaycon;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Date getReplaytime() {
        return replaytime;
    }

    public void setReplaytime(Date replaytime) {
        this.replaytime = replaytime;
    }

    public String getReplaycon() {
        return replaycon;
    }

    public void setReplaycon(String replaycon) {
        this.replaycon = replaycon;
    }

    @Override
    public String toString() {
        return "Feedback{" +
                "id=" + id +
                ", email='" + email + '\'' +
                ", name='" + name + '\'' +
                ", subject='" + subject + '\'' +
                ", content='" + content + '\'' +
                ", createtime=" + createtime +
                ", replaytime=" + replaytime +
                ", replaycon='" + replaycon + '\'' +
                '}';
    }
}