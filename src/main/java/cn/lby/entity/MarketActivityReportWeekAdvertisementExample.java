package cn.lby.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MarketActivityReportWeekAdvertisementExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table market_activity_report_week_advertisement
     *
     * @mbggenerated
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table market_activity_report_week_advertisement
     *
     * @mbggenerated
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table market_activity_report_week_advertisement
     *
     * @mbggenerated
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table market_activity_report_week_advertisement
     *
     * @mbggenerated
     */
    public MarketActivityReportWeekAdvertisementExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table market_activity_report_week_advertisement
     *
     * @mbggenerated
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table market_activity_report_week_advertisement
     *
     * @mbggenerated
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table market_activity_report_week_advertisement
     *
     * @mbggenerated
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table market_activity_report_week_advertisement
     *
     * @mbggenerated
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table market_activity_report_week_advertisement
     *
     * @mbggenerated
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table market_activity_report_week_advertisement
     *
     * @mbggenerated
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table market_activity_report_week_advertisement
     *
     * @mbggenerated
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table market_activity_report_week_advertisement
     *
     * @mbggenerated
     */
    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table market_activity_report_week_advertisement
     *
     * @mbggenerated
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table market_activity_report_week_advertisement
     *
     * @mbggenerated
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table market_activity_report_week_advertisement
     *
     * @mbggenerated
     */
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

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(String value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(String value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(String value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(String value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(String value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(String value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLike(String value) {
            addCriterion("id like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotLike(String value) {
            addCriterion("id not like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<String> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<String> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(String value1, String value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(String value1, String value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andMarketActivityReportWeekIdIsNull() {
            addCriterion("market_activity_report_week_id is null");
            return (Criteria) this;
        }

        public Criteria andMarketActivityReportWeekIdIsNotNull() {
            addCriterion("market_activity_report_week_id is not null");
            return (Criteria) this;
        }

        public Criteria andMarketActivityReportWeekIdEqualTo(String value) {
            addCriterion("market_activity_report_week_id =", value, "marketActivityReportWeekId");
            return (Criteria) this;
        }

        public Criteria andMarketActivityReportWeekIdNotEqualTo(String value) {
            addCriterion("market_activity_report_week_id <>", value, "marketActivityReportWeekId");
            return (Criteria) this;
        }

        public Criteria andMarketActivityReportWeekIdGreaterThan(String value) {
            addCriterion("market_activity_report_week_id >", value, "marketActivityReportWeekId");
            return (Criteria) this;
        }

        public Criteria andMarketActivityReportWeekIdGreaterThanOrEqualTo(String value) {
            addCriterion("market_activity_report_week_id >=", value, "marketActivityReportWeekId");
            return (Criteria) this;
        }

        public Criteria andMarketActivityReportWeekIdLessThan(String value) {
            addCriterion("market_activity_report_week_id <", value, "marketActivityReportWeekId");
            return (Criteria) this;
        }

        public Criteria andMarketActivityReportWeekIdLessThanOrEqualTo(String value) {
            addCriterion("market_activity_report_week_id <=", value, "marketActivityReportWeekId");
            return (Criteria) this;
        }

        public Criteria andMarketActivityReportWeekIdLike(String value) {
            addCriterion("market_activity_report_week_id like", value, "marketActivityReportWeekId");
            return (Criteria) this;
        }

        public Criteria andMarketActivityReportWeekIdNotLike(String value) {
            addCriterion("market_activity_report_week_id not like", value, "marketActivityReportWeekId");
            return (Criteria) this;
        }

        public Criteria andMarketActivityReportWeekIdIn(List<String> values) {
            addCriterion("market_activity_report_week_id in", values, "marketActivityReportWeekId");
            return (Criteria) this;
        }

        public Criteria andMarketActivityReportWeekIdNotIn(List<String> values) {
            addCriterion("market_activity_report_week_id not in", values, "marketActivityReportWeekId");
            return (Criteria) this;
        }

        public Criteria andMarketActivityReportWeekIdBetween(String value1, String value2) {
            addCriterion("market_activity_report_week_id between", value1, value2, "marketActivityReportWeekId");
            return (Criteria) this;
        }

        public Criteria andMarketActivityReportWeekIdNotBetween(String value1, String value2) {
            addCriterion("market_activity_report_week_id not between", value1, value2, "marketActivityReportWeekId");
            return (Criteria) this;
        }

        public Criteria andChannelNameIsNull() {
            addCriterion("channel_name is null");
            return (Criteria) this;
        }

        public Criteria andChannelNameIsNotNull() {
            addCriterion("channel_name is not null");
            return (Criteria) this;
        }

        public Criteria andChannelNameEqualTo(String value) {
            addCriterion("channel_name =", value, "channelName");
            return (Criteria) this;
        }

        public Criteria andChannelNameNotEqualTo(String value) {
            addCriterion("channel_name <>", value, "channelName");
            return (Criteria) this;
        }

        public Criteria andChannelNameGreaterThan(String value) {
            addCriterion("channel_name >", value, "channelName");
            return (Criteria) this;
        }

        public Criteria andChannelNameGreaterThanOrEqualTo(String value) {
            addCriterion("channel_name >=", value, "channelName");
            return (Criteria) this;
        }

        public Criteria andChannelNameLessThan(String value) {
            addCriterion("channel_name <", value, "channelName");
            return (Criteria) this;
        }

        public Criteria andChannelNameLessThanOrEqualTo(String value) {
            addCriterion("channel_name <=", value, "channelName");
            return (Criteria) this;
        }

        public Criteria andChannelNameLike(String value) {
            addCriterion("channel_name like", value, "channelName");
            return (Criteria) this;
        }

        public Criteria andChannelNameNotLike(String value) {
            addCriterion("channel_name not like", value, "channelName");
            return (Criteria) this;
        }

        public Criteria andChannelNameIn(List<String> values) {
            addCriterion("channel_name in", values, "channelName");
            return (Criteria) this;
        }

        public Criteria andChannelNameNotIn(List<String> values) {
            addCriterion("channel_name not in", values, "channelName");
            return (Criteria) this;
        }

        public Criteria andChannelNameBetween(String value1, String value2) {
            addCriterion("channel_name between", value1, value2, "channelName");
            return (Criteria) this;
        }

        public Criteria andChannelNameNotBetween(String value1, String value2) {
            addCriterion("channel_name not between", value1, value2, "channelName");
            return (Criteria) this;
        }

        public Criteria andChannelIsNull() {
            addCriterion("channel is null");
            return (Criteria) this;
        }

        public Criteria andChannelIsNotNull() {
            addCriterion("channel is not null");
            return (Criteria) this;
        }

        public Criteria andChannelEqualTo(String value) {
            addCriterion("channel =", value, "channel");
            return (Criteria) this;
        }

        public Criteria andChannelNotEqualTo(String value) {
            addCriterion("channel <>", value, "channel");
            return (Criteria) this;
        }

        public Criteria andChannelGreaterThan(String value) {
            addCriterion("channel >", value, "channel");
            return (Criteria) this;
        }

        public Criteria andChannelGreaterThanOrEqualTo(String value) {
            addCriterion("channel >=", value, "channel");
            return (Criteria) this;
        }

        public Criteria andChannelLessThan(String value) {
            addCriterion("channel <", value, "channel");
            return (Criteria) this;
        }

        public Criteria andChannelLessThanOrEqualTo(String value) {
            addCriterion("channel <=", value, "channel");
            return (Criteria) this;
        }

        public Criteria andChannelLike(String value) {
            addCriterion("channel like", value, "channel");
            return (Criteria) this;
        }

        public Criteria andChannelNotLike(String value) {
            addCriterion("channel not like", value, "channel");
            return (Criteria) this;
        }

        public Criteria andChannelIn(List<String> values) {
            addCriterion("channel in", values, "channel");
            return (Criteria) this;
        }

        public Criteria andChannelNotIn(List<String> values) {
            addCriterion("channel not in", values, "channel");
            return (Criteria) this;
        }

        public Criteria andChannelBetween(String value1, String value2) {
            addCriterion("channel between", value1, value2, "channel");
            return (Criteria) this;
        }

        public Criteria andChannelNotBetween(String value1, String value2) {
            addCriterion("channel not between", value1, value2, "channel");
            return (Criteria) this;
        }

        public Criteria andShowNumIsNull() {
            addCriterion("show_num is null");
            return (Criteria) this;
        }

        public Criteria andShowNumIsNotNull() {
            addCriterion("show_num is not null");
            return (Criteria) this;
        }

        public Criteria andShowNumEqualTo(Integer value) {
            addCriterion("show_num =", value, "showNum");
            return (Criteria) this;
        }

        public Criteria andShowNumNotEqualTo(Integer value) {
            addCriterion("show_num <>", value, "showNum");
            return (Criteria) this;
        }

        public Criteria andShowNumGreaterThan(Integer value) {
            addCriterion("show_num >", value, "showNum");
            return (Criteria) this;
        }

        public Criteria andShowNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("show_num >=", value, "showNum");
            return (Criteria) this;
        }

        public Criteria andShowNumLessThan(Integer value) {
            addCriterion("show_num <", value, "showNum");
            return (Criteria) this;
        }

        public Criteria andShowNumLessThanOrEqualTo(Integer value) {
            addCriterion("show_num <=", value, "showNum");
            return (Criteria) this;
        }

        public Criteria andShowNumIn(List<Integer> values) {
            addCriterion("show_num in", values, "showNum");
            return (Criteria) this;
        }

        public Criteria andShowNumNotIn(List<Integer> values) {
            addCriterion("show_num not in", values, "showNum");
            return (Criteria) this;
        }

        public Criteria andShowNumBetween(Integer value1, Integer value2) {
            addCriterion("show_num between", value1, value2, "showNum");
            return (Criteria) this;
        }

        public Criteria andShowNumNotBetween(Integer value1, Integer value2) {
            addCriterion("show_num not between", value1, value2, "showNum");
            return (Criteria) this;
        }

        public Criteria andArchivesNumIsNull() {
            addCriterion("archives_num is null");
            return (Criteria) this;
        }

        public Criteria andArchivesNumIsNotNull() {
            addCriterion("archives_num is not null");
            return (Criteria) this;
        }

        public Criteria andArchivesNumEqualTo(Integer value) {
            addCriterion("archives_num =", value, "archivesNum");
            return (Criteria) this;
        }

        public Criteria andArchivesNumNotEqualTo(Integer value) {
            addCriterion("archives_num <>", value, "archivesNum");
            return (Criteria) this;
        }

        public Criteria andArchivesNumGreaterThan(Integer value) {
            addCriterion("archives_num >", value, "archivesNum");
            return (Criteria) this;
        }

        public Criteria andArchivesNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("archives_num >=", value, "archivesNum");
            return (Criteria) this;
        }

        public Criteria andArchivesNumLessThan(Integer value) {
            addCriterion("archives_num <", value, "archivesNum");
            return (Criteria) this;
        }

        public Criteria andArchivesNumLessThanOrEqualTo(Integer value) {
            addCriterion("archives_num <=", value, "archivesNum");
            return (Criteria) this;
        }

        public Criteria andArchivesNumIn(List<Integer> values) {
            addCriterion("archives_num in", values, "archivesNum");
            return (Criteria) this;
        }

        public Criteria andArchivesNumNotIn(List<Integer> values) {
            addCriterion("archives_num not in", values, "archivesNum");
            return (Criteria) this;
        }

        public Criteria andArchivesNumBetween(Integer value1, Integer value2) {
            addCriterion("archives_num between", value1, value2, "archivesNum");
            return (Criteria) this;
        }

        public Criteria andArchivesNumNotBetween(Integer value1, Integer value2) {
            addCriterion("archives_num not between", value1, value2, "archivesNum");
            return (Criteria) this;
        }

        public Criteria andClickNumIsNull() {
            addCriterion("click_num is null");
            return (Criteria) this;
        }

        public Criteria andClickNumIsNotNull() {
            addCriterion("click_num is not null");
            return (Criteria) this;
        }

        public Criteria andClickNumEqualTo(Integer value) {
            addCriterion("click_num =", value, "clickNum");
            return (Criteria) this;
        }

        public Criteria andClickNumNotEqualTo(Integer value) {
            addCriterion("click_num <>", value, "clickNum");
            return (Criteria) this;
        }

        public Criteria andClickNumGreaterThan(Integer value) {
            addCriterion("click_num >", value, "clickNum");
            return (Criteria) this;
        }

        public Criteria andClickNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("click_num >=", value, "clickNum");
            return (Criteria) this;
        }

        public Criteria andClickNumLessThan(Integer value) {
            addCriterion("click_num <", value, "clickNum");
            return (Criteria) this;
        }

        public Criteria andClickNumLessThanOrEqualTo(Integer value) {
            addCriterion("click_num <=", value, "clickNum");
            return (Criteria) this;
        }

        public Criteria andClickNumIn(List<Integer> values) {
            addCriterion("click_num in", values, "clickNum");
            return (Criteria) this;
        }

        public Criteria andClickNumNotIn(List<Integer> values) {
            addCriterion("click_num not in", values, "clickNum");
            return (Criteria) this;
        }

        public Criteria andClickNumBetween(Integer value1, Integer value2) {
            addCriterion("click_num between", value1, value2, "clickNum");
            return (Criteria) this;
        }

        public Criteria andClickNumNotBetween(Integer value1, Integer value2) {
            addCriterion("click_num not between", value1, value2, "clickNum");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNull() {
            addCriterion("create_time is null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNotNull() {
            addCriterion("create_time is not null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeEqualTo(Date value) {
            addCriterion("create_time =", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotEqualTo(Date value) {
            addCriterion("create_time <>", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThan(Date value) {
            addCriterion("create_time >", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("create_time >=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThan(Date value) {
            addCriterion("create_time <", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("create_time <=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIn(List<Date> values) {
            addCriterion("create_time in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotIn(List<Date> values) {
            addCriterion("create_time not in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeBetween(Date value1, Date value2) {
            addCriterion("create_time between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("create_time not between", value1, value2, "createTime");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table market_activity_report_week_advertisement
     *
     * @mbggenerated do_not_delete_during_merge
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table market_activity_report_week_advertisement
     *
     * @mbggenerated
     */
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