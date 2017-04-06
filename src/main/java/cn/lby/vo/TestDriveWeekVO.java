package cn.lby.vo;

import java.util.List;
import java.util.Map;

public class TestDriveWeekVO {

//{
//	"appointments" : [number],					// 本周预约进店量
//	"totalAppointments" : [number],				// 累计预约进店量
//	"archivesNumWeek" : [number],				// 本周留档数量
//	"archivesNum" : [number],					// 累计留档数量
//	"appointmentsList" : [[number],...],		// 预约进店量统计
//	"testDriveMap" : [
//		"vehicleModel" : [[number],...]			// 试驾次数统计(分车型)
//	]		
//}

	private Integer appointments;
	private Integer totalAppointments;
	private Integer archivesNumWeek;
	private Integer archivesNum;
	private List<Integer> appointmentsList;
	private Map<String,List<Integer>> testDriveMap;
	
	public Integer getAppointments() {
		return appointments;
	}
	public void setAppointments(Integer appointments) {
		this.appointments = appointments;
	}
	public Integer getTotalAppointments() {
		return totalAppointments;
	}
	public void setTotalAppointments(Integer totalAppointments) {
		this.totalAppointments = totalAppointments;
	}
	public Integer getArchivesNumWeek() {
		return archivesNumWeek;
	}
	public void setArchivesNumWeek(Integer archivesNumWeek) {
		this.archivesNumWeek = archivesNumWeek;
	}
	public Integer getArchivesNum() {
		return archivesNum;
	}
	public void setArchivesNum(Integer archivesNum) {
		this.archivesNum = archivesNum;
	}
	public List<Integer> getAppointmentsList() {
		return appointmentsList;
	}
	public void setAppointmentsList(List<Integer> appointmentsList) {
		this.appointmentsList = appointmentsList;
	}
	public Map<String, List<Integer>> getTestDriveMap() {
		return testDriveMap;
	}
	public void setTestDriveMap(Map<String, List<Integer>> testDriveMap) {
		this.testDriveMap = testDriveMap;
	}
	
}
