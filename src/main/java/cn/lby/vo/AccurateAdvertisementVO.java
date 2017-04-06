package cn.lby.vo;

import java.util.List;

public class AccurateAdvertisementVO {

//{
//    "advertisements": [                             // 互联网广告
//        {
//            "accessName": [string],                 // 渠道名称
//            "exposureTimes": [number],              // 曝光次数
//            "archivesNum": [number],                // 留档数量
//            "clickNum": [number]                    // 点击次数
//        }
//    ],
//    "oldCustomerArchivesNum": [number],             // 老客户曝光次数
//    "oldCustomerShowNum": [number]                  // 老客户留档数量
//}

	private List<AdvertisementModel> advertisements;
	private Integer oldCustomerArchivesNum;
	private Integer oldCustomerShowNum;
	
	public List<AdvertisementModel> getAdvertisements() {
		return advertisements;
	}

	public void setAdvertisements(List<AdvertisementModel> advertisements) {
		this.advertisements = advertisements;
	}

	public Integer getOldCustomerArchivesNum() {
		return oldCustomerArchivesNum;
	}

	public void setOldCustomerArchivesNum(Integer oldCustomerArchivesNum) {
		this.oldCustomerArchivesNum = oldCustomerArchivesNum;
	}

	public Integer getOldCustomerShowNum() {
		return oldCustomerShowNum;
	}

	public void setOldCustomerShowNum(Integer oldCustomerShowNum) {
		this.oldCustomerShowNum = oldCustomerShowNum;
	}


	public class AdvertisementModel {
		
		private String accessName;
		private Integer exposureTimes;
		private Integer archivesNum;
		private Integer clickNum;
		
		public String getAccessName() {
			return accessName;
		}
		public void setAccessName(String accessName) {
			this.accessName = accessName;
		}
		public Integer getExposureTimes() {
			return exposureTimes;
		}
		public void setExposureTimes(Integer exposureTimes) {
			this.exposureTimes = exposureTimes;
		}
		public Integer getArchivesNum() {
			return archivesNum;
		}
		public void setArchivesNum(Integer archivesNum) {
			this.archivesNum = archivesNum;
		}
		public Integer getClickNum() {
			return clickNum;
		}
		public void setClickNum(Integer clickNum) {
			this.clickNum = clickNum;
		}
		
	}
}
