package cn.lby.dao;

import cn.lby.entity.ClosingVehicleWeek;
import cn.lby.entity.ClosingVehicleWeekExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ClosingVehicleWeekMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table closing_vehicle_week
     *
     * @mbggenerated
     */
    int countByExample(ClosingVehicleWeekExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table closing_vehicle_week
     *
     * @mbggenerated
     */
    int deleteByExample(ClosingVehicleWeekExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table closing_vehicle_week
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table closing_vehicle_week
     *
     * @mbggenerated
     */
    int insert(ClosingVehicleWeek record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table closing_vehicle_week
     *
     * @mbggenerated
     */
    int insertSelective(ClosingVehicleWeek record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table closing_vehicle_week
     *
     * @mbggenerated
     */
    List<ClosingVehicleWeek> selectByExample(ClosingVehicleWeekExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table closing_vehicle_week
     *
     * @mbggenerated
     */
    ClosingVehicleWeek selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table closing_vehicle_week
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") ClosingVehicleWeek record, @Param("example") ClosingVehicleWeekExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table closing_vehicle_week
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") ClosingVehicleWeek record, @Param("example") ClosingVehicleWeekExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table closing_vehicle_week
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(ClosingVehicleWeek record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table closing_vehicle_week
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(ClosingVehicleWeek record);
}