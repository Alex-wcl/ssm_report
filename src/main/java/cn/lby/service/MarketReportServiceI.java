package cn.lby.service;

import java.util.List;

import cn.lby.entity.MarketActivityReportWeek;

public interface MarketReportServiceI {

	MarketActivityReportWeek getReportById(String Id);
	
	List<MarketActivityReportWeek> getAllReports();
}
