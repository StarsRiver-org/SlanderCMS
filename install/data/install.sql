/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 100315
Source Host           : localhost:3306
Source Database       : slendercms_yyc

Target Server Type    : MYSQL
Target Server Version : 100315
File Encoding         : 65001

Date: 2019-06-14 19:44:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for slender_application
-- ----------------------------
DROP TABLE IF EXISTS `slender_application`;
CREATE TABLE `slender_application` (
  `apid` int(11) NOT NULL,
  `appname` varchar(255) DEFAULT NULL,
  `appurl` varchar(255) DEFAULT NULL,
  `appdescrip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`apid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slender_application
-- ----------------------------

-- ----------------------------
-- Table structure for slender_chunk
-- ----------------------------
DROP TABLE IF EXISTS `slender_chunk`;
CREATE TABLE `slender_chunk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(5) NOT NULL DEFAULT '0',
  `chunk_name` varchar(255) DEFAULT NULL COMMENT '幻灯片',
  `chunk_lv` int(8) DEFAULT NULL,
  `chunk_below` varchar(255) DEFAULT NULL,
  `banner` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slender_chunk
-- ----------------------------

-- ----------------------------
-- Table structure for slender_comments
-- ----------------------------
DROP TABLE IF EXISTS `slender_comments`;
CREATE TABLE `slender_comments` (
  `rid` int(32) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `time` int(12) DEFAULT NULL,
  `rptid` int(16) DEFAULT NULL,
  `rprid` int(32) DEFAULT NULL,
  `rpuid` int(11) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `assistids` longtext DEFAULT NULL,
  `treadsids` longtext DEFAULT NULL,
  `likedids` longtext DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slender_comments
-- ----------------------------

-- ----------------------------
-- Table structure for slender_config
-- ----------------------------
DROP TABLE IF EXISTS `slender_config`;
CREATE TABLE `slender_config` (
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `data` varchar(4096) DEFAULT NULL,
  `df` varchar(4096) DEFAULT NULL,
  `descrip` varchar(255) DEFAULT NULL,
  `updatetime` int(12) DEFAULT NULL,
  `issolid` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slender_config
-- ----------------------------
INSERT INTO `slender_config` VALUES ('Info', 'webkey', '0', '5f5a0ecbb31ef7860c8d8aec79a23777', null, '接口密匙，外部程序访问本机接口时的对接口令。', null, '1');
INSERT INTO `slender_config` VALUES ('Info', 'open', '1', 'on', 'on', '设置为 off 时，只有管理员可以访问网站', null, null);
INSERT INTO `slender_config` VALUES ('info', 'getAddr', '2', 'on', 'on', '通过系统来获取用户IP地理信息（可以提高准确性，但会影响网站性能.需要网站能够请求淘宝接口）', null, null);
INSERT INTO `slender_config` VALUES ('Info', 'campus', '4', '{&quot;1&quot;:&quot;明向&quot;,&quot;2&quot;:&quot;迎西&quot;,&quot;3&quot;:&quot;虎峪&quot;}', '{&quot;1&quot;:&quot;明向校区&quot;,&quot;2&quot;:&quot;迎西校区&quot;,&quot;3&quot;:&quot;虎峪校区&quot;}', '校区', null, null);
INSERT INTO `slender_config` VALUES ('Info', 'party', '5', '{&quot;1&quot;:&quot;运营部（办公室）&quot;,&quot;2&quot;:&quot;卡乐坊&quot;,&quot;3&quot;:&quot;新闻中心&quot;,&quot;4&quot;:&quot;清泽微视&quot;,&quot;5&quot;:&quot;综合媒体&quot;,&quot;6&quot;:&quot;公关策划部&quot;,&quot;7&quot;:&quot;UED[体验设计]&quot;,&quot;8&quot;:&quot;蓝之青[网络安全]&quot;}', '{&quot;1&quot;:&quot;运营部&quot;,&quot;2&quot;:&quot;卡乐坊&quot;,&quot;3&quot;:&quot;新闻中心&quot;,&quot;4&quot;:&quot;清泽微视&quot;,&quot;5&quot;:&quot;综合媒体&quot;,&quot;6&quot;:&quot;公关策划部&quot;,&quot;7&quot;:&quot;UED[体验设计]&quot;,&quot;8&quot;:&quot;蓝之青[网络安全]&quot;}', '部门类型', null, null);
INSERT INTO `slender_config` VALUES ('SmsService', 'ServiceStat', '5', 'off', 'off', '是否开启短信接口', null, null);
INSERT INTO `slender_config` VALUES ('SmsService', 'AccessKeyId', '6', '', null, '阿里云账户AK', null, null);
INSERT INTO `slender_config` VALUES ('SmsService', 'AccessKeySecret', '7', '', null, '阿里云账户AKS', null, null);
INSERT INTO `slender_config` VALUES ('SmsService', 'AccessSignName', '8', '', null, '阿里云短信签名名称', null, null);
INSERT INTO `slender_config` VALUES ('SmsService', 'SmsTemplateCode', '9', '', 'SMS_139239203', '阿里云短信模板编号', null, null);
INSERT INTO `slender_config` VALUES ('SmsService', 'SmsDomain', '10', 'dysmsapi.aliyuncs.com', 'dysmsapi.aliyuncs.com', '短信服务域名（默认：dysmsapi.aliyuncs.com）', null, null);
INSERT INTO `slender_config` VALUES ('SmsService', 'SmsProduct', '12', 'Dysmsapi', 'Dysmsapi', '短信服务产品名称（默认：Dysmsapi）', null, null);
INSERT INTO `slender_config` VALUES ('SmsService', 'SmsRegion', '13', 'cn-hangzhou', 'cn-hangzhou', '短信服务区号（默认：cn-hangzhou）', null, null);
INSERT INTO `slender_config` VALUES ('SmsService', 'SmsEndpoint1', '14', 'cn-hangzhou', 'cn-hangzhou', '短信服务节点1（默认：cn-hangzhou）', null, null);
INSERT INTO `slender_config` VALUES ('SmsService', 'SmsEndpoint2', '15', 'cn-hangzhou', 'cn-hangzhou', '短信服务节点2（默认：cn-hangzhou）', null, null);
INSERT INTO `slender_config` VALUES ('Pm', 'df_admin', '16', '{&quot;site_visite&quot;:{&quot;value&quot;:true,&quot;token&quot;:&quot;site_visite&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;访问网站&quot;,&quot;sort&quot;:&quot;user&quot;,&quot;solid&quot;:true},&quot;thread_visite&quot;:{&quot;value&quot;:true,&quot;token&quot;:&quot;thread_visite&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;查看文章&quot;,&quot;sort&quot;:&quot;user&quot;,&quot;solid&quot;:true},&quot;thread_subscrib&quot;:{&quot;value&quot;:true,&quot;token&quot;:&quot;thread_subscrib&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;评论文章&quot;,&quot;sort&quot;:&quot;user&quot;,&quot;solid&quot;:true},&quot;user_subscrip&quot;:{&quot;value&quot;:true,&quot;token&quot;:&quot;user_subscrip&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;评论用户评论&quot;,&quot;sort&quot;:&quot;user&quot;,&quot;solid&quot;:true},&quot;thread_mag&quot;:{&quot;value&quot;:true,&quot;token&quot;:&quot;thread_mag&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;增改文章&quot;,&quot;sort&quot;:&quot;admin&quot;,&quot;solid&quot;:true},&quot;user_mag&quot;:{&quot;value&quot;:&quot;1&quot;,&quot;token&quot;:&quot;user_mag&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;管理用户&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;chunk_mag&quot;:{&quot;value&quot;:false,&quot;token&quot;:&quot;chunk_mag&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;板块管理&quot;,&quot;sort&quot;:&quot;admin&quot;,&quot;solid&quot;:true},&quot;nav_mag&quot;:{&quot;value&quot;:false,&quot;token&quot;:&quot;nav_mag&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;修改导航&quot;,&quot;sort&quot;:&quot;admin&quot;,&quot;solid&quot;:true},&quot;sms_use&quot;:{&quot;value&quot;:&quot;&quot;,&quot;token&quot;:&quot;sms_use&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;发送短信&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;enroll_use&quot;:{&quot;value&quot;:&quot;&quot;,&quot;token&quot;:&quot;enroll_use&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;使用报名系统&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;config_mag&quot;:{&quot;value&quot;:false,&quot;token&quot;:&quot;config_mag&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;修改网站配置&quot;,&quot;sort&quot;:&quot;admin&quot;,&quot;solid&quot;:true},&quot;chunk_ct_mag&quot;:{&quot;value&quot;:&quot;&quot;,&quot;token&quot;:&quot;chunk_ct_mag&quot;,&quot;type&quot;:&quot;char&quot;,&quot;name&quot;:&quot;管理板块内容&quot;,&quot;sort&quot;:&quot;admin&quot;,&quot;solid&quot;:true}}', '{&quot;site_visite&quot;:{&quot;value&quot;:true,&quot;token&quot;:&quot;site_visite&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;访问网站&quot;,&quot;sort&quot;:&quot;user&quot;,&quot;solid&quot;:true},&quot;thread_visite&quot;:{&quot;value&quot;:true,&quot;token&quot;:&quot;thread_visite&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;查看文章&quot;,&quot;sort&quot;:&quot;user&quot;,&quot;solid&quot;:true},&quot;thread_subscrib&quot;:{&quot;value&quot;:true,&quot;token&quot;:&quot;thread_subscrib&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;评论文章&quot;,&quot;sort&quot;:&quot;user&quot;,&quot;solid&quot;:true},&quot;user_subscrip&quot;:{&quot;value&quot;:true,&quot;token&quot;:&quot;user_subscrip&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;评论用户评论&quot;,&quot;sort&quot;:&quot;user&quot;,&quot;solid&quot;:true},&quot;thread_mag&quot;:{&quot;value&quot;:true,&quot;token&quot;:&quot;thread_mag&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;增改文章&quot;,&quot;sort&quot;:&quot;admin&quot;,&quot;solid&quot;:true},&quot;user_mag&quot;:{&quot;value&quot;:&quot;1&quot;,&quot;token&quot;:&quot;user_mag&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;管理用户&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;chunk_mag&quot;:{&quot;value&quot;:false,&quot;token&quot;:&quot;chunk_mag&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;板块管理&quot;,&quot;sort&quot;:&quot;admin&quot;,&quot;solid&quot;:true},&quot;nav_mag&quot;:{&quot;value&quot;:false,&quot;token&quot;:&quot;nav_mag&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;修改导航&quot;,&quot;sort&quot;:&quot;admin&quot;,&quot;solid&quot;:true},&quot;sms_use&quot;:{&quot;value&quot;:&quot;&quot;,&quot;token&quot;:&quot;sms_use&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;发送短信&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;enroll_use&quot;:{&quot;value&quot;:&quot;&quot;,&quot;token&quot;:&quot;enroll_use&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;使用报名系统&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;config_mag&quot;:{&quot;value&quot;:false,&quot;token&quot;:&quot;config_mag&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;修改网站配置&quot;,&quot;sort&quot;:&quot;admin&quot;,&quot;solid&quot;:true},&quot;chunk_ct_mag&quot;:{&quot;value&quot;:&quot;&quot;,&quot;token&quot;:&quot;chunk_ct_mag&quot;,&quot;type&quot;:&quot;char&quot;,&quot;name&quot;:&quot;管理板块内容&quot;,&quot;sort&quot;:&quot;admin&quot;,&quot;solid&quot;:true}}', '默认管理员权限', null, '1');
INSERT INTO `slender_config` VALUES ('Pm', 'df_editor', '17', '{&quot;site_visite&quot;:{&quot;token&quot;:&quot;site_visite&quot;,&quot;name&quot;:&quot;访问网站&quot;,&quot;value&quot;:true,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;user&quot;},&quot;thread_visite&quot;:{&quot;token&quot;:&quot;thread_visite&quot;,&quot;name&quot;:&quot;查看文章&quot;,&quot;value&quot;:true,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;user&quot;},&quot;thread_subscrib&quot;:{&quot;token&quot;:&quot;thread_subscrib&quot;,&quot;name&quot;:&quot;评论文章&quot;,&quot;value&quot;:true,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;user&quot;},&quot;user_subscrip&quot;:{&quot;token&quot;:&quot;user_subscrip&quot;,&quot;name&quot;:&quot;评论用户评论&quot;,&quot;value&quot;:true,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;user&quot;},&quot;thread_mag&quot;:{&quot;token&quot;:&quot;thread_mag&quot;,&quot;name&quot;:&quot;增改文章&quot;,&quot;value&quot;:&quot;1&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;user_mag&quot;:{&quot;token&quot;:&quot;user_mag&quot;,&quot;name&quot;:&quot;管理用户&quot;,&quot;value&quot;:false,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;chunk_mag&quot;:{&quot;token&quot;:&quot;chunk_mag&quot;,&quot;name&quot;:&quot;板块管理&quot;,&quot;value&quot;:false,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;nav_mag&quot;:{&quot;token&quot;:&quot;nav_mag&quot;,&quot;name&quot;:&quot;修改导航&quot;,&quot;value&quot;:false,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;sms_use&quot;:{&quot;token&quot;:&quot;sms_use&quot;,&quot;name&quot;:&quot;发送短信&quot;,&quot;value&quot;:false,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;enroll_use&quot;:{&quot;token&quot;:&quot;enroll_use&quot;,&quot;name&quot;:&quot;使用报名系统&quot;,&quot;value&quot;:false,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;config_mag&quot;:{&quot;token&quot;:&quot;config_mag&quot;,&quot;name&quot;:&quot;修改网站配置&quot;,&quot;value&quot;:false,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;chunk_ct_mag&quot;:{&quot;token&quot;:&quot;chunk_ct_mag&quot;,&quot;name&quot;:&quot;管理板块内容&quot;,&quot;value&quot;:&quot;&quot;,&quot;type&quot;:&quot;char&quot;,&quot;sort&quot;:&quot;admin&quot;}}', '{&quot;site_visite&quot;:{&quot;token&quot;:&quot;site_visite&quot;,&quot;name&quot;:&quot;访问网站&quot;,&quot;value&quot;:true,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;user&quot;},&quot;thread_visite&quot;:{&quot;token&quot;:&quot;thread_visite&quot;,&quot;name&quot;:&quot;查看文章&quot;,&quot;value&quot;:true,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;user&quot;},&quot;thread_subscrib&quot;:{&quot;token&quot;:&quot;thread_subscrib&quot;,&quot;name&quot;:&quot;评论文章&quot;,&quot;value&quot;:true,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;user&quot;},&quot;user_subscrip&quot;:{&quot;token&quot;:&quot;user_subscrip&quot;,&quot;name&quot;:&quot;评论用户评论&quot;,&quot;value&quot;:true,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;user&quot;},&quot;thread_mag&quot;:{&quot;token&quot;:&quot;thread_mag&quot;,&quot;name&quot;:&quot;增改文章&quot;,&quot;value&quot;:&quot;1&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;user_mag&quot;:{&quot;token&quot;:&quot;user_mag&quot;,&quot;name&quot;:&quot;管理用户&quot;,&quot;value&quot;:false,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;chunk_mag&quot;:{&quot;token&quot;:&quot;chunk_mag&quot;,&quot;name&quot;:&quot;板块管理&quot;,&quot;value&quot;:false,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;nav_mag&quot;:{&quot;token&quot;:&quot;nav_mag&quot;,&quot;name&quot;:&quot;修改导航&quot;,&quot;value&quot;:false,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;sms_use&quot;:{&quot;token&quot;:&quot;sms_use&quot;,&quot;name&quot;:&quot;发送短信&quot;,&quot;value&quot;:false,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;enroll_use&quot;:{&quot;token&quot;:&quot;enroll_use&quot;,&quot;name&quot;:&quot;使用报名系统&quot;,&quot;value&quot;:false,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;config_mag&quot;:{&quot;token&quot;:&quot;config_mag&quot;,&quot;name&quot;:&quot;修改网站配置&quot;,&quot;value&quot;:false,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;chunk_ct_mag&quot;:{&quot;token&quot;:&quot;chunk_ct_mag&quot;,&quot;name&quot;:&quot;管理板块内容&quot;,&quot;value&quot;:&quot;&quot;,&quot;type&quot;:&quot;char&quot;,&quot;sort&quot;:&quot;admin&quot;}}', '默认编辑员权限', null, '1');
INSERT INTO `slender_config` VALUES ('Pm', 'df_all', '18', '{&quot;site_visite&quot;:{&quot;value&quot;:true,&quot;token&quot;:&quot;site_visite&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;访问网站&quot;,&quot;sort&quot;:&quot;user&quot;,&quot;solid&quot;:true},&quot;thread_visite&quot;:{&quot;value&quot;:true,&quot;token&quot;:&quot;thread_visite&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;查看文章&quot;,&quot;sort&quot;:&quot;user&quot;,&quot;solid&quot;:true},&quot;thread_subscrib&quot;:{&quot;value&quot;:true,&quot;token&quot;:&quot;thread_subscrib&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;评论文章&quot;,&quot;sort&quot;:&quot;user&quot;,&quot;solid&quot;:true},&quot;user_subscrip&quot;:{&quot;value&quot;:true,&quot;token&quot;:&quot;user_subscrip&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;评论用户评论&quot;,&quot;sort&quot;:&quot;user&quot;,&quot;solid&quot;:true},&quot;thread_mag&quot;:{&quot;value&quot;:true,&quot;token&quot;:&quot;thread_mag&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;增改文章&quot;,&quot;sort&quot;:&quot;admin&quot;,&quot;solid&quot;:true},&quot;user_mag&quot;:{&quot;value&quot;:true,&quot;token&quot;:&quot;user_mag&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;管理用户&quot;,&quot;sort&quot;:&quot;admin&quot;,&quot;solid&quot;:true},&quot;chunk_mag&quot;:{&quot;value&quot;:&quot;1&quot;,&quot;token&quot;:&quot;chunk_mag&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;板块管理&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;nav_mag&quot;:{&quot;value&quot;:&quot;1&quot;,&quot;token&quot;:&quot;nav_mag&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;修改导航&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;sms_use&quot;:{&quot;value&quot;:&quot;&quot;,&quot;token&quot;:&quot;sms_use&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;发送短信&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;enroll_use&quot;:{&quot;value&quot;:&quot;&quot;,&quot;token&quot;:&quot;enroll_use&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;使用报名系统&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;config_mag&quot;:{&quot;value&quot;:&quot;&quot;,&quot;token&quot;:&quot;config_mag&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;修改网站配置&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;chunk_ct_mag&quot;:{&quot;value&quot;:&quot;&quot;,&quot;token&quot;:&quot;chunk_ct_mag&quot;,&quot;type&quot;:&quot;char&quot;,&quot;name&quot;:&quot;管理板块内容&quot;,&quot;sort&quot;:&quot;admin&quot;,&quot;solid&quot;:true}}', '{&quot;site_visite&quot;:{&quot;value&quot;:true,&quot;token&quot;:&quot;site_visite&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;访问网站&quot;,&quot;sort&quot;:&quot;user&quot;,&quot;solid&quot;:true},&quot;thread_visite&quot;:{&quot;value&quot;:true,&quot;token&quot;:&quot;thread_visite&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;查看文章&quot;,&quot;sort&quot;:&quot;user&quot;,&quot;solid&quot;:true},&quot;thread_subscrib&quot;:{&quot;value&quot;:true,&quot;token&quot;:&quot;thread_subscrib&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;评论文章&quot;,&quot;sort&quot;:&quot;user&quot;,&quot;solid&quot;:true},&quot;user_subscrip&quot;:{&quot;value&quot;:true,&quot;token&quot;:&quot;user_subscrip&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;评论用户评论&quot;,&quot;sort&quot;:&quot;user&quot;,&quot;solid&quot;:true},&quot;thread_mag&quot;:{&quot;value&quot;:true,&quot;token&quot;:&quot;thread_mag&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;增改文章&quot;,&quot;sort&quot;:&quot;admin&quot;,&quot;solid&quot;:true},&quot;user_mag&quot;:{&quot;value&quot;:true,&quot;token&quot;:&quot;user_mag&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;管理用户&quot;,&quot;sort&quot;:&quot;admin&quot;,&quot;solid&quot;:true},&quot;chunk_mag&quot;:{&quot;value&quot;:&quot;1&quot;,&quot;token&quot;:&quot;chunk_mag&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;板块管理&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;nav_mag&quot;:{&quot;value&quot;:&quot;1&quot;,&quot;token&quot;:&quot;nav_mag&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;修改导航&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;sms_use&quot;:{&quot;value&quot;:&quot;&quot;,&quot;token&quot;:&quot;sms_use&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;发送短信&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;enroll_use&quot;:{&quot;value&quot;:&quot;&quot;,&quot;token&quot;:&quot;enroll_use&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;使用报名系统&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;config_mag&quot;:{&quot;value&quot;:&quot;&quot;,&quot;token&quot;:&quot;config_mag&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;name&quot;:&quot;修改网站配置&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;chunk_ct_mag&quot;:{&quot;value&quot;:&quot;&quot;,&quot;token&quot;:&quot;chunk_ct_mag&quot;,&quot;type&quot;:&quot;char&quot;,&quot;name&quot;:&quot;管理板块内容&quot;,&quot;sort&quot;:&quot;admin&quot;,&quot;solid&quot;:true}}', '默认站长权限', null, '1');
INSERT INTO `slender_config` VALUES ('Pm', 'df_user', '19', '{&quot;site_visite&quot;:{&quot;token&quot;:&quot;site_visite&quot;,&quot;name&quot;:&quot;访问网站&quot;,&quot;value&quot;:&quot;1&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;sort&quot;:&quot;user&quot;},&quot;thread_visite&quot;:{&quot;token&quot;:&quot;thread_visite&quot;,&quot;name&quot;:&quot;查看文章&quot;,&quot;value&quot;:&quot;1&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;sort&quot;:&quot;user&quot;},&quot;thread_subscrib&quot;:{&quot;token&quot;:&quot;thread_subscrib&quot;,&quot;name&quot;:&quot;评论文章&quot;,&quot;value&quot;:&quot;1&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;sort&quot;:&quot;user&quot;},&quot;user_subscrip&quot;:{&quot;token&quot;:&quot;user_subscrip&quot;,&quot;name&quot;:&quot;评论用户评论&quot;,&quot;value&quot;:&quot;1&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;sort&quot;:&quot;user&quot;},&quot;thread_mag&quot;:{&quot;token&quot;:&quot;thread_mag&quot;,&quot;name&quot;:&quot;增改文章&quot;,&quot;value&quot;:false,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;user_mag&quot;:{&quot;token&quot;:&quot;user_mag&quot;,&quot;name&quot;:&quot;管理用户&quot;,&quot;value&quot;:false,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;chunk_mag&quot;:{&quot;token&quot;:&quot;chunk_mag&quot;,&quot;name&quot;:&quot;板块管理&quot;,&quot;value&quot;:false,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;nav_mag&quot;:{&quot;token&quot;:&quot;nav_mag&quot;,&quot;name&quot;:&quot;修改导航&quot;,&quot;value&quot;:false,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;sms_use&quot;:{&quot;token&quot;:&quot;sms_use&quot;,&quot;name&quot;:&quot;发送短信&quot;,&quot;value&quot;:false,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;enroll_use&quot;:{&quot;token&quot;:&quot;enroll_use&quot;,&quot;name&quot;:&quot;使用报名系统&quot;,&quot;value&quot;:false,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;config_mag&quot;:{&quot;token&quot;:&quot;config_mag&quot;,&quot;name&quot;:&quot;修改网站配置&quot;,&quot;value&quot;:false,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;chunk_ct_mag&quot;:{&quot;token&quot;:&quot;chunk_ct_mag&quot;,&quot;name&quot;:&quot;管理板块内容&quot;,&quot;value&quot;:&quot;&quot;,&quot;type&quot;:&quot;char&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;}}', '{&quot;site_visite&quot;:{&quot;token&quot;:&quot;site_visite&quot;,&quot;name&quot;:&quot;访问网站&quot;,&quot;value&quot;:&quot;1&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;sort&quot;:&quot;user&quot;},&quot;thread_visite&quot;:{&quot;token&quot;:&quot;thread_visite&quot;,&quot;name&quot;:&quot;查看文章&quot;,&quot;value&quot;:&quot;1&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;sort&quot;:&quot;user&quot;},&quot;thread_subscrib&quot;:{&quot;token&quot;:&quot;thread_subscrib&quot;,&quot;name&quot;:&quot;评论文章&quot;,&quot;value&quot;:&quot;1&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;sort&quot;:&quot;user&quot;},&quot;user_subscrip&quot;:{&quot;token&quot;:&quot;user_subscrip&quot;,&quot;name&quot;:&quot;评论用户评论&quot;,&quot;value&quot;:&quot;1&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;sort&quot;:&quot;user&quot;},&quot;thread_mag&quot;:{&quot;token&quot;:&quot;thread_mag&quot;,&quot;name&quot;:&quot;增改文章&quot;,&quot;value&quot;:false,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;user_mag&quot;:{&quot;token&quot;:&quot;user_mag&quot;,&quot;name&quot;:&quot;管理用户&quot;,&quot;value&quot;:false,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;chunk_mag&quot;:{&quot;token&quot;:&quot;chunk_mag&quot;,&quot;name&quot;:&quot;板块管理&quot;,&quot;value&quot;:false,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;nav_mag&quot;:{&quot;token&quot;:&quot;nav_mag&quot;,&quot;name&quot;:&quot;修改导航&quot;,&quot;value&quot;:false,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;sms_use&quot;:{&quot;token&quot;:&quot;sms_use&quot;,&quot;name&quot;:&quot;发送短信&quot;,&quot;value&quot;:false,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;enroll_use&quot;:{&quot;token&quot;:&quot;enroll_use&quot;,&quot;name&quot;:&quot;使用报名系统&quot;,&quot;value&quot;:false,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;config_mag&quot;:{&quot;token&quot;:&quot;config_mag&quot;,&quot;name&quot;:&quot;修改网站配置&quot;,&quot;value&quot;:false,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;chunk_ct_mag&quot;:{&quot;token&quot;:&quot;chunk_ct_mag&quot;,&quot;name&quot;:&quot;管理板块内容&quot;,&quot;value&quot;:&quot;&quot;,&quot;type&quot;:&quot;char&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;}}', '默认普通用户权限', null, '1');
INSERT INTO `slender_config` VALUES ('Enroll', 'startdate', '20', '19000101', '19000101', '面试开始时间 / 2016年2月13日 写作 20160213 ', null, null);
INSERT INTO `slender_config` VALUES ('Enroll', 'enddate', '21', '19000101', '19000101', '面试结束时间 / 2016年2月13日 写作 20160213 ', null, null);
INSERT INTO `slender_config` VALUES ('info', 'autologin', '3', 'off', 'off', '开启/关闭网站的自动登陆功能', null, null);
INSERT INTO `slender_config` VALUES ('info', 'mobiletpl', '1', 'on', 'off', '开启移动端模板的使用', null, null);
INSERT INTO `slender_config` VALUES ('info', 'visitlimit', '0', '2', '2', '访问频率限制，设置为零则不限制。（设置为3，表示允许普通用户最短三秒打开一次访问网页）', null, null);
INSERT INTO `slender_config` VALUES ('info', 'mainsearch', '0', 'on', 'off', '搜索功能开关', null, null);
INSERT INTO `slender_config` VALUES ('Info', 'webname', '0', 'SlenderCMS', 'SlenderCMS', '网站名称', null, '1');

-- ----------------------------
-- Table structure for slender_group
-- ----------------------------
DROP TABLE IF EXISTS `slender_group`;
CREATE TABLE `slender_group` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `unreg` int(1) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `party` int(1) DEFAULT NULL,
  `promise` int(1) DEFAULT NULL,
  `pml` varchar(4096) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `regtime` varchar(64) DEFAULT NULL,
  `lastlogin` varchar(64) DEFAULT NULL,
  `lastip` varchar(64) DEFAULT NULL,
  `phone` varchar(18) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `session` tinytext DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slender_group
-- ----------------------------
INSERT INTO `slender_group` VALUES ('1', null, 'zhangyu', null, '999', '{&quot;site_visite&quot;:{&quot;token&quot;:&quot;site_visite&quot;,&quot;name&quot;:&quot;访问网站&quot;,&quot;value&quot;:true,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;user&quot;},&quot;thread_visite&quot;:{&quot;token&quot;:&quot;thread_visite&quot;,&quot;name&quot;:&quot;查看文章&quot;,&quot;value&quot;:true,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;user&quot;},&quot;thread_subscrib&quot;:{&quot;token&quot;:&quot;thread_subscrib&quot;,&quot;name&quot;:&quot;评论文章&quot;,&quot;value&quot;:true,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;user&quot;},&quot;user_subscrip&quot;:{&quot;token&quot;:&quot;user_subscrip&quot;,&quot;name&quot;:&quot;评论用户评论&quot;,&quot;value&quot;:true,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;user&quot;},&quot;thread_mag&quot;:{&quot;token&quot;:&quot;thread_mag&quot;,&quot;name&quot;:&quot;增改文章&quot;,&quot;value&quot;:true,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;user_mag&quot;:{&quot;token&quot;:&quot;user_mag&quot;,&quot;name&quot;:&quot;管理用户&quot;,&quot;value&quot;:true,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;chunk_mag&quot;:{&quot;token&quot;:&quot;chunk_mag&quot;,&quot;name&quot;:&quot;板块管理&quot;,&quot;value&quot;:&quot;1&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;nav_mag&quot;:{&quot;token&quot;:&quot;nav_mag&quot;,&quot;name&quot;:&quot;修改导航&quot;,&quot;value&quot;:&quot;1&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;sms_use&quot;:{&quot;token&quot;:&quot;sms_use&quot;,&quot;name&quot;:&quot;发送短信&quot;,&quot;value&quot;:&quot;1&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;enroll_use&quot;:{&quot;token&quot;:&quot;enroll_use&quot;,&quot;name&quot;:&quot;使用报名系统&quot;,&quot;value&quot;:&quot;1&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;config_mag&quot;:{&quot;token&quot;:&quot;config_mag&quot;,&quot;name&quot;:&quot;修改网站配置&quot;,&quot;value&quot;:&quot;1&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;chunk_ct_mag&quot;:{&quot;token&quot;:&quot;chunk_ct_mag&quot;,&quot;name&quot;:&quot;管理板块内容&quot;,&quot;value&quot;:&quot;&quot;,&quot;type&quot;:&quot;char&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;}}', 'L1l8HkydB1girGd', '8fb87e0c31f5c090b9b106e3a255e879', '201707141126', '201801271928', '127.0.0.1', '18534459162', '2692284716@qq.com', 'superadmin', null);
INSERT INTO `slender_group` VALUES ('2', null, 'admin', null, '999', '{&quot;site_visite&quot;:{&quot;token&quot;:&quot;site_visite&quot;,&quot;name&quot;:&quot;访问网站&quot;,&quot;value&quot;:true,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;user&quot;},&quot;thread_visite&quot;:{&quot;token&quot;:&quot;thread_visite&quot;,&quot;name&quot;:&quot;查看文章&quot;,&quot;value&quot;:true,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;user&quot;},&quot;thread_subscrib&quot;:{&quot;token&quot;:&quot;thread_subscrib&quot;,&quot;name&quot;:&quot;评论文章&quot;,&quot;value&quot;:true,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;user&quot;},&quot;user_subscrip&quot;:{&quot;token&quot;:&quot;user_subscrip&quot;,&quot;name&quot;:&quot;评论用户评论&quot;,&quot;value&quot;:true,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;user&quot;},&quot;thread_mag&quot;:{&quot;token&quot;:&quot;thread_mag&quot;,&quot;name&quot;:&quot;增改文章&quot;,&quot;value&quot;:true,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;user_mag&quot;:{&quot;token&quot;:&quot;user_mag&quot;,&quot;name&quot;:&quot;管理用户&quot;,&quot;value&quot;:true,&quot;type&quot;:&quot;boolean&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;},&quot;chunk_mag&quot;:{&quot;token&quot;:&quot;chunk_mag&quot;,&quot;name&quot;:&quot;板块管理&quot;,&quot;value&quot;:&quot;1&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;nav_mag&quot;:{&quot;token&quot;:&quot;nav_mag&quot;,&quot;name&quot;:&quot;修改导航&quot;,&quot;value&quot;:&quot;1&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;sms_use&quot;:{&quot;token&quot;:&quot;sms_use&quot;,&quot;name&quot;:&quot;发送短信&quot;,&quot;value&quot;:&quot;1&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;enroll_use&quot;:{&quot;token&quot;:&quot;enroll_use&quot;,&quot;name&quot;:&quot;使用报名系统&quot;,&quot;value&quot;:&quot;1&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;config_mag&quot;:{&quot;token&quot;:&quot;config_mag&quot;,&quot;name&quot;:&quot;修改网站配置&quot;,&quot;value&quot;:&quot;1&quot;,&quot;type&quot;:&quot;boolean&quot;,&quot;sort&quot;:&quot;admin&quot;},&quot;chunk_ct_mag&quot;:{&quot;token&quot;:&quot;chunk_ct_mag&quot;,&quot;name&quot;:&quot;管理板块内容&quot;,&quot;value&quot;:&quot;&quot;,&quot;type&quot;:&quot;char&quot;,&quot;solid&quot;:true,&quot;sort&quot;:&quot;admin&quot;}}', '', '', '200000000000', '', '127.0.0.1', '', '', '', null);

-- ----------------------------
-- Table structure for slender_log
-- ----------------------------
DROP TABLE IF EXISTS `slender_log`;
CREATE TABLE `slender_log` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(14) DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `country` varchar(48) DEFAULT NULL,
  `area` varchar(48) DEFAULT NULL,
  `city` varchar(48) DEFAULT NULL,
  `region` varchar(48) DEFAULT NULL,
  `county` varchar(48) DEFAULT NULL,
  `isp` varchar(24) DEFAULT NULL,
  `target` text NOT NULL,
  `data` text NOT NULL,
  `func` varchar(255) DEFAULT NULL,
  `post` text NOT NULL,
  `get` text DEFAULT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slender_log
-- ----------------------------

-- ----------------------------
-- Table structure for slender_menu
-- ----------------------------
DROP TABLE IF EXISTS `slender_menu`;
CREATE TABLE `slender_menu` (
  `label` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `lurl` varchar(255) DEFAULT NULL,
  `reorder` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slender_menu
-- ----------------------------

-- ----------------------------
-- Table structure for slender_nav
-- ----------------------------
DROP TABLE IF EXISTS `slender_nav`;
CREATE TABLE `slender_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order` smallint(1) NOT NULL DEFAULT 0,
  `type` smallint(3) DEFAULT NULL,
  `bel` smallint(3) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `blank` smallint(1) NOT NULL DEFAULT 1,
  `url` varchar(255) DEFAULT NULL,
  `active` smallint(1) NOT NULL DEFAULT 1,
  `system` smallint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slender_nav
-- ----------------------------

-- ----------------------------
-- Table structure for slender_portal
-- ----------------------------
DROP TABLE IF EXISTS `slender_portal`;
CREATE TABLE `slender_portal` (
  `show_id` int(11) DEFAULT NULL COMMENT '首页展示区域id',
  `chunk_id` int(11) DEFAULT NULL COMMENT '内容来源板块id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slender_portal
-- ----------------------------

-- ----------------------------
-- Table structure for slender_site
-- ----------------------------
DROP TABLE IF EXISTS `slender_site`;
CREATE TABLE `slender_site` (
  `id` int(2) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slender_site
-- ----------------------------

-- ----------------------------
-- Table structure for slender_thread
-- ----------------------------
DROP TABLE IF EXISTS `slender_thread`;
CREATE TABLE `slender_thread` (
  `cuid` int(11) NOT NULL AUTO_INCREMENT,
  `thread_title` varchar(255) DEFAULT NULL COMMENT '文章标题',
  `thread_coverimg` varchar(255) DEFAULT NULL,
  `thread_context` text DEFAULT NULL,
  `thread_editor` varchar(255) NOT NULL,
  `thread_author` text DEFAULT NULL,
  `thread_ctime` int(12) DEFAULT NULL COMMENT '修改时间',
  `thread_ptime` int(12) DEFAULT NULL COMMENT '创建时间',
  `thread_htime` text NOT NULL COMMENT '事件时间',
  `hk_keywords` text DEFAULT NULL COMMENT '网页meta描述',
  `hk_descrip` text DEFAULT NULL COMMENT '收录用的简介',
  `hk_url` varchar(255) DEFAULT NULL,
  `hk_mode` int(1) DEFAULT NULL COMMENT '1-编辑副本，2-发布，3-回收站',
  `hk_sort` int(1) DEFAULT NULL COMMENT '1-要闻，2-信息中心，3-热点，4-微视',
  `hk_sortclassify` varchar(64) DEFAULT NULL COMMENT '可自定义类型',
  `ore_hot` varchar(255) DEFAULT NULL COMMENT '热度',
  `ore_degree` varchar(255) DEFAULT NULL COMMENT '重要度',
  `ore_view` varchar(255) DEFAULT NULL COMMENT '浏览次数',
  PRIMARY KEY (`cuid`,`thread_editor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slender_thread
-- ----------------------------

-- ----------------------------
-- Table structure for slender_usenroll
-- ----------------------------
DROP TABLE IF EXISTS `slender_usenroll`;
CREATE TABLE `slender_usenroll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sex` varchar(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `phone` varchar(18) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `aim` varchar(48) DEFAULT NULL,
  `aim2` varchar(255) DEFAULT NULL,
  `studentid` varchar(11) DEFAULT NULL,
  `campus` int(2) DEFAULT NULL,
  `college` varchar(32) DEFAULT NULL,
  `major` varchar(64) DEFAULT NULL,
  `class` varchar(128) DEFAULT NULL,
  `reasion` varchar(4096) DEFAULT NULL,
  `reasion2` varchar(4096) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `time` int(16) DEFAULT NULL,
  `ftime` varchar(64) DEFAULT NULL,
  `hascalled` int(1) DEFAULT NULL,
  `score` int(5) DEFAULT NULL,
  `sug` varchar(255) DEFAULT NULL,
  `isfaced` varchar(10) DEFAULT NULL,
  `isenrolled` varchar(10) DEFAULT NULL,
  `f2f` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slender_usenroll
-- ----------------------------

-- ----------------------------
-- Table structure for slender_visiter
-- ----------------------------
DROP TABLE IF EXISTS `slender_visiter`;
CREATE TABLE `slender_visiter` (
  `vid` int(8) NOT NULL AUTO_INCREMENT,
  `ip` text DEFAULT NULL,
  `time` int(14) NOT NULL,
  `target` text NOT NULL,
  `date` text NOT NULL,
  `post` text DEFAULT NULL,
  `get` text DEFAULT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slender_visiter
-- ----------------------------

-- ----------------------------
-- Table structure for sms_log
-- ----------------------------
DROP TABLE IF EXISTS `sms_log`;
CREATE TABLE `sms_log` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `time` varchar(18) DEFAULT NULL,
  `call` varchar(18) DEFAULT NULL,
  `msgtplcode` varchar(255) DEFAULT NULL,
  `stat` varchar(64) DEFAULT NULL,
  `BizId` varchar(64) DEFAULT NULL,
  `Code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sms_log
-- ----------------------------
INSERT INTO `sms_log` VALUES ('1', '1531640174', '15536368637', 'SMS_139239203', 'OK', '759309831640173854^0', '45F5DB2A-3355-4CA9-B5CE-A4CA3EC1478E');
INSERT INTO `sms_log` VALUES ('2', '1531654837', '13233177025', 'SMS_139239203', 'OK', '614420031654836935^0', '416458FB-8F8F-4D39-AEA3-AAD558148F2E');
INSERT INTO `sms_log` VALUES ('3', '1531654859', '15536368637', 'SMS_139239203', 'OK', '996909431654859770^0', '46BDA6C4-DBE3-42CB-9943-DE7E73C14EE9');

-- ----------------------------
-- Table structure for tool_feedback
-- ----------------------------
DROP TABLE IF EXISTS `tool_feedback`;
CREATE TABLE `tool_feedback` (
  `fid` int(20) NOT NULL AUTO_INCREMENT,
  `type` int(1) DEFAULT NULL,
  `aid` varchar(12) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `message` varchar(4096) DEFAULT NULL,
  `phone` varchar(18) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `time` int(12) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tool_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for tool_quesbank
-- ----------------------------
DROP TABLE IF EXISTS `tool_quesbank`;
CREATE TABLE `tool_quesbank` (
  `year` text DEFAULT NULL,
  `course` text DEFAULT NULL,
  `chapter` text DEFAULT NULL,
  `type` text DEFAULT NULL,
  `ques` text DEFAULT NULL,
  `ans` longtext DEFAULT NULL,
  `note` text DEFAULT NULL,
  `A` text DEFAULT NULL,
  `B` text DEFAULT NULL,
  `C` text DEFAULT NULL,
  `D` text DEFAULT NULL,
  `E` text DEFAULT NULL,
  `F` text DEFAULT NULL,
  `G` text DEFAULT NULL,
  `H` text DEFAULT NULL,
  `I` text DEFAULT NULL,
  `J` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tool_quesbank
-- ----------------------------
