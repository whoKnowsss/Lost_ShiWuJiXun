package com.dianshang.lost.model;

import java.util.Date;

public class LostAndFound {
    private Integer id;

    private Date createTime;

    private String kinds;

    private Date doTime;

    private String doPlace;

    private String special;

    private String image;

    private String contract;

    private String daxie;

    private String sponsorId;
    private int results;  //1代表找到或者归还，1没有

    private Integer status;  //1代表失物招领，2代表寻物启事，0代表删除

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getKinds() {
        return kinds;
    }

    public void setKinds(String kinds) {
        this.kinds = kinds;
    }

    public Date getDoTime() {
        return doTime;
    }

    public void setDoTime(Date doTime) {
        this.doTime = doTime;
    }

    public String getDoPlace() {
        return doPlace;
    }

    public void setDoPlace(String doPlace) {
        this.doPlace = doPlace;
    }

    public String getSpecial() {
        return special;
    }

    public void setSpecial(String special) {
        this.special = special;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getContract() {
        return contract;
    }

    public void setContract(String contract) {
        this.contract = contract;
    }

    public String getDaxie() {
        return daxie;
    }

    public void setDaxie(String daxie) {
        this.daxie = daxie;
    }

    public String getSponsorId() {
        return sponsorId;
    }

    public void setSponsorId(String sponsorId) {
        this.sponsorId = sponsorId;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public int getResults() {
        return results;
    }

    public void setResults(int results) {
        this.results = results;
    }

    @Override
    public String toString() {
        return "LostAndFound{" +
                "id=" + id +
                ", createTime=" + createTime +
                ", kinds='" + kinds + '\'' +
                ", doTime=" + doTime +
                ", doPlace='" + doPlace + '\'' +
                ", special='" + special + '\'' +
                ", image='" + image + '\'' +
                ", contract='" + contract + '\'' +
                ", daxie='" + daxie + '\'' +
                ", sponsorId='" + sponsorId + '\'' +
                ", results=" + results +
                ", status=" + status +
                '}';
    }
}