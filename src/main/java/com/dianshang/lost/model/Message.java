package com.dianshang.lost.model;

import java.util.Date;

public class Message {
    private Integer id;

    private Integer toUser;

    private Date createTime;

    private String contract;

    private String content;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getToUser() {
        return toUser;
    }

    public void setToUser(Integer toUser) {
        this.toUser = toUser;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getContract() {
        return contract;
    }

    public void setContract(String contract) {
        this.contract = contract;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "Message{" +
                "id=" + id +
                ", toUser=" + toUser +
                ", createTime=" + createTime +
                ", contract='" + contract + '\'' +
                ", content='" + content + '\'' +
                '}';
    }
}