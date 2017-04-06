package cn.lby.vo;

import java.util.List;

public class SalesRankingVO {

//	{
//		    "salesChampion": [string],                  //冠军姓名
//		    "salesVolume": [number],                    //销量
//		    "satisfactionDegree": [number],             //满意度
//		    "salesConsultantList": [                    //全部顾问信息
//		        {
//		            "consultantName": [string],         // 顾问姓名
//		            "salesVolume": [number],            // 销售量
//		            "satisfactionDegree": [number]      // 满意度分值
//		        }
//		    ]
//	}
	
	private String salesChampion;
	private Integer salesVolume;
	private Integer satisfactionDegree;
	private List<SalesConsultantInfo> salesConsultantList;
	
	public String getSalesChampion() {
		return salesChampion;
	}

	public void setSalesChampion(String salesChampion) {
		this.salesChampion = salesChampion;
	}

	public Integer getSalesVolume() {
		return salesVolume;
	}

	public void setSalesVolume(Integer salesVolume) {
		this.salesVolume = salesVolume;
	}

	public Integer getSatisfactionDegree() {
		return satisfactionDegree;
	}

	public void setSatisfactionDegree(Integer satisfactionDegree) {
		this.satisfactionDegree = satisfactionDegree;
	}

	public List<SalesConsultantInfo> getSalesConsultantList() {
		return salesConsultantList;
	}

	public void setSalesConsultantList(List<SalesConsultantInfo> salesConsultantList) {
		this.salesConsultantList = salesConsultantList;
	}

	public class SalesConsultantInfo {

		private String consultantName;
		private Integer salesVolume;
		private Integer satisfactionDegree;

		public String getConsultantName() {
			return consultantName;
		}

		public void setConsultantName(String consultantName) {
			this.consultantName = consultantName;
		}

		public Integer getSalesVolume() {
			return salesVolume;
		}

		public void setSalesVolume(Integer salesVolume) {
			this.salesVolume = salesVolume;
		}

		public Integer getSatisfactionDegree() {
			return satisfactionDegree;
		}

		public void setSatisfactionDegree(Integer satisfactionDegree) {
			this.satisfactionDegree = satisfactionDegree;
		}

	}

}
