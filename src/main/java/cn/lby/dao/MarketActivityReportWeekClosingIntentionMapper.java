package cn.lby.dao;

import cn.lby.entity.MarketActivityReportWeekClosingIntention;
import cn.lby.entity.MarketActivityReportWeekClosingIntentionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MarketActivityReportWeekClosingIntentionMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table market_activity_report_week_closing_intention
     *
     * @mbggenerated
     */
    int countByExample(MarketActivityReportWeekClosingIntentionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table market_activity_report_week_closing_intention
     *
     * @mbggenerated
     */
    int deleteByExample(MarketActivityReportWeekClosingIntentionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table market_activity_report_week_closing_intention
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table market_activity_report_week_closing_intention
     *
     * @mbggenerated
     */
    int insert(MarketActivityReportWeekClosingIntention record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table market_activity_report_week_closing_intention
     *
     * @mbggenerated
     */
    int insertSelective(MarketActivityReportWeekClosingIntention record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table market_activity_report_week_closing_intention
     *
     * @mbggenerated
     */
    List<MarketActivityReportWeekClosingIntention> selectByExample(MarketActivityReportWeekClosingIntentionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table market_activity_report_week_closing_intention
     *
     * @mbggenerated
     */
    MarketActivityReportWeekClosingIntention selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table market_activity_report_week_closing_intention
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") MarketActivityReportWeekClosingIntention record, @Param("example") MarketActivityReportWeekClosingIntentionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table market_activity_report_week_closing_intention
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") MarketActivityReportWeekClosingIntention record, @Param("example") MarketActivityReportWeekClosingIntentionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table market_activity_report_week_closing_intention
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(MarketActivityReportWeekClosingIntention record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table market_activity_report_week_closing_intention
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(MarketActivityReportWeekClosingIntention record);
}