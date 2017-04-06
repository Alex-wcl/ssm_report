package cn.lby.vo;

import java.util.List;

public class IntentionCustomerCountsVO {

//{
//    "currentCustomerList":[                         // 当前各类数量
//        {
//            "levelOfIntention": [string],           // 客户意向级别
//            "vehicleModel": [string],               // 车型
//            "customerNumber": [number]              // 客户数量
//        }
//    ],
//    "firstTryCustomerList":[                        // 首次各类数量
//        {
//            "levelOfIntention": [string],           // 客户意向级别
//            "vehicleModel": [string],               // 车型
//            "customerNumber": [number]              // 客户数量
//        }
//    ],
//    "push_plan_num_week": [number],                 // 本周计划推送
//    "push_actual_num_week": [number],               // 本周实际推送
//    "push_plan_num": [number],                      // 累计计划推送
//    "push_actual_num": [number]                     // 累计实际推送
//}

	private List<CustomersVehicleModel> currentCustomerList;
	private List<CustomersVehicleModel> firstTryCustomerList;
	private Integer push_plan_num_week;
	private Integer push_actual_num_week;
	private Integer push_plan_num;
	private Integer push_actual_num;
	
	public List<CustomersVehicleModel> getCurrentCustomerList() {
		return currentCustomerList;
	}

	public void setCurrentCustomerList(
			List<CustomersVehicleModel> currentCustomerList) {
		this.currentCustomerList = currentCustomerList;
	}

	public List<CustomersVehicleModel> getFirstTryCustomerList() {
		return firstTryCustomerList;
	}

	public void setFirstTryCustomerList(
			List<CustomersVehicleModel> firstTryCustomerList) {
		this.firstTryCustomerList = firstTryCustomerList;
	}

	public Integer getPush_plan_num_week() {
		return push_plan_num_week;
	}

	public void setPush_plan_num_week(Integer push_plan_num_week) {
		this.push_plan_num_week = push_plan_num_week;
	}

	public Integer getPush_actual_num_week() {
		return push_actual_num_week;
	}

	public void setPush_actual_num_week(Integer push_actual_num_week) {
		this.push_actual_num_week = push_actual_num_week;
	}

	public Integer getPush_plan_num() {
		return push_plan_num;
	}

	public void setPush_plan_num(Integer push_plan_num) {
		this.push_plan_num = push_plan_num;
	}

	public Integer getPush_actual_num() {
		return push_actual_num;
	}

	public void setPush_actual_num(Integer push_actual_num) {
		this.push_actual_num = push_actual_num;
	}


	public class CustomersVehicleModel {
		
		private String levelOfIntention;
		private String vehicleModel;
		private Integer customerNumber;

		public String getVehicleModel() {
			return vehicleModel;
		}
		public void setVehicleModel(String vehicleModel) {
			this.vehicleModel = vehicleModel;
		}
		public Integer getCustomerNumber() {
			return customerNumber;
		}
		public void setCustomerNumber(Integer customerNumber) {
			this.customerNumber = customerNumber;
		}
		public String getLevelOfIntention() {
			return levelOfIntention;
		}
		public void setLevelOfIntention(String levelOfIntention) {
			this.levelOfIntention = levelOfIntention;
		}
		
	}
	
}
