package cn.lby.reportController;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.lby.service.MarketActivityWeekReportService;
import cn.lby.vo.AccurateAdvertisementVO;
import cn.lby.vo.ClosingNumWeekVO;
import cn.lby.vo.IntentionCustomerCountsVO;
import cn.lby.vo.MarketActivityWeekListVO;
import cn.lby.vo.TestDriveWeekVO;

@Controller
@RequestMapping("/report")
public class MarketActivityWeekReportController {

	@Autowired
	MarketActivityWeekReportService weeklyReportService;
	
    @RequestMapping(value="/intentionCustomerCounts",method=RequestMethod.GET)
    @ResponseBody
	public IntentionCustomerCountsVO getIntentionCustomerCounts(String marketActivityWeeklyReportId){
    	return weeklyReportService.getIntentionCustomerCounts(marketActivityWeeklyReportId);
	}
    
    @RequestMapping(value="/testDriveWeek",method=RequestMethod.GET)
    @ResponseBody
	public TestDriveWeekVO getTestDriveWeek(String marketActivityWeeklyReportId){
    	return weeklyReportService.getTestDriveWeek(marketActivityWeeklyReportId);
	}
    
    @RequestMapping(value="/closingWeek",method=RequestMethod.GET)
    @ResponseBody
	public ClosingNumWeekVO getClosingWeek(String marketActivityWeeklyReportId){
    	return weeklyReportService.getClosingWeek(marketActivityWeeklyReportId);
	}

    @RequestMapping(value="/accurateAdvertisement",method=RequestMethod.GET)
    @ResponseBody
	public AccurateAdvertisementVO getAccurateAdvertisement(String marketActivityWeeklyReportId){
    	return weeklyReportService.getAccurateAdvertisement(marketActivityWeeklyReportId);
	}
    
    @RequestMapping(value="/marketActivityWeekList",method=RequestMethod.GET)
    @ResponseBody
	public List<MarketActivityWeekListVO> getMarketActivityWeekReportList(){
    	return weeklyReportService.getMarketActivityWeekReportList();
	}

    @RequestMapping(value="/marketActivityTotalList",method=RequestMethod.GET)
    @ResponseBody
	public List<HashMap<String,String>> getMarketActivityTotalReportList(){
    	return weeklyReportService.getMarketActivityTotalReportList();
	}
    
    /* ---------- 下面是数据存储服务 ---------- */
//    @RequestMapping(value="/marketActivityReportWeekSave",method=RequestMethod.GET)
//    @ResponseBody
//	public void saveReportWeek(String start, String end){
//    	weeklyReportService.generateReportWeekData(start, end);
//	}
//
//    @RequestMapping(value="/marketActivityReportTotalSave",method=RequestMethod.GET)
//    @ResponseBody
//	public void saveReportTotal(String start, String end){
//    	weeklyReportService.generateReportTotalData(start, end);
//	}
    
}
