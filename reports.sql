/*
Navicat MySQL Data Transfer

Source Server         : 0.94
Source Server Version : 100114
Source Host           : localhost:3306
Source Database       : reports

Target Server Type    : MYSQL
Target Server Version : 100114
File Encoding         : 65001

Date: 2017-01-20 17:10:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for appointments_report_week
-- ----------------------------
DROP TABLE IF EXISTS `appointments_report_week`;
CREATE TABLE `appointments_report_week` (
  `id` varchar(36) DEFAULT NULL,
  `week_start_time` datetime DEFAULT NULL COMMENT '格式 2016-10-20',
  `week_end_time` datetime DEFAULT NULL,
  `dealer_id` varchar(36) DEFAULT NULL,
  `dealer_code` varchar(50) DEFAULT NULL,
  `dealer_name` varchar(100) DEFAULT NULL,
  `market_activity_id` varchar(36) DEFAULT NULL COMMENT 'QuestionType	问题类型\r\n            0	通用问题\r\n            1	个性问题\r\n            ',
  `market_activity_code` varchar(100) DEFAULT NULL,
  `market_activity_name` varchar(200) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='生成周报时，此表插入数据\r\n\r\n\r\n查询某个周报时，直接查询此表显示预约进店量统计 (Cr';

-- ----------------------------
-- Records of appointments_report_week
-- ----------------------------
INSERT INTO `appointments_report_week` VALUES ('40048590-e36f-477e-97cb-0158a6968497', '2016-11-07 00:00:00', '2016-11-13 00:00:00', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', 'e4b17f1d-68e1-11e6-8f48-1c872c779071', 'M01', '讴歌促销活动一', '27', '2016-11-09 17:27:45');
INSERT INTO `appointments_report_week` VALUES ('76f064b1-d700-11e6-8da9-005056af50a8', '2016-11-15 00:00:00', '2016-11-22 00:00:00', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', 'e4b17f1d-68e1-11e6-8f48-1c872c779071', 'M01', '讴歌促销活动一', '34', '2017-01-10 14:53:28');

-- ----------------------------
-- Table structure for closing_vehicle_week
-- ----------------------------
DROP TABLE IF EXISTS `closing_vehicle_week`;
CREATE TABLE `closing_vehicle_week` (
  `id` varchar(36) NOT NULL,
  `week_start_time` datetime DEFAULT NULL COMMENT '格式 2016-10-20',
  `week_end_time` datetime DEFAULT NULL,
  `dealer_id` varchar(36) DEFAULT NULL,
  `dealer_code` varchar(50) DEFAULT NULL,
  `dealer_name` varchar(100) DEFAULT NULL,
  `market_activity_id` varchar(36) DEFAULT NULL COMMENT 'QuestionType	问题类型\r\n            0	通用问题\r\n            1	个性问题\r\n            ',
  `market_activity_code` varchar(100) DEFAULT NULL,
  `market_activity_name` varchar(200) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `vehicle_model_id` varchar(36) DEFAULT NULL,
  `vehicle_model_code` varchar(100) DEFAULT NULL,
  `vehicle_model_name` varchar(200) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='生成周报时，此表插入数据\r\n\r\n\r\n查询某个周报时，通过Vehicle_Model_Id关';

-- ----------------------------
-- Records of closing_vehicle_week
-- ----------------------------
INSERT INTO `closing_vehicle_week` VALUES ('4e36bb64-d704-11e6-8da9-005056af50a8', '2016-11-15 00:00:00', '2016-11-22 00:00:00', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', 'e4b17f1d-68e1-11e6-8f48-1c872c779071', 'M01', '讴歌促销活动一', '8', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '2017-01-10 15:20:58');
INSERT INTO `closing_vehicle_week` VALUES ('73742bbe-d704-11e6-8da9-005056af50a8', '2016-11-15 00:00:00', '2016-11-22 00:00:00', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', 'e4b17f1d-68e1-11e6-8f48-1c872c779071', 'M01', '讴歌促销活动一', '7', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '2017-01-10 15:22:01');
INSERT INTO `closing_vehicle_week` VALUES ('828a68c6-2d59-42aa-9c45-c7b58ee0f4d6', '2016-11-07 00:00:00', '2016-11-13 00:00:00', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', 'e4b17f1d-68e1-11e6-8f48-1c872c779071', 'M01', '讴歌促销活动一', '6', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '2016-11-09 17:28:27');
INSERT INTO `closing_vehicle_week` VALUES ('b14bb538-d6fa-11e6-8da9-005056af50a8', '2016-11-07 00:00:00', '2016-11-13 00:00:00', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', 'e4b17f1d-68e1-11e6-8f48-1c872c779071', 'M01', '讴歌促销活动一', '7', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '2016-11-09 17:28:27');

-- ----------------------------
-- Table structure for market_activity_report_week
-- ----------------------------
DROP TABLE IF EXISTS `market_activity_report_week`;
CREATE TABLE `market_activity_report_week` (
  `id` varchar(36) NOT NULL,
  `week_start_time` datetime DEFAULT NULL COMMENT '格式 2016-10-20',
  `week_end_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `old_customer_show_num` int(11) DEFAULT NULL,
  `old_customer_archives_num` int(11) DEFAULT NULL,
  `appointment_into_num_week` int(11) DEFAULT NULL,
  `appointment_into_num` int(11) DEFAULT NULL,
  `archives_num_week` int(11) DEFAULT NULL,
  `archives_num` int(11) DEFAULT NULL,
  `closing_num_week` int(11) DEFAULT NULL,
  `closing_num` int(11) DEFAULT NULL,
  `Market_Activity_Id` varchar(36) DEFAULT NULL,
  `Market_Activity_Code` varchar(100) DEFAULT NULL,
  `Market_Activity_Name` varchar(100) DEFAULT NULL,
  `push_plan_num_week` int(11) DEFAULT NULL,
  `push_actual_num_week` int(11) DEFAULT NULL,
  `push_actual_num` int(11) DEFAULT NULL,
  `push_plan_num` int(11) DEFAULT NULL,
  `dealer_id` varchar(36) DEFAULT NULL,
  `dealer_code` varchar(100) DEFAULT NULL,
  `dealer_name` varchar(100) DEFAULT NULL,
  `isTotal` int(11) DEFAULT NULL COMMENT '0 : 否；1：是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='市场活动周报';

-- ----------------------------
-- Records of market_activity_report_week
-- ----------------------------
INSERT INTO `market_activity_report_week` VALUES ('0c3c75bc-d709-11e6-8da9-005056af50a8', '2016-11-07 00:00:00', '2016-11-30 00:00:00', '2017-01-10 15:54:55', '6052', '8', null, '61', null, '97', null, '28', 'e4b17f1d-68e1-11e6-8f48-1c872c779071', 'M01', '讴歌促销活动一', null, null, '186', '372', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', '1');
INSERT INTO `market_activity_report_week` VALUES ('88f8589b-d6fd-11e6-8da9-005056af50a8', '2016-11-15 00:00:00', '2016-11-22 00:00:00', '2017-01-10 14:32:30', '6052', '8', '34', '61', '56', '97', '15', '28', 'e4b17f1d-68e1-11e6-8f48-1c872c779071', 'M01', '讴歌促销活动一', '186', '186', '186', '186', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', '0');
INSERT INTO `market_activity_report_week` VALUES ('8bf2c5fd-d6dc-4f01-b6e0-19b5f68ecbf0', '2016-11-07 00:00:00', '2016-11-13 00:00:00', '2016-11-09 17:27:22', '5231', '5', '27', '27', '41', '41', '13', '13', 'e4b17f1d-68e1-11e6-8f48-1c872c779071', 'M01', '讴歌促销活动一', '0', '0', '186', '186', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', '0');

-- ----------------------------
-- Table structure for market_activity_report_week_advertisement
-- ----------------------------
DROP TABLE IF EXISTS `market_activity_report_week_advertisement`;
CREATE TABLE `market_activity_report_week_advertisement` (
  `id` varchar(36) NOT NULL,
  `market_activity_report_week_id` varchar(36) DEFAULT NULL COMMENT '格式 2016-10-20',
  `channel_name` varchar(100) DEFAULT NULL,
  `channel` varchar(11) DEFAULT NULL,
  `show_num` int(11) DEFAULT NULL,
  `archives_num` int(11) DEFAULT NULL,
  `click_num` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of market_activity_report_week_advertisement
-- ----------------------------
INSERT INTO `market_activity_report_week_advertisement` VALUES ('958c5387-2315-4ba1-b9e6-5cb37ab9660d', '8bf2c5fd-d6dc-4f01-b6e0-19b5f68ecbf0', '电信', 'telecom', '282339', '31', '42469', '2016-11-09 17:27:43');
INSERT INTO `market_activity_report_week_advertisement` VALUES ('978299ca-d6fe-11e6-8da9-005056af50a8', '88f8589b-d6fd-11e6-8da9-005056af50a8', '电信', 'telecom', '292231', '37', '58694', '2017-01-10 14:40:04');
INSERT INTO `market_activity_report_week_advertisement` VALUES ('9bc66c89-d70a-11e6-8da9-005056af50a8', '0c3c75bc-d709-11e6-8da9-005056af50a8', '汽车之家', 'autohome', '421333', '25', '53753', '2017-01-10 16:06:05');
INSERT INTO `market_activity_report_week_advertisement` VALUES ('9bc670cf-d70a-11e6-8da9-005056af50a8', '0c3c75bc-d709-11e6-8da9-005056af50a8', '电信', 'telecom', '574570', '68', '101163', '2017-01-10 16:06:05');
INSERT INTO `market_activity_report_week_advertisement` VALUES ('c762f60f-3770-471c-8966-b19b3382fee3', '8bf2c5fd-d6dc-4f01-b6e0-19b5f68ecbf0', '汽车之家', 'autohome', '209282', '10', '26567', '2016-11-09 17:27:43');
INSERT INTO `market_activity_report_week_advertisement` VALUES ('f19f08b5-d6fe-11e6-8da9-005056af50a8', '88f8589b-d6fd-11e6-8da9-005056af50a8', '汽车之家', 'autohome', '212051', '15', '27186', '2017-01-10 14:42:35');

-- ----------------------------
-- Table structure for market_activity_report_week_closing_intention
-- ----------------------------
DROP TABLE IF EXISTS `market_activity_report_week_closing_intention`;
CREATE TABLE `market_activity_report_week_closing_intention` (
  `id` varchar(36) NOT NULL,
  `market_activity_report_week_id` varchar(36) DEFAULT NULL COMMENT '格式 2016-10-20',
  `level_of_intent` int(11) DEFAULT NULL,
  `closing_num_frist` int(11) DEFAULT NULL,
  `num_first` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of market_activity_report_week_closing_intention
-- ----------------------------
INSERT INTO `market_activity_report_week_closing_intention` VALUES ('03517f07-d703-11e6-8da9-005056af50a8', '88f8589b-d6fd-11e6-8da9-005056af50a8', '0', '2', '12');
INSERT INTO `market_activity_report_week_closing_intention` VALUES ('0352edfe-d703-11e6-8da9-005056af50a8', '88f8589b-d6fd-11e6-8da9-005056af50a8', '1', '3', '27');
INSERT INTO `market_activity_report_week_closing_intention` VALUES ('03551ae0-d703-11e6-8da9-005056af50a8', '88f8589b-d6fd-11e6-8da9-005056af50a8', '2', '2', '11');
INSERT INTO `market_activity_report_week_closing_intention` VALUES ('0357b20b-d703-11e6-8da9-005056af50a8', '88f8589b-d6fd-11e6-8da9-005056af50a8', '3', '1', '15');
INSERT INTO `market_activity_report_week_closing_intention` VALUES ('786748ea-e50a-46a2-a4a8-7395e089f933', '8bf2c5fd-d6dc-4f01-b6e0-19b5f68ecbf0', '0', '1', '9');
INSERT INTO `market_activity_report_week_closing_intention` VALUES ('83d59d6b-1bb4-4d2e-86ad-a3271644898c', '8bf2c5fd-d6dc-4f01-b6e0-19b5f68ecbf0', '1', '2', '16');
INSERT INTO `market_activity_report_week_closing_intention` VALUES ('865db36a-d6f7-11e6-8da9-005056af50a8', '8bf2c5fd-d6dc-4f01-b6e0-19b5f68ecbf0', '2', '2', '8');
INSERT INTO `market_activity_report_week_closing_intention` VALUES ('865f1c0a-d6f7-11e6-8da9-005056af50a8', '8bf2c5fd-d6dc-4f01-b6e0-19b5f68ecbf0', '3', '1', '11');
INSERT INTO `market_activity_report_week_closing_intention` VALUES ('c15b469f-d70b-11e6-8da9-005056af50a8', '0c3c75bc-d709-11e6-8da9-005056af50a8', '0', '3', '21');
INSERT INTO `market_activity_report_week_closing_intention` VALUES ('c15b4b24-d70b-11e6-8da9-005056af50a8', '0c3c75bc-d709-11e6-8da9-005056af50a8', '1', '5', '43');
INSERT INTO `market_activity_report_week_closing_intention` VALUES ('c15b4c3a-d70b-11e6-8da9-005056af50a8', '0c3c75bc-d709-11e6-8da9-005056af50a8', '2', '4', '19');
INSERT INTO `market_activity_report_week_closing_intention` VALUES ('c15b4d75-d70b-11e6-8da9-005056af50a8', '0c3c75bc-d709-11e6-8da9-005056af50a8', '3', '2', '26');

-- ----------------------------
-- Table structure for market_activity_report_week_closing_vehicle
-- ----------------------------
DROP TABLE IF EXISTS `market_activity_report_week_closing_vehicle`;
CREATE TABLE `market_activity_report_week_closing_vehicle` (
  `id` varchar(36) NOT NULL,
  `market_activity_report_week_id` varchar(36) DEFAULT NULL COMMENT '格式 2016-10-20',
  `vehicle_model_id` varchar(36) DEFAULT NULL,
  `vehicle_model_code` varchar(100) DEFAULT NULL,
  `vehicle_model_name` varchar(200) DEFAULT NULL,
  `closing_num_week` int(11) DEFAULT NULL,
  `closing_num` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of market_activity_report_week_closing_vehicle
-- ----------------------------
INSERT INTO `market_activity_report_week_closing_vehicle` VALUES ('0c3511f5-d70d-11e6-8da9-005056af50a8', '0c3c75bc-d709-11e6-8da9-005056af50a8', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '14', '14', '2017-01-10 16:23:33');
INSERT INTO `market_activity_report_week_closing_vehicle` VALUES ('0c3518f3-d70d-11e6-8da9-005056af50a8', '0c3c75bc-d709-11e6-8da9-005056af50a8', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '14', '14', '2017-01-10 16:23:33');
INSERT INTO `market_activity_report_week_closing_vehicle` VALUES ('84215111-d703-11e6-8da9-005056af50a8', '88f8589b-d6fd-11e6-8da9-005056af50a8', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '8', '14', '2017-01-10 15:15:19');
INSERT INTO `market_activity_report_week_closing_vehicle` VALUES ('84231234-d703-11e6-8da9-005056af50a8', '88f8589b-d6fd-11e6-8da9-005056af50a8', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '7', '14', '2017-01-10 15:15:19');
INSERT INTO `market_activity_report_week_closing_vehicle` VALUES ('8a29b91e-c9d8-4ddd-95f6-63f67fcaf75f', '8bf2c5fd-d6dc-4f01-b6e0-19b5f68ecbf0', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '6', '6', '2016-11-09 17:28:23');
INSERT INTO `market_activity_report_week_closing_vehicle` VALUES ('af6aed3d-d6f9-11e6-8da9-005056af50a8', '8bf2c5fd-d6dc-4f01-b6e0-19b5f68ecbf0', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '7', '7', '2016-11-09 17:28:23');

-- ----------------------------
-- Table structure for market_activity_report_week_intention
-- ----------------------------
DROP TABLE IF EXISTS `market_activity_report_week_intention`;
CREATE TABLE `market_activity_report_week_intention` (
  `id` varchar(36) NOT NULL,
  `market_activity_report_week_id` varchar(36) DEFAULT NULL COMMENT '格式 2016-10-20',
  `level_of_intent` int(11) DEFAULT NULL,
  `vehicle_model_id` varchar(36) DEFAULT NULL,
  `vehicle_model_code` varchar(100) DEFAULT NULL,
  `vehicle_model_name` varchar(200) DEFAULT NULL,
  `customer_num` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_first` int(11) DEFAULT NULL COMMENT '0   是\r\n            1   否',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of market_activity_report_week_intention
-- ----------------------------
INSERT INTO `market_activity_report_week_intention` VALUES ('0e0300fb-d706-11e6-8da9-005056af50a8', '88f8589b-d6fd-11e6-8da9-005056af50a8', '0', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '5', '2017-01-10 15:33:29', '0');
INSERT INTO `market_activity_report_week_intention` VALUES ('0e048d91-d706-11e6-8da9-005056af50a8', '88f8589b-d6fd-11e6-8da9-005056af50a8', '1', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '6', '2017-01-10 15:33:29', '0');
INSERT INTO `market_activity_report_week_intention` VALUES ('0e0622b5-d706-11e6-8da9-005056af50a8', '88f8589b-d6fd-11e6-8da9-005056af50a8', '2', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '2', '2017-01-10 15:33:29', '0');
INSERT INTO `market_activity_report_week_intention` VALUES ('0e07c4cd-d706-11e6-8da9-005056af50a8', '88f8589b-d6fd-11e6-8da9-005056af50a8', '3', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '1', '2017-01-10 15:33:29', '0');
INSERT INTO `market_activity_report_week_intention` VALUES ('15ed0304-5d26-4ab5-b8f8-8193d00bbbc5', '8bf2c5fd-d6dc-4f01-b6e0-19b5f68ecbf0', '1', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '10', '2016-11-09 17:27:47', '0');
INSERT INTO `market_activity_report_week_intention` VALUES ('167a46cc-d510-4025-a7d9-5d5d69fc24fb', '8bf2c5fd-d6dc-4f01-b6e0-19b5f68ecbf0', '0', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '6', '2016-11-09 17:27:47', '1');
INSERT INTO `market_activity_report_week_intention` VALUES ('4e2033f3-abfb-4c0c-8482-54b182625669', '8bf2c5fd-d6dc-4f01-b6e0-19b5f68ecbf0', '2', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '1', '2016-11-09 17:27:47', '1');
INSERT INTO `market_activity_report_week_intention` VALUES ('581ff0e1-1a03-4a2c-97bf-bd3c8530e985', '8bf2c5fd-d6dc-4f01-b6e0-19b5f68ecbf0', '1', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '6', '2016-11-09 17:27:47', '0');
INSERT INTO `market_activity_report_week_intention` VALUES ('60925ab1-ffb1-4dfe-a00b-dd942576ec7e', '8bf2c5fd-d6dc-4f01-b6e0-19b5f68ecbf0', '1', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '11', '2016-11-09 17:27:47', '1');
INSERT INTO `market_activity_report_week_intention` VALUES ('63eb2bb1-d70e-11e6-8da9-005056af50a8', '0c3c75bc-d709-11e6-8da9-005056af50a8', '0', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '8', '2017-01-10 16:33:09', '0');
INSERT INTO `market_activity_report_week_intention` VALUES ('63eb2fce-d70e-11e6-8da9-005056af50a8', '0c3c75bc-d709-11e6-8da9-005056af50a8', '0', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '15', '2017-01-10 16:33:09', '1');
INSERT INTO `market_activity_report_week_intention` VALUES ('63eb3138-d70e-11e6-8da9-005056af50a8', '0c3c75bc-d709-11e6-8da9-005056af50a8', '0', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '13', '2017-01-10 16:33:09', '0');
INSERT INTO `market_activity_report_week_intention` VALUES ('63eb3240-d70e-11e6-8da9-005056af50a8', '0c3c75bc-d709-11e6-8da9-005056af50a8', '0', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '21', '2017-01-10 16:33:09', '1');
INSERT INTO `market_activity_report_week_intention` VALUES ('63eb333c-d70e-11e6-8da9-005056af50a8', '0c3c75bc-d709-11e6-8da9-005056af50a8', '1', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '16', '2017-01-10 16:33:09', '0');
INSERT INTO `market_activity_report_week_intention` VALUES ('63eb34bc-d70e-11e6-8da9-005056af50a8', '0c3c75bc-d709-11e6-8da9-005056af50a8', '1', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '17', '2017-01-10 16:33:09', '1');
INSERT INTO `market_activity_report_week_intention` VALUES ('63eb35bf-d70e-11e6-8da9-005056af50a8', '0c3c75bc-d709-11e6-8da9-005056af50a8', '1', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '12', '2017-01-10 16:33:09', '0');
INSERT INTO `market_activity_report_week_intention` VALUES ('63eb36b1-d70e-11e6-8da9-005056af50a8', '0c3c75bc-d709-11e6-8da9-005056af50a8', '1', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '18', '2017-01-10 16:33:09', '1');
INSERT INTO `market_activity_report_week_intention` VALUES ('63eb3798-d70e-11e6-8da9-005056af50a8', '0c3c75bc-d709-11e6-8da9-005056af50a8', '2', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '3', '2017-01-10 16:33:09', '0');
INSERT INTO `market_activity_report_week_intention` VALUES ('63eb388d-d70e-11e6-8da9-005056af50a8', '0c3c75bc-d709-11e6-8da9-005056af50a8', '2', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '4', '2017-01-10 16:33:09', '1');
INSERT INTO `market_activity_report_week_intention` VALUES ('63eb397c-d70e-11e6-8da9-005056af50a8', '0c3c75bc-d709-11e6-8da9-005056af50a8', '2', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '4', '2017-01-10 16:33:09', '0');
INSERT INTO `market_activity_report_week_intention` VALUES ('63eb3a6c-d70e-11e6-8da9-005056af50a8', '0c3c75bc-d709-11e6-8da9-005056af50a8', '2', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '5', '2017-01-10 16:33:09', '1');
INSERT INTO `market_activity_report_week_intention` VALUES ('63eb3b52-d70e-11e6-8da9-005056af50a8', '0c3c75bc-d709-11e6-8da9-005056af50a8', '3', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '1', '2017-01-10 16:33:09', '0');
INSERT INTO `market_activity_report_week_intention` VALUES ('63eb3c4f-d70e-11e6-8da9-005056af50a8', '0c3c75bc-d709-11e6-8da9-005056af50a8', '3', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '3', '2017-01-10 16:33:09', '1');
INSERT INTO `market_activity_report_week_intention` VALUES ('63eb3d3c-d70e-11e6-8da9-005056af50a8', '0c3c75bc-d709-11e6-8da9-005056af50a8', '3', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '5', '2017-01-10 16:33:09', '0');
INSERT INTO `market_activity_report_week_intention` VALUES ('63eb3e26-d70e-11e6-8da9-005056af50a8', '0c3c75bc-d709-11e6-8da9-005056af50a8', '3', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '7', '2017-01-10 16:33:09', '1');
INSERT INTO `market_activity_report_week_intention` VALUES ('688ba70e-2500-4aa1-9d63-1116a616f9b7', '8bf2c5fd-d6dc-4f01-b6e0-19b5f68ecbf0', '0', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '6', '2016-11-09 17:27:47', '0');
INSERT INTO `market_activity_report_week_intention` VALUES ('8600c874-de26-47f4-b1e0-4198722bb7e3', '8bf2c5fd-d6dc-4f01-b6e0-19b5f68ecbf0', '0', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '3', '2016-11-09 17:27:47', '0');
INSERT INTO `market_activity_report_week_intention` VALUES ('8a627fec-d706-11e6-8da9-005056af50a8', '88f8589b-d6fd-11e6-8da9-005056af50a8', '0', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '15', '2017-01-10 15:36:58', '1');
INSERT INTO `market_activity_report_week_intention` VALUES ('8a63a546-d706-11e6-8da9-005056af50a8', '88f8589b-d6fd-11e6-8da9-005056af50a8', '1', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '11', '2017-01-10 15:36:58', '1');
INSERT INTO `market_activity_report_week_intention` VALUES ('8a650207-d706-11e6-8da9-005056af50a8', '88f8589b-d6fd-11e6-8da9-005056af50a8', '2', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '4', '2017-01-10 15:36:58', '1');
INSERT INTO `market_activity_report_week_intention` VALUES ('8a6668a7-d706-11e6-8da9-005056af50a8', '88f8589b-d6fd-11e6-8da9-005056af50a8', '3', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '7', '2017-01-10 15:36:58', '1');
INSERT INTO `market_activity_report_week_intention` VALUES ('8a685b64-d706-11e6-8da9-005056af50a8', '88f8589b-d6fd-11e6-8da9-005056af50a8', '0', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '12', '2017-01-10 15:36:58', '1');
INSERT INTO `market_activity_report_week_intention` VALUES ('8a6a9880-d706-11e6-8da9-005056af50a8', '88f8589b-d6fd-11e6-8da9-005056af50a8', '1', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '6', '2017-01-10 15:36:58', '1');
INSERT INTO `market_activity_report_week_intention` VALUES ('8a6c86d4-d706-11e6-8da9-005056af50a8', '88f8589b-d6fd-11e6-8da9-005056af50a8', '2', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '4', '2017-01-10 15:36:58', '1');
INSERT INTO `market_activity_report_week_intention` VALUES ('8a6e9b5e-d706-11e6-8da9-005056af50a8', '88f8589b-d6fd-11e6-8da9-005056af50a8', '3', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '3', '2017-01-10 15:36:58', '1');
INSERT INTO `market_activity_report_week_intention` VALUES ('94329fc5-8255-4094-b550-7817129a3d54', '8bf2c5fd-d6dc-4f01-b6e0-19b5f68ecbf0', '1', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '7', '2016-11-09 17:27:47', '1');
INSERT INTO `market_activity_report_week_intention` VALUES ('c3ffa16e-bbd5-429b-9e8b-a0ede58c9686', '8bf2c5fd-d6dc-4f01-b6e0-19b5f68ecbf0', '2', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '1', '2016-11-09 17:27:47', '0');
INSERT INTO `market_activity_report_week_intention` VALUES ('cd7d0474-d705-11e6-8da9-005056af50a8', '88f8589b-d6fd-11e6-8da9-005056af50a8', '0', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '7', '2017-01-10 15:31:41', '0');
INSERT INTO `market_activity_report_week_intention` VALUES ('cd7e506c-d705-11e6-8da9-005056af50a8', '88f8589b-d6fd-11e6-8da9-005056af50a8', '1', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '6', '2017-01-10 15:31:41', '0');
INSERT INTO `market_activity_report_week_intention` VALUES ('cd8001e5-d705-11e6-8da9-005056af50a8', '88f8589b-d6fd-11e6-8da9-005056af50a8', '2', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '3', '2017-01-10 15:31:41', '0');
INSERT INTO `market_activity_report_week_intention` VALUES ('cd816f00-d705-11e6-8da9-005056af50a8', '88f8589b-d6fd-11e6-8da9-005056af50a8', '3', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '4', '2017-01-10 15:31:41', '0');
INSERT INTO `market_activity_report_week_intention` VALUES ('d625a234-81fc-4874-a5a3-73bcb4b53f3c', '8bf2c5fd-d6dc-4f01-b6e0-19b5f68ecbf0', '0', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '3', '2016-11-09 17:27:47', '1');
INSERT INTO `market_activity_report_week_intention` VALUES ('ea37003d-82a2-4daa-8c8f-315e2f1ff81b', '8bf2c5fd-d6dc-4f01-b6e0-19b5f68ecbf0', '2', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '1', '2016-11-09 17:27:47', '0');
INSERT INTO `market_activity_report_week_intention` VALUES ('fee51d78-627c-41dd-8f96-477267428fe6', '8bf2c5fd-d6dc-4f01-b6e0-19b5f68ecbf0', '3', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '1', '2016-11-09 17:27:47', '0');

-- ----------------------------
-- Table structure for reward_record
-- ----------------------------
DROP TABLE IF EXISTS `reward_record`;
CREATE TABLE `reward_record` (
  `id` varchar(36) NOT NULL,
  `sales_record_id` varchar(36) DEFAULT NULL,
  `customer_id` varchar(36) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `sale_consultant_id` varchar(36) DEFAULT NULL,
  `sale_consultant_name` varchar(100) DEFAULT NULL,
  `sale_consultant_mobile` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `vehicle_model_id` varchar(36) DEFAULT NULL,
  `vehicle_model_code` varchar(100) DEFAULT NULL,
  `vehicle_model_name` varchar(100) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `market_activity_id` varchar(36) DEFAULT NULL,
  `market_activity_code` varchar(100) DEFAULT NULL,
  `market_activity_name` varchar(100) DEFAULT NULL,
  `reward_record_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reward_record
-- ----------------------------
INSERT INTO `reward_record` VALUES ('1b5285c8-9695-11e6-8da9-005056af50a8', '915176d1-968f-11e6-8da9-005056af50a8', null, 'lby', '7e0a0908-795a-11e6-8da9-005056af50a8', '李华', null, null, '2016-10-20 15:20:42', '915176d1-968f-11e6-8da9-005056af50a8', 'CDX', '讴歌CDX', '80', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null);
INSERT INTO `reward_record` VALUES ('1b528a5d-9695-11e6-8da9-005056af50a8', '987293fa-968f-11e6-8da9-005056af50a8', null, '李华', '7e0a1470-795a-11e6-8da9-005056af50a8', '吕明强', null, null, '2016-10-20 15:20:42', '915176d1-968f-11e6-8da9-005056af50a8', 'CDX', '讴歌CDX', '80', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null);
INSERT INTO `reward_record` VALUES ('55be1793-35c6-4dc5-9dd0-ed45c1f69160', '410eda75-7e74-41e9-a821-0bc6cb62ae66', '54fe6a3d-4c79-476f-afc4-12d90687379e', '张上亮4', '46880375-90eb-11e6-8da9-005056af50a8', '张上亮', null, '0', '2016-10-24 14:51:55', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '86', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null);
INSERT INTO `reward_record` VALUES ('58790b12-95c9-11e6-8da9-005056af50a8', '0b97e68b-05ef-40e0-a891-b2dc69bad456', null, '张上亮', '46880375-90eb-11e6-8da9-005056af50a8', '孙清正', null, null, '2016-10-19 15:02:07', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '75', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null);
INSERT INTO `reward_record` VALUES ('587915c3-95c9-11e6-8da9-005056af50a8', '1ef64924-a19d-425d-9b7b-90de58f15a50', null, '张上亮', '46880375-90eb-11e6-8da9-005056af50a8', '张上亮', null, null, '2016-10-19 15:02:07', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '75', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null);
INSERT INTO `reward_record` VALUES ('5879184e-95c9-11e6-8da9-005056af50a8', '3630b217-50fd-49a6-b07c-79d0c5c44038', null, '张上亮2', '46880375-90eb-11e6-8da9-005056af50a8', '张上亮', null, null, '2016-10-19 15:02:07', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '75', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null);
INSERT INTO `reward_record` VALUES ('587919ef-95c9-11e6-8da9-005056af50a8', '6020f59c-91d8-11e6-8da9-005056af50a8', null, 'sadfasd', '7e0a1470-795a-11e6-8da9-005056af50a8', '吕明强', null, null, '2016-10-19 15:02:07', null, 'RDX', '讴歌RDX', '90', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null);
INSERT INTO `reward_record` VALUES ('58791b6b-95c9-11e6-8da9-005056af50a8', '6020fd62-91d8-11e6-8da9-005056af50a8', null, '张上亮', '7e0a0ccb-795a-11e6-8da9-005056af50a8', '万海涛', null, null, '2016-10-19 15:02:07', null, null, '讴歌RDX', '80', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null);
INSERT INTO `reward_record` VALUES ('58791cca-95c9-11e6-8da9-005056af50a8', '6021000d-91d8-11e6-8da9-005056af50a8', null, '李华', '7e0a0908-795a-11e6-8da9-005056af50a8', '李华', null, null, '2016-10-19 15:02:07', null, null, '讴歌CDX', '75', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null);
INSERT INTO `reward_record` VALUES ('58791e91-95c9-11e6-8da9-005056af50a8', '602103e2-91d8-11e6-8da9-005056af50a8', null, '张上亮', '7e0a0ccb-795a-11e6-8da9-005056af50a8', '万海涛', null, null, '2016-10-19 15:02:07', null, null, '讴歌RDX', '80', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null);
INSERT INTO `reward_record` VALUES ('58792023-95c9-11e6-8da9-005056af50a8', '602105b3-91d8-11e6-8da9-005056af50a8', null, 'sadfasd', '7e0a1470-795a-11e6-8da9-005056af50a8', '吕明强', null, null, '2016-10-19 15:02:07', null, null, '讴歌RDX', '90', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null);
INSERT INTO `reward_record` VALUES ('58792174-95c9-11e6-8da9-005056af50a8', '60210969-91d8-11e6-8da9-005056af50a8', null, '张上亮', '7e0a0ccb-795a-11e6-8da9-005056af50a8', '万海涛', null, null, '2016-10-19 15:02:07', null, null, '讴歌RDX', '80', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null);
INSERT INTO `reward_record` VALUES ('587922c1-95c9-11e6-8da9-005056af50a8', '60210b20-91d8-11e6-8da9-005056af50a8', null, '郭鹏', '7e0a1470-795a-11e6-8da9-005056af50a8', '吕明强', null, null, '2016-10-19 15:02:07', null, null, '讴歌RDX', '90', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null);
INSERT INTO `reward_record` VALUES ('58792417-95c9-11e6-8da9-005056af50a8', '60210cd1-91d8-11e6-8da9-005056af50a8', null, '李华', '7e0a0908-795a-11e6-8da9-005056af50a8', '李华', null, null, '2016-10-19 15:02:07', null, null, '讴歌RDX', '75', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null);
INSERT INTO `reward_record` VALUES ('5879255a-95c9-11e6-8da9-005056af50a8', '60210e7c-91d8-11e6-8da9-005056af50a8', null, '张上亮', '7e0a0ccb-795a-11e6-8da9-005056af50a8', '万海涛', null, null, '2016-10-19 15:02:07', null, null, '讴歌RDX', '80', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null);
INSERT INTO `reward_record` VALUES ('58792694-95c9-11e6-8da9-005056af50a8', '60211030-91d8-11e6-8da9-005056af50a8', null, 'sadfasd', '7e0a1470-795a-11e6-8da9-005056af50a8', '吕明强', null, null, '2016-10-19 15:02:07', null, null, '讴歌RDX', '90', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null);
INSERT INTO `reward_record` VALUES ('587927d9-95c9-11e6-8da9-005056af50a8', '602111db-91d8-11e6-8da9-005056af50a8', null, '吕明强', '7e0a1470-795a-11e6-8da9-005056af50a8', '吕明强', null, null, '2016-10-19 15:02:07', null, null, '讴歌RDX', '90', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null);
INSERT INTO `reward_record` VALUES ('58792909-95c9-11e6-8da9-005056af50a8', '60211386-91d8-11e6-8da9-005056af50a8', null, 'sadfasd', '7e0a1470-795a-11e6-8da9-005056af50a8', '吕明强', null, null, '2016-10-19 15:02:07', null, null, '讴歌RDX', '90', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null);
INSERT INTO `reward_record` VALUES ('58792a45-95c9-11e6-8da9-005056af50a8', '60211523-91d8-11e6-8da9-005056af50a8', null, 'sadfasd', '7e0a1470-795a-11e6-8da9-005056af50a8', '吕明强', null, null, '2016-10-19 15:02:07', null, null, '讴歌RDX', '90', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null);
INSERT INTO `reward_record` VALUES ('58792b7b-95c9-11e6-8da9-005056af50a8', '60211763-91d8-11e6-8da9-005056af50a8', null, '张上亮', '7e0a0e48-795a-11e6-8da9-005056af50a8', '张上亮', null, null, '2016-10-19 15:02:07', null, null, '讴歌CDX', '75', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null);
INSERT INTO `reward_record` VALUES ('58792cbe-95c9-11e6-8da9-005056af50a8', 'b6a9b543-5f66-428d-8c49-731eee6c2b1b', null, '张上亮1', '46880375-90eb-11e6-8da9-005056af50a8', '张上亮', null, null, '2016-10-19 15:02:07', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '75', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null);
INSERT INTO `reward_record` VALUES ('dfc6465b-2982-4523-9478-dba882773c00', '3630b217-50fd-49a6-b07c-79d0c5c44038', 'bff296e4-f8d0-4547-89c5-5df64bde53e8', '张上亮2', '46880375-90eb-11e6-8da9-005056af50a8', '张上亮', null, '0', '2016-10-19 13:20:06', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '75', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null);

-- ----------------------------
-- Table structure for sales_ranking_qa
-- ----------------------------
DROP TABLE IF EXISTS `sales_ranking_qa`;
CREATE TABLE `sales_ranking_qa` (
  `id` varchar(36) NOT NULL,
  `ranking_type_id` varchar(36) DEFAULT NULL,
  `sale_consultant_id` varchar(36) DEFAULT NULL,
  `sale_consultant_name` varchar(20) DEFAULT NULL,
  `sales_volume` int(11) DEFAULT NULL,
  `satisfaction_degree` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sales_ranking_qa
-- ----------------------------
INSERT INTO `sales_ranking_qa` VALUES ('6e888c25-d644-11e6-8da9-005056af50a8', '6e81ee41-d644-11e6-8da9-005056af50a8', '46880375-90eb-11e6-8da9-005056af50a8', '张上亮', '1', '86', '2017-01-09 16:27:29');
INSERT INTO `sales_ranking_qa` VALUES ('6e888f62-d644-11e6-8da9-005056af50a8', '6e81f19c-d644-11e6-8da9-005056af50a8', '7e0a0908-795a-11e6-8da9-005056af50a8', '李华', '1', '80', '2017-01-09 16:27:29');
INSERT INTO `sales_ranking_qa` VALUES ('6e889114-d644-11e6-8da9-005056af50a8', '6e81f19c-d644-11e6-8da9-005056af50a8', '7e0a1470-795a-11e6-8da9-005056af50a8', '吕明强', '1', '80', '2017-01-09 16:27:29');
INSERT INTO `sales_ranking_qa` VALUES ('6e88923f-d644-11e6-8da9-005056af50a8', '6e81f31f-d644-11e6-8da9-005056af50a8', '7e0a0908-795a-11e6-8da9-005056af50a8', '李华', '2', '75', '2017-01-09 16:27:29');
INSERT INTO `sales_ranking_qa` VALUES ('6e88939f-d644-11e6-8da9-005056af50a8', '6e81f31f-d644-11e6-8da9-005056af50a8', '7e0a1470-795a-11e6-8da9-005056af50a8', '吕明强', '3', '90', '2017-01-09 16:27:29');
INSERT INTO `sales_ranking_qa` VALUES ('6e8894eb-d644-11e6-8da9-005056af50a8', '6e81f31f-d644-11e6-8da9-005056af50a8', '7e0a0ccb-795a-11e6-8da9-005056af50a8', '万海涛', '1', '80', '2017-01-09 16:27:29');
INSERT INTO `sales_ranking_qa` VALUES ('6e8895da-d644-11e6-8da9-005056af50a8', '6e81f3de-d644-11e6-8da9-005056af50a8', '7e0a0ccb-795a-11e6-8da9-005056af50a8', '万海涛', '1', '80', '2017-01-09 16:27:29');
INSERT INTO `sales_ranking_qa` VALUES ('6e8be7e9-d644-11e6-8da9-005056af50a8', '6e85250c-d644-11e6-8da9-005056af50a8', '46880375-90eb-11e6-8da9-005056af50a8', '张上亮', '1', '86', '2017-01-09 16:27:29');
INSERT INTO `sales_ranking_qa` VALUES ('6e8beac4-d644-11e6-8da9-005056af50a8', '6e852806-d644-11e6-8da9-005056af50a8', '7e0a0ccb-795a-11e6-8da9-005056af50a8', '万海涛', '1', '80', '2017-01-09 16:27:29');
INSERT INTO `sales_ranking_qa` VALUES ('6e8beb7c-d644-11e6-8da9-005056af50a8', '6e852806-d644-11e6-8da9-005056af50a8', '7e0a1470-795a-11e6-8da9-005056af50a8', '吕明强', '4', '88', '2017-01-09 16:27:29');
INSERT INTO `sales_ranking_qa` VALUES ('6e8bec0a-d644-11e6-8da9-005056af50a8', '6e852806-d644-11e6-8da9-005056af50a8', '7e0a0908-795a-11e6-8da9-005056af50a8', '李华', '3', '77', '2017-01-09 16:27:29');
INSERT INTO `sales_ranking_qa` VALUES ('6e8becae-d644-11e6-8da9-005056af50a8', '6e85290e-d644-11e6-8da9-005056af50a8', '7e0a0ccb-795a-11e6-8da9-005056af50a8', '万海涛', '1', '80', '2017-01-09 16:27:29');

-- ----------------------------
-- Table structure for sales_ranking_type
-- ----------------------------
DROP TABLE IF EXISTS `sales_ranking_type`;
CREATE TABLE `sales_ranking_type` (
  `id` varchar(36) NOT NULL,
  `time` varchar(20) DEFAULT NULL,
  `dealer_id` varchar(36) DEFAULT NULL,
  `dealer_code` varchar(50) DEFAULT NULL,
  `dealer_name` varchar(100) DEFAULT NULL,
  `vehicle_model_id` varchar(36) DEFAULT NULL,
  `vehicle_model_code` varchar(100) DEFAULT NULL,
  `vehicle_model_name` varchar(200) DEFAULT NULL,
  `market_activity_id` varchar(36) DEFAULT NULL COMMENT 'QuestionType	问题类型\r\n            0	通用问题\r\n            1	个性问题\r\n            ',
  `market_activity_code` varchar(100) DEFAULT NULL,
  `market_activity_name` varchar(200) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sales_ranking_type
-- ----------------------------
INSERT INTO `sales_ranking_type` VALUES ('6e81ee41-d644-11e6-8da9-005056af50a8', '2016-9', '1baf77f3-7404-11e6-8da9-005056af50a8', 'JXS0001', '江苏省南京市东麟路展厅店', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', null, null, null, '2017-01-09 16:27:29');
INSERT INTO `sales_ranking_type` VALUES ('6e81f19c-d644-11e6-8da9-005056af50a8', '2016-9', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', '915176d1-968f-11e6-8da9-005056af50a8', 'CDX', '讴歌CDX', null, null, null, '2017-01-09 16:27:29');
INSERT INTO `sales_ranking_type` VALUES ('6e81f31f-d644-11e6-8da9-005056af50a8', '2016-9', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', null, null, null, '2017-01-09 16:27:29');
INSERT INTO `sales_ranking_type` VALUES ('6e81f3de-d644-11e6-8da9-005056af50a8', '2016-9', '1bafc3f2-7404-11e6-8da9-005056af50a8', 'JXS0034', '北京市金港店', 'a944ddbe-64f1-11e6-8da9-005056af50a8', null, '讴歌RDX', null, null, null, '2017-01-09 16:27:29');
INSERT INTO `sales_ranking_type` VALUES ('6e85250c-d644-11e6-8da9-005056af50a8', '2016-9', '1baf77f3-7404-11e6-8da9-005056af50a8', 'JXS0001', '江苏省南京市东麟路展厅店', null, null, '全车型', null, null, null, '2017-01-09 16:27:29');
INSERT INTO `sales_ranking_type` VALUES ('6e852806-d644-11e6-8da9-005056af50a8', '2016-9', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', null, null, '全车型', null, null, null, '2017-01-09 16:27:29');
INSERT INTO `sales_ranking_type` VALUES ('6e85290e-d644-11e6-8da9-005056af50a8', '2016-9', '1bafc3f2-7404-11e6-8da9-005056af50a8', 'JXS0034', '北京市金港店', null, null, '全车型', null, null, null, '2017-01-09 16:27:29');

-- ----------------------------
-- Table structure for sales_record
-- ----------------------------
DROP TABLE IF EXISTS `sales_record`;
CREATE TABLE `sales_record` (
  `id` varchar(36) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `market_activity_id` varchar(36) DEFAULT NULL,
  `market_activity_code` varchar(50) DEFAULT NULL,
  `market_activity_name` varchar(100) DEFAULT NULL,
  `customer_id` varchar(36) DEFAULT NULL,
  `customer_code` varchar(50) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_mobile` varchar(20) DEFAULT NULL,
  `customer_email` varchar(30) DEFAULT NULL,
  `buy_date` datetime DEFAULT NULL,
  `vehicle_model_id` varchar(36) DEFAULT NULL,
  `vehicle_model_code` varchar(50) DEFAULT NULL,
  `vehicle_model_name` varchar(100) DEFAULT NULL,
  `vin` varchar(36) DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `dealer_id` varchar(36) DEFAULT NULL,
  `dealer_code` varchar(50) DEFAULT NULL,
  `dealer_name` varchar(100) DEFAULT NULL,
  `sale_consultant_id` varchar(36) DEFAULT NULL,
  `sale_consultant_code` varchar(50) DEFAULT NULL,
  `sale_consultant_name` varchar(100) DEFAULT NULL,
  `vehicle_price` decimal(12,2) DEFAULT NULL,
  `brand_id` varchar(36) DEFAULT NULL,
  `brand_name` varchar(50) DEFAULT NULL,
  `manufacturer_id` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0去打赏 1已打赏 2未打赏',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sales_record
-- ----------------------------
INSERT INTO `sales_record` VALUES ('0b97e68b-05ef-40e0-a891-b2dc69bad456', 'RDX', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', '5216d669-342f-4659-b7c3-d37038e7b4a6', null, '张上亮', '15618962870', null, '2013-10-13 00:00:00', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '12345678901234cbs', '1', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', '46880375-90eb-11e6-8da9-005056af50a8', null, '孙清正', '125000.00', null, '讴歌', null, '2016-10-14 14:44:22', '1');
INSERT INTO `sales_record` VALUES ('1ef64924-a19d-425d-9b7b-90de58f15a50', null, 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', '5216d669-342f-4659-b7c3-d37038e7b4a6', null, '张上亮', '15618962870', null, '2016-10-17 00:00:00', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '12345678912345678', '0', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', '46880375-90eb-11e6-8da9-005056af50a8', null, '张上亮', null, null, null, null, '2016-10-17 16:09:55', '1');
INSERT INTO `sales_record` VALUES ('3630b217-50fd-49a6-b07c-79d0c5c44038', 'sunqingzhengdashabi', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', 'bff296e4-f8d0-4547-89c5-5df64bde53e8', null, '张上亮2', '15618962820', 'beppezhang2@163.com', '2016-10-19 00:00:00', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '12345678912345678', '0', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', '46880375-90eb-11e6-8da9-005056af50a8', '', '张上亮', '88888.00', 'e4b17f77-68e1-11e6-8f48-1c872c779071', '讴歌', 'e4b17f67-68e1-11e6-8f48-1c872c779071', '2016-10-19 12:53:43', '1');
INSERT INTO `sales_record` VALUES ('410eda75-7e74-41e9-a821-0bc6cb62ae66', 'eG8cE8Q48P', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', '54fe6a3d-4c79-476f-afc4-12d90687379e', null, '张上亮4', '15618962840', 'beppezhang4@163.com', '2016-09-24 00:00:00', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '11111111111111111', '1', '1baf77f3-7404-11e6-8da9-005056af50a8', 'JXS0001', '江苏省南京市东麟路展厅店', '46880375-90eb-11e6-8da9-005056af50a8', '', '张上亮', '5555555.00', 'e4b17f77-68e1-11e6-8f48-1c872c779071', '讴歌', 'e4b17f67-68e1-11e6-8f48-1c872c779071', '2016-10-24 14:47:51', '1');
INSERT INTO `sales_record` VALUES ('6020f59c-91d8-11e6-8da9-005056af50a8', 'RDX', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', '9e749a36-3326-482f-b1c9-46b1146cc4a1', null, 'sadfasd', '18521303357', null, '2016-09-20 00:00:00', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '111111', '1', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', '7e0a1470-795a-11e6-8da9-005056af50a8', '18521303357', '吕明强', '12345.00', null, null, null, '2016-10-14 14:44:22', '0');
INSERT INTO `sales_record` VALUES ('6020fd62-91d8-11e6-8da9-005056af50a8', 'RDX', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null, null, '张上亮', '15618962870', null, '2016-09-20 00:00:00', 'a944ddbe-64f1-11e6-8da9-005056af50a8', null, '讴歌RDX', '223344', '0', '1bafc3f2-7404-11e6-8da9-005056af50a8', 'JXS0034', '北京市金港店', '7e0a0ccb-795a-11e6-8da9-005056af50a8', '15618962870', '万海涛', '33366.00', null, null, null, '2016-10-14 14:44:22', '0');
INSERT INTO `sales_record` VALUES ('6021000d-91d8-11e6-8da9-005056af50a8', 'RDX', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null, null, '李华', '13764072031', null, '2016-09-29 00:00:00', 'a944ddbe-64f1-11e6-8da9-005056af50a8', null, '讴歌RDX', 'L1234567812345678', '1', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', '7e0a0908-795a-11e6-8da9-005056af50a8', '13764072031', '李华', '58000.00', null, null, null, '2016-10-14 14:44:22', '0');
INSERT INTO `sales_record` VALUES ('602103e2-91d8-11e6-8da9-005056af50a8', 'RDX', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null, null, '张上亮', '15618962870', null, '2016-09-20 00:00:00', 'a944ddbe-64f1-11e6-8da9-005056af50a8', null, '讴歌RDX', '1166334', '1', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', '7e0a0ccb-795a-11e6-8da9-005056af50a8', '15618962870', '万海涛', '234487.00', null, null, null, '2016-10-14 14:44:22', '0');
INSERT INTO `sales_record` VALUES ('602105b3-91d8-11e6-8da9-005056af50a8', 'RDX', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null, null, 'sadfasd', '18521303357', null, '2016-10-10 00:00:00', 'a944ddbe-64f1-11e6-8da9-005056af50a8', null, '讴歌RDX', '666666', '1', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', '7e0a1470-795a-11e6-8da9-005056af50a8', '18521303657', '吕明强', '6666.00', null, null, null, '2016-10-14 14:44:22', '1');
INSERT INTO `sales_record` VALUES ('60210969-91d8-11e6-8da9-005056af50a8', 'RDX', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null, null, '张上亮', '15618962870', null, '2011-08-03 00:00:00', 'a944ddbe-64f1-11e6-8da9-005056af50a8', null, '讴歌RDX', '1234567890abcdefg', '0', '1bafc3f2-7404-11e6-8da9-005056af50a8', 'JXS0034', '北京市金港店', '7e0a0ccb-795a-11e6-8da9-005056af50a8', '18521303357', '万海涛', '566.00', null, null, null, '2016-10-14 14:44:22', '1');
INSERT INTO `sales_record` VALUES ('60210b20-91d8-11e6-8da9-005056af50a8', 'RDX', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null, null, '郭鹏', '18516615079', null, '2006-09-25 00:00:00', 'a944ddbe-64f1-11e6-8da9-005056af50a8', null, '讴歌RDX', '5566444', '1', '1bafc3f2-7404-11e6-8da9-005056af50a8', 'JXS0034', '北京市金港店', '7e0a1470-795a-11e6-8da9-005056af50a8', '15618962870', '吕明强', '4455.00', null, null, null, '2016-10-14 14:44:22', '1');
INSERT INTO `sales_record` VALUES ('60210cd1-91d8-11e6-8da9-005056af50a8', 'RDX', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null, null, '李华', '13764072031', null, '2016-09-29 00:00:00', 'a944ddbe-64f1-11e6-8da9-005056af50a8', null, '讴歌RDX', 'l566', '0', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', '7e0a0908-795a-11e6-8da9-005056af50a8', '13764072031', '李华', '56523.00', null, null, null, '2016-10-14 14:44:22', '0');
INSERT INTO `sales_record` VALUES ('60210e7c-91d8-11e6-8da9-005056af50a8', 'RDX', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null, null, '张上亮', '15618962870', null, '2018-09-20 00:00:00', 'a944ddbe-64f1-11e6-8da9-005056af50a8', null, '讴歌RDX', '336633aadaase1111', '0', '1bafc3f2-7404-11e6-8da9-005056af50a8', 'JXS0034', '北京市金港店', '7e0a0ccb-795a-11e6-8da9-005056af50a8', '18521303357', '万海涛', '111111.00', null, null, null, '2016-10-14 14:44:22', '1');
INSERT INTO `sales_record` VALUES ('60211030-91d8-11e6-8da9-005056af50a8', 'RDX', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null, null, 'sadfasd', '18521303357', null, '2016-09-14 00:00:00', 'a944ddbe-64f1-11e6-8da9-005056af50a8', null, '讴歌RDX', '12346', '1', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', '7e0a1470-795a-11e6-8da9-005056af50a8', '15618962870', '吕明强', '3211.00', null, null, null, '2016-10-14 14:44:22', '0');
INSERT INTO `sales_record` VALUES ('602111db-91d8-11e6-8da9-005056af50a8', 'RDX', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null, null, '吕明强', '18717851518', null, '2016-09-20 00:00:00', 'a944ddbe-64f1-11e6-8da9-005056af50a8', null, '讴歌RDX', '556666', '1', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', '7e0a1470-795a-11e6-8da9-005056af50a8', '15618962870', '吕明强', '889.00', null, null, null, '2016-10-14 14:44:22', '0');
INSERT INTO `sales_record` VALUES ('60211386-91d8-11e6-8da9-005056af50a8', 'RDX', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null, null, 'sadfasd', '18521303357', null, '2012-09-20 00:00:00', 'a944ddbe-64f1-11e6-8da9-005056af50a8', null, '讴歌RDX', '11111222223333344', '0', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', '7e0a1470-795a-11e6-8da9-005056af50a8', '', '吕明强', '333.00', null, null, null, '2016-10-14 14:44:22', '1');
INSERT INTO `sales_record` VALUES ('60211523-91d8-11e6-8da9-005056af50a8', 'RDX', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null, null, 'sadfasd', '18521303357', null, '2015-08-20 00:00:00', 'a944ddbe-64f1-11e6-8da9-005056af50a8', null, '讴歌RDX', '12345678912345678', '1', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', '7e0a1470-795a-11e6-8da9-005056af50a8', '', '吕明强', '22221.00', null, null, null, '2016-10-14 14:44:22', '1');
INSERT INTO `sales_record` VALUES ('60211763-91d8-11e6-8da9-005056af50a8', 'RDX', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null, null, '张上亮', '15618962870', null, '2016-08-08 00:00:00', 'a944ddbe-64f1-11e6-8da9-005056af50a8', null, '讴歌RDX', '12345678912345670', '0', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', '7e0a0e48-795a-11e6-8da9-005056af50a8', '18521303357', '张上亮', '1212.00', null, null, null, '2016-10-14 14:44:22', '1');
INSERT INTO `sales_record` VALUES ('915176d1-968f-11e6-8da9-005056af50a8', 'lby', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null, null, 'lby', '18616509669', null, '2016-09-20 00:00:00', '915176d1-968f-11e6-8da9-005056af50a8', 'CDX', '讴歌CDX', '12345678912345678', '1', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', '7e0a0908-795a-11e6-8da9-005056af50a8', '13764072031', '李华', '56523.00', null, null, null, '2016-10-20 14:52:18', '0');
INSERT INTO `sales_record` VALUES ('987293fa-968f-11e6-8da9-005056af50a8', 'lby', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', null, null, '李华', '13764072031', null, '2016-09-20 00:00:00', '915176d1-968f-11e6-8da9-005056af50a8', 'CDX', '讴歌CDX', '12345678912345678', '1', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', '7e0a1470-795a-11e6-8da9-005056af50a8', '15618962870', '吕明强', '889.00', null, null, null, '2016-10-20 14:52:22', '0');
INSERT INTO `sales_record` VALUES ('b6a9b543-5f66-428d-8c49-731eee6c2b1b', 'sunqingzhengdashabi', 'd0c86ad8-d67a-489a-8a73-bd25af127aad', 'VGC-WH-01', '大众武汉促销活动一', '7f7ed37b-98c4-4ee4-ba57-ac0754b81c85', null, '张上亮1', '15618962870', 'beppezhang1@163.com', '2016-08-19 00:00:00', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '12345678912345600', '1', '1bafa240-7404-11e6-8da9-005056af50a8', 'JXS0018', '广东省广州市珠江新城店', '46880375-90eb-11e6-8da9-005056af50a8', '', '张上亮', '55555.00', 'e4b17f77-68e1-11e6-8f48-1c872c779071', '讴歌', 'e4b17f67-68e1-11e6-8f48-1c872c779071', '2016-10-19 11:56:13', '1');

-- ----------------------------
-- Table structure for test_drive_week
-- ----------------------------
DROP TABLE IF EXISTS `test_drive_week`;
CREATE TABLE `test_drive_week` (
  `id` varchar(36) NOT NULL,
  `week_start_time` datetime DEFAULT NULL COMMENT '格式 2016-10-20',
  `week_end_time` datetime DEFAULT NULL,
  `dealer_id` varchar(36) DEFAULT NULL,
  `dealer_code` varchar(50) DEFAULT NULL,
  `dealer_name` varchar(100) DEFAULT NULL,
  `market_activity_id` varchar(36) DEFAULT NULL COMMENT 'QuestionType	问题类型\r\n            0	通用问题\r\n            1	个性问题\r\n            ',
  `market_activity_code` varchar(100) DEFAULT NULL,
  `market_activity_name` varchar(200) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `vehicle_model_id` varchar(36) DEFAULT NULL,
  `vehicle_model_code` varchar(100) DEFAULT NULL,
  `vehicle_model_name` varchar(200) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='生成周报时，此表插入数据\r\n\r\n\r\n查询某个周报时，通过Vehicle_Model_Id关';

-- ----------------------------
-- Records of test_drive_week
-- ----------------------------
INSERT INTO `test_drive_week` VALUES ('1fa86da8-1542-4663-87eb-68cbcff35ec5', '2016-11-07 00:00:00', '2016-11-13 00:00:00', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', 'e4b17f1d-68e1-11e6-8f48-1c872c779071', 'M01', '讴歌促销活动一', '8', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '2016-11-09 17:27:45');
INSERT INTO `test_drive_week` VALUES ('24570b05-d701-11e6-8da9-005056af50a8', '2016-11-15 00:00:00', '2016-11-22 00:00:00', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', 'e4b17f1d-68e1-11e6-8f48-1c872c779071', 'M01', '讴歌促销活动一', '24', 'a15a189e-a0a3-11e6-8da9-005056af50a8', 'REX', '讴歌REX', '2017-01-10 14:58:19');
INSERT INTO `test_drive_week` VALUES ('5155f10f-d701-11e6-8da9-005056af50a8', '2016-11-15 00:00:00', '2016-11-22 00:00:00', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', 'e4b17f1d-68e1-11e6-8f48-1c872c779071', 'M01', '讴歌促销活动一', '10', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '2017-01-10 14:59:35');
INSERT INTO `test_drive_week` VALUES ('f39b4db9-9b87-4208-970c-bec36f4d09d9', '2016-11-07 00:00:00', '2016-11-13 00:00:00', '1baf88c0-7404-11e6-8da9-005056af50a8', 'JXS0006', '上海市五角场店', 'e4b17f1d-68e1-11e6-8f48-1c872c779071', 'M01', '讴歌促销活动一', '19', 'a944ddbe-64f1-11e6-8da9-005056af50a8', 'RDX', '讴歌RDX', '2016-11-09 17:27:45');
SET FOREIGN_KEY_CHECKS=1;
