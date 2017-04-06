package cn.lby.vo;

import java.util.List;

public class MarketActivityWeekListVO {

//[
//    {
//        "marketActivityName": [string],                 // 市场活动名称
//        "marketActivityWeeklyReportIds": [[string],...] // 市场活动周报Id
//    }
//]

	private String marketActivityName;
	private List<String> marketActivityWeeklyReportIds;
	
	public String getMarketActivityName() {
		return marketActivityName;
	}
	
	public void setMarketActivityName(String marketActivityName) {
		this.marketActivityName = marketActivityName;
	}
	
	public List<String> getMarketActivityWeeklyReportIds() {
		return marketActivityWeeklyReportIds;
	}

	public void setMarketActivityWeeklyReportIds(
			List<String> marketActivityWeeklyReportIds) {
		this.marketActivityWeeklyReportIds = marketActivityWeeklyReportIds;
	}

}
