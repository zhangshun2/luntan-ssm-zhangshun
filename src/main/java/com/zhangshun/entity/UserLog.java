package com.zhangshun.entity;

import java.io.Serializable;
import java.util.Date;

public class UserLog implements Serializable {
    private Integer userid;

    private Date nowtime;

    private String userdo;

    private Integer useridtwo;

    private String usertuoname;

    private static final long serialVersionUID = 1L;

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Date getNowtime() {
        return nowtime;
    }

    public void setNowtime(Date nowtime) {
        this.nowtime = nowtime;
    }

    public String getUserdo() {
        return userdo;
    }

    public void setUserdo(String userdo) {
        this.userdo = userdo == null ? null : userdo.trim();
    }

    public Integer getUseridtwo() {
        return useridtwo;
    }

    public void setUseridtwo(Integer useridtwo) {
        this.useridtwo = useridtwo;
    }

    public String getUsertuoname() {
        return usertuoname;
    }

    public void setUsertuoname(String usertuoname) {
        this.usertuoname = usertuoname == null ? null : usertuoname.trim();
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        UserLog other = (UserLog) that;
        return (this.getUserid() == null ? other.getUserid() == null : this.getUserid().equals(other.getUserid()))
            && (this.getNowtime() == null ? other.getNowtime() == null : this.getNowtime().equals(other.getNowtime()))
            && (this.getUserdo() == null ? other.getUserdo() == null : this.getUserdo().equals(other.getUserdo()))
            && (this.getUseridtwo() == null ? other.getUseridtwo() == null : this.getUseridtwo().equals(other.getUseridtwo()))
            && (this.getUsertuoname() == null ? other.getUsertuoname() == null : this.getUsertuoname().equals(other.getUsertuoname()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getUserid() == null) ? 0 : getUserid().hashCode());
        result = prime * result + ((getNowtime() == null) ? 0 : getNowtime().hashCode());
        result = prime * result + ((getUserdo() == null) ? 0 : getUserdo().hashCode());
        result = prime * result + ((getUseridtwo() == null) ? 0 : getUseridtwo().hashCode());
        result = prime * result + ((getUsertuoname() == null) ? 0 : getUsertuoname().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", userid=").append(userid);
        sb.append(", nowtime=").append(nowtime);
        sb.append(", userdo=").append(userdo);
        sb.append(", useridtwo=").append(useridtwo);
        sb.append(", usertuoname=").append(usertuoname);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}