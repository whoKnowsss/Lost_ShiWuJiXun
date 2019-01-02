package com.dianshang.lost.model;

import java.util.Date;

public class Member {
    private Integer id;

    private String name;

    private String password;

    private Integer isAdmin;

    private Date createTime;

    private String imgPath;

    private String phone;

    private String email;

    private String label;

    private String qq;
    private String wx;
    private String other;
   private String signare;
    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public String getWx() {
        return wx;
    }

    public void setWx(String wx) {
        this.wx = wx;
    }

    public String getOther() {
        return other;
    }

    public void setOther(String other) {
        this.other = other;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(Integer isAdmin) {
        this.isAdmin = isAdmin;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getImgPath() {
        return imgPath;
    }

    public void setImgPath(String imgPath) {
        this.imgPath = imgPath;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getSignare() {
        return signare;
    }

    public void setSignare(String signare) {
        this.signare = signare;
    }

    @Override
    public String toString() {
        return "Member{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", isAdmin=" + isAdmin +
                ", createTime=" + createTime +
                ", imgPath='" + imgPath + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", label='" + label + '\'' +
                ", qq='" + qq + '\'' +
                ", wx='" + wx + '\'' +
                ", other='" + other + '\'' +
                ", signare='" + signare + '\'' +
                '}';
    }
}