package cn.lby.reportController;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.lby.service.SalesRankingReportService;
import cn.lby.vo.SalesRankingVO;

@Controller
@RequestMapping("/report")
public class SalesRankingReportController {

	@Autowired
	SalesRankingReportService reportService;
	
    @RequestMapping(value="/salesRankingOld",method=RequestMethod.GET)
    @ResponseBody
	public SalesRankingVO getSalesRanking(String vehicleModelId,String dealerId){
    	return reportService.getSalesRanking(vehicleModelId,dealerId);
	}

    @RequestMapping(value="/salesRanking",method=RequestMethod.GET)
    @ResponseBody
	public SalesRankingVO getSalesRankingByTypeId(String rankingTypeId){
    	return reportService.getSalesRankingByTypeId(rankingTypeId);
	}

    @RequestMapping(value="/salesRankingList",method=RequestMethod.GET)
    @ResponseBody
	public List<String> getSalesRankingList(String dealerId){
    	return reportService.getSalesRankingList(dealerId);
	}

    @RequestMapping(value="/salesVehicleModels",method=RequestMethod.GET)
    @ResponseBody
	public List<Map<String,String>> getSalesVehicleModels(String dealerId,String salesDate){
    	return reportService.getSalesVehicleModels(dealerId, salesDate);
	}

    
    /* ---------- 下面是数据存储服务 ---------- */
    @RequestMapping(value="/salesRankingSave",method=RequestMethod.GET)
    @ResponseBody
	public void startStorage(String start, String end){
    	reportService.startStoring(start, end);
    }
    
    
}
