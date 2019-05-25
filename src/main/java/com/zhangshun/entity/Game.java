package com.zhangshun.entity;

import java.io.Serializable;

public class Game implements Serializable {
    private Integer gid;

    private String gname;

    private String gcontext;

    private String gurl;

    private String gtype;

    private String gpower;

    private String gbolog;

    private static final long serialVersionUID = 1L;

    public Integer getGid() {
        return gid;
    }

    public void setGid(Integer gid) {
        this.gid = gid;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname == null ? null : gname.trim();
    }

    public String getGcontext() {
        return gcontext;
    }

    public void setGcontext(String gcontext) {
        this.gcontext = gcontext == null ? null : gcontext.trim();
    }

    public String getGurl() {
        return gurl;
    }

    public void setGurl(String gurl) {
        this.gurl = gurl == null ? null : gurl.trim();
    }

    public String getGtype() {
        return gtype;
    }

    public void setGtype(String gtype) {
        this.gtype = gtype == null ? null : gtype.trim();
    }

    public String getGpower() {
        return gpower;
    }

    public void setGpower(String gpower) {
        this.gpower = gpower == null ? null : gpower.trim();
    }

    public String getGbolog() {
        return gbolog;
    }

    public void setGbolog(String gbolog) {
        this.gbolog = gbolog == null ? null : gbolog.trim();
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
        Game other = (Game) that;
        return (this.getGid() == null ? other.getGid() == null : this.getGid().equals(other.getGid()))
            && (this.getGname() == null ? other.getGname() == null : this.getGname().equals(other.getGname()))
            && (this.getGcontext() == null ? other.getGcontext() == null : this.getGcontext().equals(other.getGcontext()))
            && (this.getGurl() == null ? other.getGurl() == null : this.getGurl().equals(other.getGurl()))
            && (this.getGtype() == null ? other.getGtype() == null : this.getGtype().equals(other.getGtype()))
            && (this.getGpower() == null ? other.getGpower() == null : this.getGpower().equals(other.getGpower()))
            && (this.getGbolog() == null ? other.getGbolog() == null : this.getGbolog().equals(other.getGbolog()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getGid() == null) ? 0 : getGid().hashCode());
        result = prime * result + ((getGname() == null) ? 0 : getGname().hashCode());
        result = prime * result + ((getGcontext() == null) ? 0 : getGcontext().hashCode());
        result = prime * result + ((getGurl() == null) ? 0 : getGurl().hashCode());
        result = prime * result + ((getGtype() == null) ? 0 : getGtype().hashCode());
        result = prime * result + ((getGpower() == null) ? 0 : getGpower().hashCode());
        result = prime * result + ((getGbolog() == null) ? 0 : getGbolog().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", gid=").append(gid);
        sb.append(", gname=").append(gname);
        sb.append(", gcontext=").append(gcontext);
        sb.append(", gurl=").append(gurl);
        sb.append(", gtype=").append(gtype);
        sb.append(", gpower=").append(gpower);
        sb.append(", gbolog=").append(gbolog);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}