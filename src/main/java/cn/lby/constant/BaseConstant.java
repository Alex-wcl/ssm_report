package cn.lby.constant;

public final class BaseConstant {
	
    // 基础数据状态 true/false
    public static final int BASE_TRUE = 0; // True
    public static final int BASE_FALSE = 1; // False
    
	//    客户确度	0	H
	//	1	A
	//	2	B
	//	3	C
    public static final int LEVEL_OF_INTENT_H = 0;
    public static final int LEVEL_OF_INTENT_A = 1;
    public static final int LEVEL_OF_INTENT_B = 2;
    public static final int LEVEL_OF_INTENT_C = 3;

    // 市场活动周报参数——是否为总报
    // 否 - 0
    // 是 - 1
    public static final int MARKET_ACTIVITY_TOTAL_TRUE = 1;
    public static final int MARKET_ACTIVITY_TOTAL_FALSE = 0;
}
