package cn.lby.vo;

import java.util.List;

public class ClosingNumWeekVO {

//{
//    "closingNumWeekList": [[number],...],       // 成交数量统计
//    "closingNumWeek": [number],                 // 本周成交数量
//    "closingNum": [number],                     // 累计成交数量
//    "transactionRatio": [
//        "levelOfIntention": [string],           // 客户意向级别
//        "closingNumFirst": [number],            // 首次确度成交数量
//        "numFirst": [number]                    // 首次各类意数量
//    ],
//    "archivesNumWeek": [number],                // 本周留档数量
//    "archivesNum": [number],                    // 累计留档数量
//    "appointments": [number],                   // 本周预约进店量
//    "appointmentsTotalNum": [number],           // 累计预约进店量
//    "closingNumWeekVehicleModel": [            
//        "vehicleModel": [string],               // 车型 
//        "closingNumWeekList": [[number],...],   // 各周成交量
//        "closingNumWeek": [number],             // 本周成交数量
//        "closingNum": [number]                  // 累计成交数量
//    ]
//}
	
	private List<Integer> closingNumWeekList;
	private Integer closingNumWeek;
	private Integer closingNum;
	private List<TransactionRatioDemo> transactionRatio;
	private Integer archivesNumWeek;
	private Integer archivesNum;
	private Integer appointments;
	private Integer appointmentsTotalNum;
	private List<NumVehicleModel> closingNumWeekVehicleModel;

	public List<Integer> getClosingNumWeekList() {
		return closingNumWeekList;
	}

	public void setClosingNumWeekList(List<Integer> closingNumWeekList) {
		this.closingNumWeekList = closingNumWeekList;
	}

	public Integer getClosingNumWeek() {
		return closingNumWeek;
	}

	public void setClosingNumWeek(Integer closingNumWeek) {
		this.closingNumWeek = closingNumWeek;
	}

	public Integer getClosingNum() {
		return closingNum;
	}

	public void setClosingNum(Integer closingNum) {
		this.closingNum = closingNum;
	}

	public List<TransactionRatioDemo> getTransactionRatio() {
		return transactionRatio;
	}

	public void setTransactionRatio(List<TransactionRatioDemo> transactionRatio) {
		this.transactionRatio = transactionRatio;
	}

	public Integer getArchivesNumWeek() {
		return archivesNumWeek;
	}

	public void setArchivesNumWeek(Integer archivesNumWeek) {
		this.archivesNumWeek = archivesNumWeek;
	}

	public Integer getAppointments() {
		return appointments;
	}

	public void setAppointments(Integer appointments) {
		this.appointments = appointments;
	}

	public List<NumVehicleModel> getClosingNumWeekVehicleModel() {
		return closingNumWeekVehicleModel;
	}

	public void setClosingNumWeekVehicleModel(
			List<NumVehicleModel> closingNumWeekVehicleModel) {
		this.closingNumWeekVehicleModel = closingNumWeekVehicleModel;
	}

	public Integer getArchivesNum() {
		return archivesNum;
	}

	public void setArchivesNum(Integer archivesNum) {
		this.archivesNum = archivesNum;
	}

	public Integer getAppointmentsTotalNum() {
		return appointmentsTotalNum;
	}

	public void setAppointmentsTotalNum(Integer appointmentsTotalNum) {
		this.appointmentsTotalNum = appointmentsTotalNum;
	}

	public class TransactionRatioDemo {
		
		private String levelOfIntention;
		private Integer closingNumFirst;
		private Integer numFirst;
		
		public String getLevelOfIntention() {
			return levelOfIntention;
		}
		public void setLevelOfIntention(String levelOfIntention) {
			this.levelOfIntention = levelOfIntention;
		}
		public Integer getClosingNumFirst() {
			return closingNumFirst;
		}
		public void setClosingNumFirst(Integer closingNumFirst) {
			this.closingNumFirst = closingNumFirst;
		}
		public Integer getNumFirst() {
			return numFirst;
		}
		public void setNumFirst(Integer numFirst) {
			this.numFirst = numFirst;
		}
	}
	
	public class NumVehicleModel {

		private String vehicleModel;
		private List<Integer> closingNumWeekList;
		private Integer closingNumWeek;
		private Integer closingNum;
		
		public String getVehicleModel() {
			return vehicleModel;
		}
		public void setVehicleModel(String vehicleModel) {
			this.vehicleModel = vehicleModel;
		}
		public List<Integer> getClosingNumWeekList() {
			return closingNumWeekList;
		}
		public void setClosingNumWeekList(List<Integer> closingNumWeekList) {
			this.closingNumWeekList = closingNumWeekList;
		}
		public Integer getClosingNumWeek() {
			return closingNumWeek;
		}
		public void setClosingNumWeek(Integer closingNumWeek) {
			this.closingNumWeek = closingNumWeek;
		}
		public Integer getClosingNum() {
			return closingNum;
		}
		public void setClosingNum(Integer closingNum) {
			this.closingNum = closingNum;
		}
		
	}
}
