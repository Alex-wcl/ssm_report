package cn.lby.service;

import java.util.List;
import java.util.Map;

import cn.lby.vo.SalesRankingVO;

public interface SalesRankingReportService {

	// 根据市场活动Id和经销商Id获取销售排行信息
	public SalesRankingVO getSalesRanking(String vehicleModelId,String dealerId);

	// 根据销售排行类型Id获取排行信息
	public SalesRankingVO getSalesRankingByTypeId(String rankingTypeId);
	
	// 根据经销商Id获取排行榜列表
	public List<String> getSalesRankingList(String dealerId);
	
	// 根据经销商Id和销售日期获取当月出售车型
	public List<Map<String,String>> getSalesVehicleModels(String dealerId,String salesDate);

	// 结转表数据录入
	public void startStoring(String begin, String end);
}
