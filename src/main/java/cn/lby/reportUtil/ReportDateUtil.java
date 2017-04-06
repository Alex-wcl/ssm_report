package cn.lby.reportUtil;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class ReportDateUtil {

	// 获取本月的开始日期
	public static String getMonthBegin() {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		// 获取当前时间
		Calendar calendar = Calendar.getInstance();
		Date theDate = calendar.getTime();

		// 用一个中间对象处理转换逻辑
		GregorianCalendar transCalendar = (GregorianCalendar)Calendar.getInstance();
		transCalendar.setTime(theDate);
		transCalendar.set(Calendar.DAY_OF_MONTH, 1);

		String day_first = dateFormat.format(transCalendar.getTime());
		
		return day_first;
	}
	
	// 再看另一种简洁的方式获取月未日期
	public static String getMonthEnd() {
		Calendar calendar = Calendar.getInstance();

		// 设置日期为本月最大日期
		calendar.set(Calendar.DAY_OF_MONTH, calendar.getActualMaximum(Calendar.DATE));

		// 设置日期格式
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String day_last = dateFormat.format(calendar.getTime());

		return day_last;
	}
	
	// 获得本周一的当前时间
	public static Date getWeekBegin() {
		Calendar c = Calendar.getInstance();

		c.setTime(new Date());
		int weekDay = c.get(Calendar.DAY_OF_WEEK) == 1 ? 8 : c
				.get(Calendar.DAY_OF_WEEK);
		c.add(Calendar.DATE, Calendar.MONDAY - weekDay);
		
		return c.getTime();
	}

	// 获得本周日的当前时间
	public static Date getWeekEnd() {
		Calendar c = Calendar.getInstance();
		c.setTime(getWeekBegin());
		c.add(Calendar.DATE, 6);
		return c.getTime();
	}
	
	// 获得本周一0点时间
	public static Date getTimesWeekmorning() {
		Calendar cal = Calendar.getInstance();
		cal.set(cal.get(Calendar.YEAR), cal.get(Calendar.MONDAY), cal.get(Calendar.DAY_OF_MONTH), 0, 0, 0);
		cal.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);
		return cal.getTime();
	}

	// 获得本周日24点时间
	public static Date getTimesWeeknight() {
		Calendar cal = Calendar.getInstance();
		cal.setTime(getTimesWeekmorning());
		cal.add(Calendar.DAY_OF_WEEK, 7);
		return cal.getTime();
	}
	
	// 获得本月第一天0点时间
	public static Date getTimesMonthmorning() {
		Calendar cal = Calendar.getInstance();
		cal.set(cal.get(Calendar.YEAR), cal.get(Calendar.MONDAY), cal.get(Calendar.DAY_OF_MONTH), 0, 0, 0);
		cal.set(Calendar.DAY_OF_MONTH, cal.getActualMinimum(Calendar.DAY_OF_MONTH));
		return cal.getTime();
	}

	// 获得本月最后一天24点时间
	public static Date getTimesMonthnight() {
		Calendar cal = Calendar.getInstance();
		cal.set(cal.get(Calendar.YEAR), cal.get(Calendar.MONDAY), cal.get(Calendar.DAY_OF_MONTH), 0, 0, 0);
		cal.set(Calendar.DAY_OF_MONTH, cal.getActualMaximum(Calendar.DAY_OF_MONTH));
		cal.set(Calendar.HOUR_OF_DAY, 24);
		return cal.getTime();
	}

	public static void main(String[] args) {
		System.out.println(getMonthBegin());
		System.out.println(getMonthEnd());

		System.out.println(getWeekBegin());
		System.out.println(getWeekEnd());
		
		System.out.println(getTimesWeekmorning());
		System.out.println(getTimesWeeknight());
		
		System.out.println(getTimesMonthmorning());
		System.out.println(getTimesMonthnight());
	}
}
