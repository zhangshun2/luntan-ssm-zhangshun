package com.zhangshun.entity;

import java.io.Serializable;

public class Card implements Serializable {
    private Integer tid;

    private String content;

    private String title;

    private Integer authorid;

    private String hidden;

    private Integer collect;

    private Integer thumpsup;

    private Integer collecttimes;

    private Integer thumpsuptimes;

    private Integer showlevel;

    private Integer gameid;

    private String gamename;

    private String remarks;

    private static final long serialVersionUID = 1L;

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Integer getAuthorid() {
        return authorid;
    }

    public void setAuthorid(Integer authorid) {
        this.authorid = authorid;
    }

    public String getHidden() {
        return hidden;
    }

    public void setHidden(String hidden) {
        this.hidden = hidden == null ? null : hidden.trim();
    }

    public Integer getCollect() {
        return collect;
    }

    public void setCollect(Integer collect) {
        this.collect = collect;
    }

    public Integer getThumpsup() {
        return thumpsup;
    }

    public void setThumpsup(Integer thumpsup) {
        this.thumpsup = thumpsup;
    }

    public Integer getCollecttimes() {
        return collecttimes;
    }

    public void setCollecttimes(Integer collecttimes) {
        this.collecttimes = collecttimes;
    }

    public Integer getThumpsuptimes() {
        return thumpsuptimes;
    }

    public void setThumpsuptimes(Integer thumpsuptimes) {
        this.thumpsuptimes = thumpsuptimes;
    }

    public Integer getShowlevel() {
        return showlevel;
    }

    public void setShowlevel(Integer showlevel) {
        this.showlevel = showlevel;
    }

    public Integer getGameid() {
        return gameid;
    }

    public void setGameid(Integer gameid) {
        this.gameid = gameid;
    }

    public String getGamename() {
        return gamename;
    }

    public void setGamename(String gamename) {
        this.gamename = gamename == null ? null : gamename.trim();
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
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
        Card other = (Card) that;
        return (this.getTid() == null ? other.getTid() == null : this.getTid().equals(other.getTid()))
            && (this.getContent() == null ? other.getContent() == null : this.getContent().equals(other.getContent()))
            && (this.getTitle() == null ? other.getTitle() == null : this.getTitle().equals(other.getTitle()))
            && (this.getAuthorid() == null ? other.getAuthorid() == null : this.getAuthorid().equals(other.getAuthorid()))
            && (this.getHidden() == null ? other.getHidden() == null : this.getHidden().equals(other.getHidden()))
            && (this.getCollect() == null ? other.getCollect() == null : this.getCollect().equals(other.getCollect()))
            && (this.getThumpsup() == null ? other.getThumpsup() == null : this.getThumpsup().equals(other.getThumpsup()))
            && (this.getCollecttimes() == null ? other.getCollecttimes() == null : this.getCollecttimes().equals(other.getCollecttimes()))
            && (this.getThumpsuptimes() == null ? other.getThumpsuptimes() == null : this.getThumpsuptimes().equals(other.getThumpsuptimes()))
            && (this.getShowlevel() == null ? other.getShowlevel() == null : this.getShowlevel().equals(other.getShowlevel()))
            && (this.getGameid() == null ? other.getGameid() == null : this.getGameid().equals(other.getGameid()))
            && (this.getGamename() == null ? other.getGamename() == null : this.getGamename().equals(other.getGamename()))
            && (this.getRemarks() == null ? other.getRemarks() == null : this.getRemarks().equals(other.getRemarks()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getTid() == null) ? 0 : getTid().hashCode());
        result = prime * result + ((getContent() == null) ? 0 : getContent().hashCode());
        result = prime * result + ((getTitle() == null) ? 0 : getTitle().hashCode());
        result = prime * result + ((getAuthorid() == null) ? 0 : getAuthorid().hashCode());
        result = prime * result + ((getHidden() == null) ? 0 : getHidden().hashCode());
        result = prime * result + ((getCollect() == null) ? 0 : getCollect().hashCode());
        result = prime * result + ((getThumpsup() == null) ? 0 : getThumpsup().hashCode());
        result = prime * result + ((getCollecttimes() == null) ? 0 : getCollecttimes().hashCode());
        result = prime * result + ((getThumpsuptimes() == null) ? 0 : getThumpsuptimes().hashCode());
        result = prime * result + ((getShowlevel() == null) ? 0 : getShowlevel().hashCode());
        result = prime * result + ((getGameid() == null) ? 0 : getGameid().hashCode());
        result = prime * result + ((getGamename() == null) ? 0 : getGamename().hashCode());
        result = prime * result + ((getRemarks() == null) ? 0 : getRemarks().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", tid=").append(tid);
        sb.append(", content=").append(content);
        sb.append(", title=").append(title);
        sb.append(", authorid=").append(authorid);
        sb.append(", hidden=").append(hidden);
        sb.append(", collect=").append(collect);
        sb.append(", thumpsup=").append(thumpsup);
        sb.append(", collecttimes=").append(collecttimes);
        sb.append(", thumpsuptimes=").append(thumpsuptimes);
        sb.append(", showlevel=").append(showlevel);
        sb.append(", gameid=").append(gameid);
        sb.append(", gamename=").append(gamename);
        sb.append(", remarks=").append(remarks);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}