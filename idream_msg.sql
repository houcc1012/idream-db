/*
Navicat MySQL Data Transfer

Source Server         : dev
Source Server Version : 50622
Source Host           : 192.168.37.13:3306
Source Database       : idream_msg

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2018-09-07 10:32:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user_request_record
-- ----------------------------
DROP TABLE IF EXISTS `user_request_record`;
CREATE TABLE `user_request_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(10) DEFAULT NULL COMMENT '用户编号',
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '请求ip',
  `device_type` tinyint(2) DEFAULT NULL COMMENT '设备类型:1-ios ;2-andriod; 3-微信小程序；4-web',
  `app_version` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'app版本号',
  `request_time` int(8) DEFAULT '0' COMMENT '请求时间 单位毫秒',
  `start_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '请求开始时间',
  `request_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '请求方法',
  `request_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '请求url',
  `request_param` mediumtext COLLATE utf8mb4_unicode_ci COMMENT '请求参数',
  `end_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '请求完成时间',
  `response_data` longtext COLLATE utf8mb4_unicode_ci,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '生成时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=418267 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户访问记录表';

-- ----------------------------
-- Table structure for wyim_group_msg_record
-- ----------------------------
DROP TABLE IF EXISTS `wyim_group_msg_record`;
CREATE TABLE `wyim_group_msg_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `from_account` varchar(64) NOT NULL COMMENT '发送用户accID',
  `send_client_type` varchar(10) DEFAULT NULL COMMENT '发送消息设备类型 AOS, IOS, PC, WINPHONE, WEB, REST',
  `send_device_code` varchar(64) DEFAULT NULL COMMENT '发送设备编码',
  `msg_type` varchar(15) DEFAULT NULL COMMENT '消息类型',
  `content` text COMMENT '消息内容',
  `attach` text COMMENT '附加消息',
  `send_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发送时间',
  `resend_flag` tinyint(1) DEFAULT NULL COMMENT '是否重发',
  `msg_id` varchar(30) DEFAULT NULL COMMENT '网易服务端消息ID',
  `to_group_id` varchar(50) DEFAULT NULL COMMENT '接收消息群ID',
  `ext` varchar(255) DEFAULT NULL COMMENT '消息扩展字段',
  `t_members` varchar(2048) DEFAULT NULL COMMENT '本次操作有关的用户ID',
  `create_time` datetime NOT NULL COMMENT '生成时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `msg_id` (`msg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='网易云群消息记录';

-- ----------------------------
-- Table structure for wyim_user_msg_record
-- ----------------------------
DROP TABLE IF EXISTS `wyim_user_msg_record`;
CREATE TABLE `wyim_user_msg_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `from_account` varchar(64) NOT NULL COMMENT '发送用户accID',
  `send_client_type` varchar(10) DEFAULT NULL COMMENT '发送消息设备类型 AOS, IOS, PC, WINPHONE, WEB, REST',
  `send_device_code` varchar(64) DEFAULT NULL COMMENT '发送设备编码',
  `msg_type` varchar(15) DEFAULT NULL COMMENT '消息类型',
  `content` text COMMENT '消息内容',
  `attach` text COMMENT '附加消息',
  `send_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发送时间',
  `resend_flag` tinyint(1) DEFAULT NULL COMMENT '是否重发',
  `msg_id` varchar(30) DEFAULT NULL COMMENT '网易服务端消息ID',
  `to_account` varchar(64) DEFAULT NULL COMMENT '接收消息用户账号',
  `ext` varchar(255) DEFAULT NULL COMMENT '消息扩展字段',
  `create_time` datetime NOT NULL COMMENT '生成时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `msg_id` (`msg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='网易云用户消息记录';
