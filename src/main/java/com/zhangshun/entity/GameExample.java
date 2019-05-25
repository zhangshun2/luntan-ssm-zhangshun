package com.zhangshun.entity;

import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class GameExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public GameExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andGidIsNull() {
            addCriterion("gid is null");
            return (Criteria) this;
        }

        public Criteria andGidIsNotNull() {
            addCriterion("gid is not null");
            return (Criteria) this;
        }

        public Criteria andGidEqualTo(Integer value) {
            addCriterion("gid =", value, "gid");
            return (Criteria) this;
        }

        public Criteria andGidNotEqualTo(Integer value) {
            addCriterion("gid <>", value, "gid");
            return (Criteria) this;
        }

        public Criteria andGidGreaterThan(Integer value) {
            addCriterion("gid >", value, "gid");
            return (Criteria) this;
        }

        public Criteria andGidGreaterThanOrEqualTo(Integer value) {
            addCriterion("gid >=", value, "gid");
            return (Criteria) this;
        }

        public Criteria andGidLessThan(Integer value) {
            addCriterion("gid <", value, "gid");
            return (Criteria) this;
        }

        public Criteria andGidLessThanOrEqualTo(Integer value) {
            addCriterion("gid <=", value, "gid");
            return (Criteria) this;
        }

        public Criteria andGidIn(List<Integer> values) {
            addCriterion("gid in", values, "gid");
            return (Criteria) this;
        }

        public Criteria andGidNotIn(List<Integer> values) {
            addCriterion("gid not in", values, "gid");
            return (Criteria) this;
        }

        public Criteria andGidBetween(Integer value1, Integer value2) {
            addCriterion("gid between", value1, value2, "gid");
            return (Criteria) this;
        }

        public Criteria andGidNotBetween(Integer value1, Integer value2) {
            addCriterion("gid not between", value1, value2, "gid");
            return (Criteria) this;
        }

        public Criteria andGnameIsNull() {
            addCriterion("gname is null");
            return (Criteria) this;
        }

        public Criteria andGnameIsNotNull() {
            addCriterion("gname is not null");
            return (Criteria) this;
        }

        public Criteria andGnameEqualTo(String value) {
            addCriterion("gname =", value, "gname");
            return (Criteria) this;
        }

        public Criteria andGnameNotEqualTo(String value) {
            addCriterion("gname <>", value, "gname");
            return (Criteria) this;
        }

        public Criteria andGnameGreaterThan(String value) {
            addCriterion("gname >", value, "gname");
            return (Criteria) this;
        }

        public Criteria andGnameGreaterThanOrEqualTo(String value) {
            addCriterion("gname >=", value, "gname");
            return (Criteria) this;
        }

        public Criteria andGnameLessThan(String value) {
            addCriterion("gname <", value, "gname");
            return (Criteria) this;
        }

        public Criteria andGnameLessThanOrEqualTo(String value) {
            addCriterion("gname <=", value, "gname");
            return (Criteria) this;
        }

        public Criteria andGnameLike(String value) {
            addCriterion("gname like", value, "gname");
            return (Criteria) this;
        }

        public Criteria andGnameNotLike(String value) {
            addCriterion("gname not like", value, "gname");
            return (Criteria) this;
        }

        public Criteria andGnameIn(List<String> values) {
            addCriterion("gname in", values, "gname");
            return (Criteria) this;
        }

        public Criteria andGnameNotIn(List<String> values) {
            addCriterion("gname not in", values, "gname");
            return (Criteria) this;
        }

        public Criteria andGnameBetween(String value1, String value2) {
            addCriterion("gname between", value1, value2, "gname");
            return (Criteria) this;
        }

        public Criteria andGnameNotBetween(String value1, String value2) {
            addCriterion("gname not between", value1, value2, "gname");
            return (Criteria) this;
        }

        public Criteria andGcontextIsNull() {
            addCriterion("gcontext is null");
            return (Criteria) this;
        }

        public Criteria andGcontextIsNotNull() {
            addCriterion("gcontext is not null");
            return (Criteria) this;
        }

        public Criteria andGcontextEqualTo(String value) {
            addCriterion("gcontext =", value, "gcontext");
            return (Criteria) this;
        }

        public Criteria andGcontextNotEqualTo(String value) {
            addCriterion("gcontext <>", value, "gcontext");
            return (Criteria) this;
        }

        public Criteria andGcontextGreaterThan(String value) {
            addCriterion("gcontext >", value, "gcontext");
            return (Criteria) this;
        }

        public Criteria andGcontextGreaterThanOrEqualTo(String value) {
            addCriterion("gcontext >=", value, "gcontext");
            return (Criteria) this;
        }

        public Criteria andGcontextLessThan(String value) {
            addCriterion("gcontext <", value, "gcontext");
            return (Criteria) this;
        }

        public Criteria andGcontextLessThanOrEqualTo(String value) {
            addCriterion("gcontext <=", value, "gcontext");
            return (Criteria) this;
        }

        public Criteria andGcontextLike(String value) {
            addCriterion("gcontext like", value, "gcontext");
            return (Criteria) this;
        }

        public Criteria andGcontextNotLike(String value) {
            addCriterion("gcontext not like", value, "gcontext");
            return (Criteria) this;
        }

        public Criteria andGcontextIn(List<String> values) {
            addCriterion("gcontext in", values, "gcontext");
            return (Criteria) this;
        }

        public Criteria andGcontextNotIn(List<String> values) {
            addCriterion("gcontext not in", values, "gcontext");
            return (Criteria) this;
        }

        public Criteria andGcontextBetween(String value1, String value2) {
            addCriterion("gcontext between", value1, value2, "gcontext");
            return (Criteria) this;
        }

        public Criteria andGcontextNotBetween(String value1, String value2) {
            addCriterion("gcontext not between", value1, value2, "gcontext");
            return (Criteria) this;
        }

        public Criteria andGurlIsNull() {
            addCriterion("gurl is null");
            return (Criteria) this;
        }

        public Criteria andGurlIsNotNull() {
            addCriterion("gurl is not null");
            return (Criteria) this;
        }

        public Criteria andGurlEqualTo(String value) {
            addCriterion("gurl =", value, "gurl");
            return (Criteria) this;
        }

        public Criteria andGurlNotEqualTo(String value) {
            addCriterion("gurl <>", value, "gurl");
            return (Criteria) this;
        }

        public Criteria andGurlGreaterThan(String value) {
            addCriterion("gurl >", value, "gurl");
            return (Criteria) this;
        }

        public Criteria andGurlGreaterThanOrEqualTo(String value) {
            addCriterion("gurl >=", value, "gurl");
            return (Criteria) this;
        }

        public Criteria andGurlLessThan(String value) {
            addCriterion("gurl <", value, "gurl");
            return (Criteria) this;
        }

        public Criteria andGurlLessThanOrEqualTo(String value) {
            addCriterion("gurl <=", value, "gurl");
            return (Criteria) this;
        }

        public Criteria andGurlLike(String value) {
            addCriterion("gurl like", value, "gurl");
            return (Criteria) this;
        }

        public Criteria andGurlNotLike(String value) {
            addCriterion("gurl not like", value, "gurl");
            return (Criteria) this;
        }

        public Criteria andGurlIn(List<String> values) {
            addCriterion("gurl in", values, "gurl");
            return (Criteria) this;
        }

        public Criteria andGurlNotIn(List<String> values) {
            addCriterion("gurl not in", values, "gurl");
            return (Criteria) this;
        }

        public Criteria andGurlBetween(String value1, String value2) {
            addCriterion("gurl between", value1, value2, "gurl");
            return (Criteria) this;
        }

        public Criteria andGurlNotBetween(String value1, String value2) {
            addCriterion("gurl not between", value1, value2, "gurl");
            return (Criteria) this;
        }

        public Criteria andGtypeIsNull() {
            addCriterion("gtype is null");
            return (Criteria) this;
        }

        public Criteria andGtypeIsNotNull() {
            addCriterion("gtype is not null");
            return (Criteria) this;
        }

        public Criteria andGtypeEqualTo(String value) {
            addCriterion("gtype =", value, "gtype");
            return (Criteria) this;
        }

        public Criteria andGtypeNotEqualTo(String value) {
            addCriterion("gtype <>", value, "gtype");
            return (Criteria) this;
        }

        public Criteria andGtypeGreaterThan(String value) {
            addCriterion("gtype >", value, "gtype");
            return (Criteria) this;
        }

        public Criteria andGtypeGreaterThanOrEqualTo(String value) {
            addCriterion("gtype >=", value, "gtype");
            return (Criteria) this;
        }

        public Criteria andGtypeLessThan(String value) {
            addCriterion("gtype <", value, "gtype");
            return (Criteria) this;
        }

        public Criteria andGtypeLessThanOrEqualTo(String value) {
            addCriterion("gtype <=", value, "gtype");
            return (Criteria) this;
        }

        public Criteria andGtypeLike(String value) {
            addCriterion("gtype like", value, "gtype");
            return (Criteria) this;
        }

        public Criteria andGtypeNotLike(String value) {
            addCriterion("gtype not like", value, "gtype");
            return (Criteria) this;
        }

        public Criteria andGtypeIn(List<String> values) {
            addCriterion("gtype in", values, "gtype");
            return (Criteria) this;
        }

        public Criteria andGtypeNotIn(List<String> values) {
            addCriterion("gtype not in", values, "gtype");
            return (Criteria) this;
        }

        public Criteria andGtypeBetween(String value1, String value2) {
            addCriterion("gtype between", value1, value2, "gtype");
            return (Criteria) this;
        }

        public Criteria andGtypeNotBetween(String value1, String value2) {
            addCriterion("gtype not between", value1, value2, "gtype");
            return (Criteria) this;
        }

        public Criteria andGpowerIsNull() {
            addCriterion("gpower is null");
            return (Criteria) this;
        }

        public Criteria andGpowerIsNotNull() {
            addCriterion("gpower is not null");
            return (Criteria) this;
        }

        public Criteria andGpowerEqualTo(String value) {
            addCriterion("gpower =", value, "gpower");
            return (Criteria) this;
        }

        public Criteria andGpowerNotEqualTo(String value) {
            addCriterion("gpower <>", value, "gpower");
            return (Criteria) this;
        }

        public Criteria andGpowerGreaterThan(String value) {
            addCriterion("gpower >", value, "gpower");
            return (Criteria) this;
        }

        public Criteria andGpowerGreaterThanOrEqualTo(String value) {
            addCriterion("gpower >=", value, "gpower");
            return (Criteria) this;
        }

        public Criteria andGpowerLessThan(String value) {
            addCriterion("gpower <", value, "gpower");
            return (Criteria) this;
        }

        public Criteria andGpowerLessThanOrEqualTo(String value) {
            addCriterion("gpower <=", value, "gpower");
            return (Criteria) this;
        }

        public Criteria andGpowerLike(String value) {
            addCriterion("gpower like", value, "gpower");
            return (Criteria) this;
        }

        public Criteria andGpowerNotLike(String value) {
            addCriterion("gpower not like", value, "gpower");
            return (Criteria) this;
        }

        public Criteria andGpowerIn(List<String> values) {
            addCriterion("gpower in", values, "gpower");
            return (Criteria) this;
        }

        public Criteria andGpowerNotIn(List<String> values) {
            addCriterion("gpower not in", values, "gpower");
            return (Criteria) this;
        }

        public Criteria andGpowerBetween(String value1, String value2) {
            addCriterion("gpower between", value1, value2, "gpower");
            return (Criteria) this;
        }

        public Criteria andGpowerNotBetween(String value1, String value2) {
            addCriterion("gpower not between", value1, value2, "gpower");
            return (Criteria) this;
        }

        public Criteria andGbologIsNull() {
            addCriterion("gbolog is null");
            return (Criteria) this;
        }

        public Criteria andGbologIsNotNull() {
            addCriterion("gbolog is not null");
            return (Criteria) this;
        }

        public Criteria andGbologEqualTo(String value) {
            addCriterion("gbolog =", value, "gbolog");
            return (Criteria) this;
        }

        public Criteria andGbologNotEqualTo(String value) {
            addCriterion("gbolog <>", value, "gbolog");
            return (Criteria) this;
        }

        public Criteria andGbologGreaterThan(String value) {
            addCriterion("gbolog >", value, "gbolog");
            return (Criteria) this;
        }

        public Criteria andGbologGreaterThanOrEqualTo(String value) {
            addCriterion("gbolog >=", value, "gbolog");
            return (Criteria) this;
        }

        public Criteria andGbologLessThan(String value) {
            addCriterion("gbolog <", value, "gbolog");
            return (Criteria) this;
        }

        public Criteria andGbologLessThanOrEqualTo(String value) {
            addCriterion("gbolog <=", value, "gbolog");
            return (Criteria) this;
        }

        public Criteria andGbologLike(String value) {
            addCriterion("gbolog like", value, "gbolog");
            return (Criteria) this;
        }

        public Criteria andGbologNotLike(String value) {
            addCriterion("gbolog not like", value, "gbolog");
            return (Criteria) this;
        }

        public Criteria andGbologIn(List<String> values) {
            addCriterion("gbolog in", values, "gbolog");
            return (Criteria) this;
        }

        public Criteria andGbologNotIn(List<String> values) {
            addCriterion("gbolog not in", values, "gbolog");
            return (Criteria) this;
        }

        public Criteria andGbologBetween(String value1, String value2) {
            addCriterion("gbolog between", value1, value2, "gbolog");
            return (Criteria) this;
        }

        public Criteria andGbologNotBetween(String value1, String value2) {
            addCriterion("gbolog not between", value1, value2, "gbolog");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}