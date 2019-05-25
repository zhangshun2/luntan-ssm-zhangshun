package com.zhangshun.entity;

import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
@Component
public class UserLogExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public UserLogExample() {
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

        public Criteria andUseridIsNull() {
            addCriterion("userid is null");
            return (Criteria) this;
        }

        public Criteria andUseridIsNotNull() {
            addCriterion("userid is not null");
            return (Criteria) this;
        }

        public Criteria andUseridEqualTo(Integer value) {
            addCriterion("userid =", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotEqualTo(Integer value) {
            addCriterion("userid <>", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridGreaterThan(Integer value) {
            addCriterion("userid >", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridGreaterThanOrEqualTo(Integer value) {
            addCriterion("userid >=", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridLessThan(Integer value) {
            addCriterion("userid <", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridLessThanOrEqualTo(Integer value) {
            addCriterion("userid <=", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridIn(List<Integer> values) {
            addCriterion("userid in", values, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotIn(List<Integer> values) {
            addCriterion("userid not in", values, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridBetween(Integer value1, Integer value2) {
            addCriterion("userid between", value1, value2, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotBetween(Integer value1, Integer value2) {
            addCriterion("userid not between", value1, value2, "userid");
            return (Criteria) this;
        }

        public Criteria andNowtimeIsNull() {
            addCriterion("nowtime is null");
            return (Criteria) this;
        }

        public Criteria andNowtimeIsNotNull() {
            addCriterion("nowtime is not null");
            return (Criteria) this;
        }

        public Criteria andNowtimeEqualTo(Date value) {
            addCriterion("nowtime =", value, "nowtime");
            return (Criteria) this;
        }

        public Criteria andNowtimeNotEqualTo(Date value) {
            addCriterion("nowtime <>", value, "nowtime");
            return (Criteria) this;
        }

        public Criteria andNowtimeGreaterThan(Date value) {
            addCriterion("nowtime >", value, "nowtime");
            return (Criteria) this;
        }

        public Criteria andNowtimeGreaterThanOrEqualTo(Date value) {
            addCriterion("nowtime >=", value, "nowtime");
            return (Criteria) this;
        }

        public Criteria andNowtimeLessThan(Date value) {
            addCriterion("nowtime <", value, "nowtime");
            return (Criteria) this;
        }

        public Criteria andNowtimeLessThanOrEqualTo(Date value) {
            addCriterion("nowtime <=", value, "nowtime");
            return (Criteria) this;
        }

        public Criteria andNowtimeIn(List<Date> values) {
            addCriterion("nowtime in", values, "nowtime");
            return (Criteria) this;
        }

        public Criteria andNowtimeNotIn(List<Date> values) {
            addCriterion("nowtime not in", values, "nowtime");
            return (Criteria) this;
        }

        public Criteria andNowtimeBetween(Date value1, Date value2) {
            addCriterion("nowtime between", value1, value2, "nowtime");
            return (Criteria) this;
        }

        public Criteria andNowtimeNotBetween(Date value1, Date value2) {
            addCriterion("nowtime not between", value1, value2, "nowtime");
            return (Criteria) this;
        }

        public Criteria andUserdoIsNull() {
            addCriterion("userdo is null");
            return (Criteria) this;
        }

        public Criteria andUserdoIsNotNull() {
            addCriterion("userdo is not null");
            return (Criteria) this;
        }

        public Criteria andUserdoEqualTo(String value) {
            addCriterion("userdo =", value, "userdo");
            return (Criteria) this;
        }

        public Criteria andUserdoNotEqualTo(String value) {
            addCriterion("userdo <>", value, "userdo");
            return (Criteria) this;
        }

        public Criteria andUserdoGreaterThan(String value) {
            addCriterion("userdo >", value, "userdo");
            return (Criteria) this;
        }

        public Criteria andUserdoGreaterThanOrEqualTo(String value) {
            addCriterion("userdo >=", value, "userdo");
            return (Criteria) this;
        }

        public Criteria andUserdoLessThan(String value) {
            addCriterion("userdo <", value, "userdo");
            return (Criteria) this;
        }

        public Criteria andUserdoLessThanOrEqualTo(String value) {
            addCriterion("userdo <=", value, "userdo");
            return (Criteria) this;
        }

        public Criteria andUserdoLike(String value) {
            addCriterion("userdo like", value, "userdo");
            return (Criteria) this;
        }

        public Criteria andUserdoNotLike(String value) {
            addCriterion("userdo not like", value, "userdo");
            return (Criteria) this;
        }

        public Criteria andUserdoIn(List<String> values) {
            addCriterion("userdo in", values, "userdo");
            return (Criteria) this;
        }

        public Criteria andUserdoNotIn(List<String> values) {
            addCriterion("userdo not in", values, "userdo");
            return (Criteria) this;
        }

        public Criteria andUserdoBetween(String value1, String value2) {
            addCriterion("userdo between", value1, value2, "userdo");
            return (Criteria) this;
        }

        public Criteria andUserdoNotBetween(String value1, String value2) {
            addCriterion("userdo not between", value1, value2, "userdo");
            return (Criteria) this;
        }

        public Criteria andUseridtwoIsNull() {
            addCriterion("useridtwo is null");
            return (Criteria) this;
        }

        public Criteria andUseridtwoIsNotNull() {
            addCriterion("useridtwo is not null");
            return (Criteria) this;
        }

        public Criteria andUseridtwoEqualTo(Integer value) {
            addCriterion("useridtwo =", value, "useridtwo");
            return (Criteria) this;
        }

        public Criteria andUseridtwoNotEqualTo(Integer value) {
            addCriterion("useridtwo <>", value, "useridtwo");
            return (Criteria) this;
        }

        public Criteria andUseridtwoGreaterThan(Integer value) {
            addCriterion("useridtwo >", value, "useridtwo");
            return (Criteria) this;
        }

        public Criteria andUseridtwoGreaterThanOrEqualTo(Integer value) {
            addCriterion("useridtwo >=", value, "useridtwo");
            return (Criteria) this;
        }

        public Criteria andUseridtwoLessThan(Integer value) {
            addCriterion("useridtwo <", value, "useridtwo");
            return (Criteria) this;
        }

        public Criteria andUseridtwoLessThanOrEqualTo(Integer value) {
            addCriterion("useridtwo <=", value, "useridtwo");
            return (Criteria) this;
        }

        public Criteria andUseridtwoIn(List<Integer> values) {
            addCriterion("useridtwo in", values, "useridtwo");
            return (Criteria) this;
        }

        public Criteria andUseridtwoNotIn(List<Integer> values) {
            addCriterion("useridtwo not in", values, "useridtwo");
            return (Criteria) this;
        }

        public Criteria andUseridtwoBetween(Integer value1, Integer value2) {
            addCriterion("useridtwo between", value1, value2, "useridtwo");
            return (Criteria) this;
        }

        public Criteria andUseridtwoNotBetween(Integer value1, Integer value2) {
            addCriterion("useridtwo not between", value1, value2, "useridtwo");
            return (Criteria) this;
        }

        public Criteria andUsertuonameIsNull() {
            addCriterion("usertuoname is null");
            return (Criteria) this;
        }

        public Criteria andUsertuonameIsNotNull() {
            addCriterion("usertuoname is not null");
            return (Criteria) this;
        }

        public Criteria andUsertuonameEqualTo(String value) {
            addCriterion("usertuoname =", value, "usertuoname");
            return (Criteria) this;
        }

        public Criteria andUsertuonameNotEqualTo(String value) {
            addCriterion("usertuoname <>", value, "usertuoname");
            return (Criteria) this;
        }

        public Criteria andUsertuonameGreaterThan(String value) {
            addCriterion("usertuoname >", value, "usertuoname");
            return (Criteria) this;
        }

        public Criteria andUsertuonameGreaterThanOrEqualTo(String value) {
            addCriterion("usertuoname >=", value, "usertuoname");
            return (Criteria) this;
        }

        public Criteria andUsertuonameLessThan(String value) {
            addCriterion("usertuoname <", value, "usertuoname");
            return (Criteria) this;
        }

        public Criteria andUsertuonameLessThanOrEqualTo(String value) {
            addCriterion("usertuoname <=", value, "usertuoname");
            return (Criteria) this;
        }

        public Criteria andUsertuonameLike(String value) {
            addCriterion("usertuoname like", value, "usertuoname");
            return (Criteria) this;
        }

        public Criteria andUsertuonameNotLike(String value) {
            addCriterion("usertuoname not like", value, "usertuoname");
            return (Criteria) this;
        }

        public Criteria andUsertuonameIn(List<String> values) {
            addCriterion("usertuoname in", values, "usertuoname");
            return (Criteria) this;
        }

        public Criteria andUsertuonameNotIn(List<String> values) {
            addCriterion("usertuoname not in", values, "usertuoname");
            return (Criteria) this;
        }

        public Criteria andUsertuonameBetween(String value1, String value2) {
            addCriterion("usertuoname between", value1, value2, "usertuoname");
            return (Criteria) this;
        }

        public Criteria andUsertuonameNotBetween(String value1, String value2) {
            addCriterion("usertuoname not between", value1, value2, "usertuoname");
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