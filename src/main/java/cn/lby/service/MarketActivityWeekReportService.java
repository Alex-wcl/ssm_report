package cn.lby.service;

import java.util.HashMap;
import java.util.List;

import cn.lby.vo.AccurateAdvertisementVO;
import cn.lby.vo.ClosingNumWeekVO;
import cn.lby.vo.IntentionCustomerCountsVO;
import cn.lby.vo.MarketActivityWeekListVO;
import cn.lby.vo.TestDriveWeekVO;

public interface MarketActivityWeekReportService {
	
	// 由市场活动周报Id查不同有望确度客户的各个车型下的数量
	public IntentionCustomerCountsVO getIntentionCustomerCounts(String marketActivityWeeklyReportId);
	
	// 由市场活动周报Id查预约进店量、留档数量及试驾次数
	public TestDriveWeekVO getTestDriveWeek(String marketActivityWeeklyReportId);
	
	// 由市场活动周报Id查成交量
	public ClosingNumWeekVO getClosingWeek(String marketActivityWeeklyReportId);
	
	// 由市场活动周报Id查各广告渠道信息
	public AccurateAdvertisementVO getAccurateAdvertisement(String marketActivityWeeklyReportId);
	
	// 查市场活动周报列表
	public List<MarketActivityWeekListVO> getMarketActivityWeekReportList();


	/* --------------- 市场活动总报 --------------- */
	// 查市场活动总报列表
	public List<HashMap<String,String>> getMarketActivityTotalReportList();
}
