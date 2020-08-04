/*
Navicat MySQL Data Transfer

Source Server         : 49.234.184.136_3306
Source Server Version : 50520
Source Host           : 49.234.184.136:3306
Source Database       : myblog

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2020-08-04 10:54:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_2
-- ----------------------------
DROP TABLE IF EXISTS `tb_2`;
CREATE TABLE `tb_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `site_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '网站ID',
  `project_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '项目ID',
  `cate_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '主分类ID',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图',
  `note` longtext NOT NULL COMMENT '摘要',
  `linkurl` varchar(255) NOT NULL DEFAULT '' COMMENT '地址链接',
  `adminreply` varchar(255) NOT NULL DEFAULT '' COMMENT '管理员回复',
  `status` varchar(255) NOT NULL DEFAULT '' COMMENT '状态',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`),
  KEY `site_project` (`site_id`,`project_id`),
  KEY `site_cate` (`site_id`,`cate_id`),
  KEY `project_cate` (`site_id`,`project_id`,`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COMMENT='友情链接';

-- ----------------------------
-- Records of tb_2
-- ----------------------------
INSERT INTO `tb_2` VALUES ('76', '1', '12', '0', 'http://localhost/blogs/res/202007/22/84ecb412f4ff577b.png', '这个人很懒，什么都不想写...', 'http://pickeddeng.club', '', '0', '红色小裤衩');
INSERT INTO `tb_2` VALUES ('77', '1', '12', '0', 'http://localhost/blogs/res/202007/22/84ecb412f4ff577b.png', '这个人很懒，什么都不想写...', 'http://pickeddeng.club', '', '1', '红色小裤衩');
INSERT INTO `tb_2` VALUES ('78', '1', '12', '0', '测试', '测试', '测试', '', '0', '测试');

-- ----------------------------
-- Table structure for tb_3
-- ----------------------------
DROP TABLE IF EXISTS `tb_3`;
CREATE TABLE `tb_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `site_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '网站ID',
  `project_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '项目ID',
  `cate_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '主分类ID',
  `fullname` varchar(255) NOT NULL DEFAULT '' COMMENT '姓名',
  `qq` varchar(255) NOT NULL DEFAULT '' COMMENT '联系QQ',
  `mobile` varchar(255) NOT NULL DEFAULT '' COMMENT '手机号',
  `content` longtext NOT NULL COMMENT '内容',
  `adminreply` varchar(255) NOT NULL DEFAULT '' COMMENT '管理员回复',
  `ip` varchar(255) NOT NULL DEFAULT '' COMMENT 'ip地址',
  `dataline` datetime DEFAULT NULL COMMENT '留言时间',
  `replytime` datetime DEFAULT NULL COMMENT '管理员回复时间',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='留言板';

-- ----------------------------
-- Records of tb_3
-- ----------------------------
INSERT INTO `tb_3` VALUES ('1', '1', '13', '0', '张三', '780602604', '', '<p>你好呀</p>', '<p>管理员回复的内容</p>', '127.0.0.1', '2020-07-29 00:00:00', '2020-07-30 20:17:27');
INSERT INTO `tb_3` VALUES ('2', '1', '13', '0', '安徽省网友', '', '', '55555', '', '36.61.144.115', '2020-07-30 08:43:45', null);
INSERT INTO `tb_3` VALUES ('3', '1', '13', '0', '安徽省网友', '', '', '哈哈哈', '', '36.61.144.115', '2020-07-30 20:48:11', null);
INSERT INTO `tb_3` VALUES ('4', '1', '13', '0', '安徽省吃瓜网友', '', '', '不明真相的吃瓜群众', '', '36.61.144.115', '2020-07-30 20:52:27', null);
INSERT INTO `tb_3` VALUES ('5', '1', '13', '0', '安徽省吃瓜网友', '', '', '我问问', '', '36.61.144.115', '2020-07-30 20:52:51', null);
INSERT INTO `tb_3` VALUES ('6', '1', '13', '0', '安徽省吃瓜网友', '', '', '安徽省吃瓜网友来了', '', '36.61.144.115', '2020-07-30 20:53:17', null);
INSERT INTO `tb_3` VALUES ('7', '1', '13', '0', '安徽省吃瓜网友', '', '', '测试缓存时间', '', '36.61.144.115', '2020-07-30 20:54:35', null);
INSERT INTO `tb_3` VALUES ('8', '1', '13', '0', '安徽省吃瓜网友', '', '', '测试netword', '', '36.61.144.115', '2020-07-30 20:55:15', null);
INSERT INTO `tb_3` VALUES ('9', '1', '13', '0', '安徽省吃瓜网友', '', '', '再次测试留言', '', '36.61.144.115', '2020-07-30 20:57:03', null);
INSERT INTO `tb_3` VALUES ('10', '1', '13', '0', '安徽省吃瓜网友', '78', '', '缓存是咋回事呀', '', '36.61.144.115', '2020-07-30 21:00:56', null);
INSERT INTO `tb_3` VALUES ('11', '1', '13', '0', '安徽省吃瓜网友', '78', '', '缓存是咋回事呀', '', '36.61.144.115', '2020-07-30 21:01:13', null);
INSERT INTO `tb_3` VALUES ('12', '1', '13', '0', '安徽省吃瓜网友', '780602604', '', '测试', '', '36.5.154.8', '2020-08-03 09:47:57', null);
INSERT INTO `tb_3` VALUES ('13', '1', '13', '0', '安徽省吃瓜网友', '', '', '测试留言', '', '36.5.154.8', '2020-08-03 09:52:19', null);
INSERT INTO `tb_3` VALUES ('14', '1', '13', '0', '安徽省吃瓜网友', '', '', '111', '', '36.5.154.8', '2020-08-03 09:55:43', null);
INSERT INTO `tb_3` VALUES ('15', '1', '13', '0', '安徽省吃瓜网友', '', '', '<p>222</p>', '<p>你好呀</p>', '36.5.154.8', '2020-08-03 09:56:01', '2020-08-03 09:57:30');

-- ----------------------------
-- Table structure for tb_4
-- ----------------------------
DROP TABLE IF EXISTS `tb_4`;
CREATE TABLE `tb_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `site_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '网站ID',
  `project_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '项目ID',
  `cate_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '主分类ID',
  `img` longtext NOT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`),
  KEY `site_project` (`site_id`,`project_id`),
  KEY `site_cate` (`site_id`,`cate_id`),
  KEY `project_cate` (`site_id`,`project_id`,`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='我的相册';

-- ----------------------------
-- Records of tb_4
-- ----------------------------
INSERT INTO `tb_4` VALUES ('1', '1', '6', '0', '5,2,18,19,20,21,22');

-- ----------------------------
-- Table structure for tb_5
-- ----------------------------
DROP TABLE IF EXISTS `tb_5`;
CREATE TABLE `tb_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `site_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '网站ID',
  `historynumber` varchar(255) NOT NULL DEFAULT '' COMMENT '历史访问人数',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '网站标题',
  `descripte` varchar(255) NOT NULL DEFAULT '' COMMENT '站点描述',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图',
  `qq` varchar(255) NOT NULL DEFAULT '' COMMENT '客服QQ',
  `wechat` varchar(255) NOT NULL DEFAULT '' COMMENT '微信',
  `git` varchar(255) NOT NULL DEFAULT '' COMMENT 'git',
  `project_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '项目ID',
  `cate_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '主分类ID',
  `paywechat` varchar(255) NOT NULL DEFAULT '' COMMENT '打赏码-微信',
  `payali` varchar(255) NOT NULL DEFAULT '' COMMENT '打赏码-支付宝',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`),
  KEY `site_project` (`site_id`,`project_id`),
  KEY `site_cate` (`site_id`,`cate_id`),
  KEY `project_cate` (`site_id`,`project_id`,`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='站点信息';

-- ----------------------------
-- Records of tb_5
-- ----------------------------
INSERT INTO `tb_5` VALUES ('1', '1', '24', '红色小裤衩', '基于浏览器的博客管理系统', '2', '780602604', '13057618527', 'https://github.com/pickedDeng', '7', '0', '16', '17');

-- ----------------------------
-- Table structure for tb_adm
-- ----------------------------
DROP TABLE IF EXISTS `tb_adm`;
CREATE TABLE `tb_adm` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员ID，系统自增',
  `account` varchar(50) NOT NULL COMMENT '管理员账号',
  `pass` varchar(100) NOT NULL COMMENT '管理员密码',
  `email` varchar(50) NOT NULL COMMENT '管理员邮箱',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0未审核1正常2管理员锁定',
  `if_system` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '系统管理员',
  `vpass` varchar(50) NOT NULL COMMENT '二次验证密码，两次MD5加密',
  `fullname` varchar(100) NOT NULL COMMENT '姓名',
  `close_tip` varchar(255) NOT NULL COMMENT '关闭窗口前弹出的提示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='管理员信息';

-- ----------------------------
-- Records of tb_adm
-- ----------------------------
INSERT INTO `tb_adm` VALUES ('1', 'admin', 'e2959075648b2249bcb35efa4e292dda:22', 'pickeddeng', '1', '1', '', '', '');
INSERT INTO `tb_adm` VALUES ('2', 'test', 'eccf539e7bae49b23323af8387f9460b:e0', '780602604@qq.com', '1', '0', '', '', '');

-- ----------------------------
-- Table structure for tb_adm_popedom
-- ----------------------------
DROP TABLE IF EXISTS `tb_adm_popedom`;
CREATE TABLE `tb_adm_popedom` (
  `id` int(10) unsigned NOT NULL COMMENT '管理员ID',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '权限ID，对应popedom表里的id',
  PRIMARY KEY (`id`,`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员权限分配表';

-- ----------------------------
-- Records of tb_adm_popedom
-- ----------------------------
INSERT INTO `tb_adm_popedom` VALUES ('2', '2');
INSERT INTO `tb_adm_popedom` VALUES ('2', '3');
INSERT INTO `tb_adm_popedom` VALUES ('2', '7');
INSERT INTO `tb_adm_popedom` VALUES ('2', '8');
INSERT INTO `tb_adm_popedom` VALUES ('2', '9');
INSERT INTO `tb_adm_popedom` VALUES ('2', '10');
INSERT INTO `tb_adm_popedom` VALUES ('2', '11');
INSERT INTO `tb_adm_popedom` VALUES ('2', '12');
INSERT INTO `tb_adm_popedom` VALUES ('2', '14');
INSERT INTO `tb_adm_popedom` VALUES ('2', '15');
INSERT INTO `tb_adm_popedom` VALUES ('2', '16');
INSERT INTO `tb_adm_popedom` VALUES ('2', '17');
INSERT INTO `tb_adm_popedom` VALUES ('2', '18');
INSERT INTO `tb_adm_popedom` VALUES ('2', '19');
INSERT INTO `tb_adm_popedom` VALUES ('2', '20');
INSERT INTO `tb_adm_popedom` VALUES ('2', '22');
INSERT INTO `tb_adm_popedom` VALUES ('2', '23');
INSERT INTO `tb_adm_popedom` VALUES ('2', '24');
INSERT INTO `tb_adm_popedom` VALUES ('2', '25');
INSERT INTO `tb_adm_popedom` VALUES ('2', '26');
INSERT INTO `tb_adm_popedom` VALUES ('2', '37');
INSERT INTO `tb_adm_popedom` VALUES ('2', '38');
INSERT INTO `tb_adm_popedom` VALUES ('2', '40');
INSERT INTO `tb_adm_popedom` VALUES ('2', '42');
INSERT INTO `tb_adm_popedom` VALUES ('2', '43');
INSERT INTO `tb_adm_popedom` VALUES ('2', '44');
INSERT INTO `tb_adm_popedom` VALUES ('2', '45');
INSERT INTO `tb_adm_popedom` VALUES ('2', '46');
INSERT INTO `tb_adm_popedom` VALUES ('2', '47');
INSERT INTO `tb_adm_popedom` VALUES ('2', '48');
INSERT INTO `tb_adm_popedom` VALUES ('2', '49');
INSERT INTO `tb_adm_popedom` VALUES ('2', '53');
INSERT INTO `tb_adm_popedom` VALUES ('2', '54');
INSERT INTO `tb_adm_popedom` VALUES ('2', '58');
INSERT INTO `tb_adm_popedom` VALUES ('2', '59');
INSERT INTO `tb_adm_popedom` VALUES ('2', '63');
INSERT INTO `tb_adm_popedom` VALUES ('2', '64');
INSERT INTO `tb_adm_popedom` VALUES ('2', '67');
INSERT INTO `tb_adm_popedom` VALUES ('2', '68');
INSERT INTO `tb_adm_popedom` VALUES ('2', '69');
INSERT INTO `tb_adm_popedom` VALUES ('2', '70');
INSERT INTO `tb_adm_popedom` VALUES ('2', '71');
INSERT INTO `tb_adm_popedom` VALUES ('2', '72');
INSERT INTO `tb_adm_popedom` VALUES ('2', '73');
INSERT INTO `tb_adm_popedom` VALUES ('2', '74');
INSERT INTO `tb_adm_popedom` VALUES ('2', '75');
INSERT INTO `tb_adm_popedom` VALUES ('2', '76');
INSERT INTO `tb_adm_popedom` VALUES ('2', '77');
INSERT INTO `tb_adm_popedom` VALUES ('2', '78');
INSERT INTO `tb_adm_popedom` VALUES ('2', '80');
INSERT INTO `tb_adm_popedom` VALUES ('2', '81');
INSERT INTO `tb_adm_popedom` VALUES ('2', '82');
INSERT INTO `tb_adm_popedom` VALUES ('2', '83');
INSERT INTO `tb_adm_popedom` VALUES ('2', '133');
INSERT INTO `tb_adm_popedom` VALUES ('2', '134');
INSERT INTO `tb_adm_popedom` VALUES ('2', '135');
INSERT INTO `tb_adm_popedom` VALUES ('2', '136');
INSERT INTO `tb_adm_popedom` VALUES ('2', '142');
INSERT INTO `tb_adm_popedom` VALUES ('2', '159');
INSERT INTO `tb_adm_popedom` VALUES ('2', '160');
INSERT INTO `tb_adm_popedom` VALUES ('2', '161');
INSERT INTO `tb_adm_popedom` VALUES ('2', '162');
INSERT INTO `tb_adm_popedom` VALUES ('2', '170');
INSERT INTO `tb_adm_popedom` VALUES ('2', '344');
INSERT INTO `tb_adm_popedom` VALUES ('2', '345');
INSERT INTO `tb_adm_popedom` VALUES ('2', '346');
INSERT INTO `tb_adm_popedom` VALUES ('2', '347');
INSERT INTO `tb_adm_popedom` VALUES ('2', '348');
INSERT INTO `tb_adm_popedom` VALUES ('2', '476');
INSERT INTO `tb_adm_popedom` VALUES ('2', '477');
INSERT INTO `tb_adm_popedom` VALUES ('2', '478');
INSERT INTO `tb_adm_popedom` VALUES ('2', '479');
INSERT INTO `tb_adm_popedom` VALUES ('2', '480');
INSERT INTO `tb_adm_popedom` VALUES ('2', '601');
INSERT INTO `tb_adm_popedom` VALUES ('2', '602');
INSERT INTO `tb_adm_popedom` VALUES ('2', '603');
INSERT INTO `tb_adm_popedom` VALUES ('2', '604');
INSERT INTO `tb_adm_popedom` VALUES ('2', '605');
INSERT INTO `tb_adm_popedom` VALUES ('2', '621');
INSERT INTO `tb_adm_popedom` VALUES ('2', '622');
INSERT INTO `tb_adm_popedom` VALUES ('2', '623');
INSERT INTO `tb_adm_popedom` VALUES ('2', '625');
INSERT INTO `tb_adm_popedom` VALUES ('2', '626');
INSERT INTO `tb_adm_popedom` VALUES ('2', '627');
INSERT INTO `tb_adm_popedom` VALUES ('2', '628');
INSERT INTO `tb_adm_popedom` VALUES ('2', '629');
INSERT INTO `tb_adm_popedom` VALUES ('2', '630');
INSERT INTO `tb_adm_popedom` VALUES ('2', '631');
INSERT INTO `tb_adm_popedom` VALUES ('2', '632');
INSERT INTO `tb_adm_popedom` VALUES ('2', '633');
INSERT INTO `tb_adm_popedom` VALUES ('2', '634');
INSERT INTO `tb_adm_popedom` VALUES ('2', '690');
INSERT INTO `tb_adm_popedom` VALUES ('2', '691');
INSERT INTO `tb_adm_popedom` VALUES ('2', '692');
INSERT INTO `tb_adm_popedom` VALUES ('2', '693');
INSERT INTO `tb_adm_popedom` VALUES ('2', '694');
INSERT INTO `tb_adm_popedom` VALUES ('2', '695');
INSERT INTO `tb_adm_popedom` VALUES ('2', '696');
INSERT INTO `tb_adm_popedom` VALUES ('2', '697');
INSERT INTO `tb_adm_popedom` VALUES ('2', '698');
INSERT INTO `tb_adm_popedom` VALUES ('2', '699');
INSERT INTO `tb_adm_popedom` VALUES ('2', '700');
INSERT INTO `tb_adm_popedom` VALUES ('2', '701');
INSERT INTO `tb_adm_popedom` VALUES ('2', '702');
INSERT INTO `tb_adm_popedom` VALUES ('2', '703');
INSERT INTO `tb_adm_popedom` VALUES ('2', '704');
INSERT INTO `tb_adm_popedom` VALUES ('2', '748');
INSERT INTO `tb_adm_popedom` VALUES ('2', '749');
INSERT INTO `tb_adm_popedom` VALUES ('2', '750');
INSERT INTO `tb_adm_popedom` VALUES ('2', '751');
INSERT INTO `tb_adm_popedom` VALUES ('2', '752');
INSERT INTO `tb_adm_popedom` VALUES ('2', '753');
INSERT INTO `tb_adm_popedom` VALUES ('2', '754');
INSERT INTO `tb_adm_popedom` VALUES ('2', '755');
INSERT INTO `tb_adm_popedom` VALUES ('2', '758');
INSERT INTO `tb_adm_popedom` VALUES ('2', '759');
INSERT INTO `tb_adm_popedom` VALUES ('2', '760');
INSERT INTO `tb_adm_popedom` VALUES ('2', '761');
INSERT INTO `tb_adm_popedom` VALUES ('2', '762');
INSERT INTO `tb_adm_popedom` VALUES ('2', '763');
INSERT INTO `tb_adm_popedom` VALUES ('2', '764');
INSERT INTO `tb_adm_popedom` VALUES ('2', '765');
INSERT INTO `tb_adm_popedom` VALUES ('2', '766');
INSERT INTO `tb_adm_popedom` VALUES ('2', '767');
INSERT INTO `tb_adm_popedom` VALUES ('2', '768');
INSERT INTO `tb_adm_popedom` VALUES ('2', '769');
INSERT INTO `tb_adm_popedom` VALUES ('2', '770');
INSERT INTO `tb_adm_popedom` VALUES ('2', '771');
INSERT INTO `tb_adm_popedom` VALUES ('2', '772');
INSERT INTO `tb_adm_popedom` VALUES ('2', '773');
INSERT INTO `tb_adm_popedom` VALUES ('2', '774');
INSERT INTO `tb_adm_popedom` VALUES ('2', '775');
INSERT INTO `tb_adm_popedom` VALUES ('2', '776');
INSERT INTO `tb_adm_popedom` VALUES ('2', '777');
INSERT INTO `tb_adm_popedom` VALUES ('2', '778');
INSERT INTO `tb_adm_popedom` VALUES ('2', '779');
INSERT INTO `tb_adm_popedom` VALUES ('2', '780');
INSERT INTO `tb_adm_popedom` VALUES ('2', '781');
INSERT INTO `tb_adm_popedom` VALUES ('2', '782');
INSERT INTO `tb_adm_popedom` VALUES ('2', '783');
INSERT INTO `tb_adm_popedom` VALUES ('2', '784');
INSERT INTO `tb_adm_popedom` VALUES ('2', '793');
INSERT INTO `tb_adm_popedom` VALUES ('2', '794');
INSERT INTO `tb_adm_popedom` VALUES ('2', '795');
INSERT INTO `tb_adm_popedom` VALUES ('2', '796');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1345');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1346');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1347');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1364');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1365');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1366');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1367');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1400');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1401');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1402');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1403');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1404');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1405');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1406');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1407');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1434');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1748');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1749');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1756');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1757');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1758');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1759');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1760');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1761');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1762');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1771');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1772');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1773');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1774');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1775');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1776');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1777');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1778');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1779');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1780');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1781');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1782');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1817');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1818');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1819');
INSERT INTO `tb_adm_popedom` VALUES ('2', '1820');
INSERT INTO `tb_adm_popedom` VALUES ('4', '2');
INSERT INTO `tb_adm_popedom` VALUES ('4', '3');
INSERT INTO `tb_adm_popedom` VALUES ('4', '26');

-- ----------------------------
-- Table structure for tb_all
-- ----------------------------
DROP TABLE IF EXISTS `tb_all`;
CREATE TABLE `tb_all` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `site_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '网站ID',
  `identifier` varchar(100) NOT NULL COMMENT '标识串',
  `title` varchar(200) NOT NULL COMMENT '分类名称',
  `ico` varchar(255) NOT NULL COMMENT '图标',
  `is_system` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0普通１系统',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否前台调用',
  `is_api` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0禁用API，1启用API',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分类管理';

-- ----------------------------
-- Records of tb_all
-- ----------------------------

-- ----------------------------
-- Table structure for tb_attr
-- ----------------------------
DROP TABLE IF EXISTS `tb_attr`;
CREATE TABLE `tb_attr` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `site_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '站点ID',
  `title` varchar(100) NOT NULL COMMENT '属性名称',
  `taxis` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='产品属性';

-- ----------------------------
-- Records of tb_attr
-- ----------------------------
INSERT INTO `tb_attr` VALUES ('1', '1', '颜色', '5');
INSERT INTO `tb_attr` VALUES ('3', '1', '尺码', '10');
INSERT INTO `tb_attr` VALUES ('8', '1', '版本', '15');
INSERT INTO `tb_attr` VALUES ('9', '1', '品牌', '20');
INSERT INTO `tb_attr` VALUES ('11', '1', '9999', '25');
INSERT INTO `tb_attr` VALUES ('12', '1', '演示测试用的', '30');

-- ----------------------------
-- Table structure for tb_attr_values
-- ----------------------------
DROP TABLE IF EXISTS `tb_attr_values`;
CREATE TABLE `tb_attr_values` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '属性ID',
  `title` varchar(200) NOT NULL COMMENT '参数名称',
  `pic` varchar(200) NOT NULL COMMENT '参数图片',
  `taxis` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `val` varchar(255) NOT NULL COMMENT '值',
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='属性参数管理';

-- ----------------------------
-- Records of tb_attr_values
-- ----------------------------
INSERT INTO `tb_attr_values` VALUES ('1', '1', '红色', '', '10', 'red');
INSERT INTO `tb_attr_values` VALUES ('3', '1', '绿色', '', '20', 'green');
INSERT INTO `tb_attr_values` VALUES ('4', '1', '蓝色', '', '30', 'blue');
INSERT INTO `tb_attr_values` VALUES ('5', '1', '黑色', '', '40', 'black');
INSERT INTO `tb_attr_values` VALUES ('6', '1', '白色', '', '50', 'white');
INSERT INTO `tb_attr_values` VALUES ('7', '3', 'M', '', '10', '');
INSERT INTO `tb_attr_values` VALUES ('8', '3', 'L', '', '20', '');
INSERT INTO `tb_attr_values` VALUES ('9', '3', 'XL', '', '30', '');
INSERT INTO `tb_attr_values` VALUES ('10', '3', 'XXL', '', '40', '');
INSERT INTO `tb_attr_values` VALUES ('29', '8', '标准版(3G RAM+32G ROM)标配', 'res/201810/12/7eb2d67e0d6f4e4e.png', '10', '2499');
INSERT INTO `tb_attr_values` VALUES ('30', '8', '标准版(3G RAM+32G ROM)套装', '', '20', '2549');
INSERT INTO `tb_attr_values` VALUES ('31', '8', '高配版(3G RAM+64G ROM)标配', '', '30', '3199');
INSERT INTO `tb_attr_values` VALUES ('32', '8', '高配版(3G RAM+64G ROM)套装', '', '40', '3249');
INSERT INTO `tb_attr_values` VALUES ('33', '1', '金色', '', '60', 'gold');
INSERT INTO `tb_attr_values` VALUES ('34', '8', '16G ROM', '', '50', 'MZ16G');
INSERT INTO `tb_attr_values` VALUES ('35', '8', '32G ROM', '', '60', 'MZ32G');
INSERT INTO `tb_attr_values` VALUES ('36', '1', '灰色', '', '70', 'gray');
INSERT INTO `tb_attr_values` VALUES ('37', '8', '64G ROM', '', '70', '64G');
INSERT INTO `tb_attr_values` VALUES ('38', '1', 'demo', '', '80', 'demo');
INSERT INTO `tb_attr_values` VALUES ('39', '1', 'ok', '', '90', '');
INSERT INTO `tb_attr_values` VALUES ('40', '8', '在99', '', '40', '');
INSERT INTO `tb_attr_values` VALUES ('41', '1', 'demo', '', '50', '');
INSERT INTO `tb_attr_values` VALUES ('42', '1', 'ok9999', '', '55', '');
INSERT INTO `tb_attr_values` VALUES ('43', '12', '加一条', '', '5', '');

-- ----------------------------
-- Table structure for tb_cart
-- ----------------------------
DROP TABLE IF EXISTS `tb_cart`;
CREATE TABLE `tb_cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID号',
  `session_id` varchar(255) NOT NULL COMMENT 'SESSION_ID号',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID号，为0表示游客',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `coupon_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '优惠码ID（仅当优惠码有效时体现）',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='购物车';

-- ----------------------------
-- Records of tb_cart
-- ----------------------------

-- ----------------------------
-- Table structure for tb_cart_product
-- ----------------------------
DROP TABLE IF EXISTS `tb_cart_product`;
CREATE TABLE `tb_cart_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID号',
  `cart_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '购物车ID号',
  `tid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '主题ID',
  `title` varchar(255) NOT NULL COMMENT '产品名称',
  `price` float NOT NULL COMMENT '产品单价',
  `qty` int(11) NOT NULL DEFAULT '0' COMMENT '产品数量',
  `ext` text NOT NULL COMMENT '扩展属性',
  `weight` float unsigned NOT NULL DEFAULT '0' COMMENT '重量',
  `volume` float unsigned NOT NULL DEFAULT '0' COMMENT '体积',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `is_virtual` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0实物1虚拟或服务',
  `unit` varchar(50) NOT NULL COMMENT '单位',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后操作时间',
  `apps` varchar(255) NOT NULL COMMENT '应用管理器',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父级ID，不为0表示这是一个捆绑销售',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购物车里的产品信息';

-- ----------------------------
-- Records of tb_cart_product
-- ----------------------------

-- ----------------------------
-- Table structure for tb_cate
-- ----------------------------
DROP TABLE IF EXISTS `tb_cate`;
CREATE TABLE `tb_cate` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `site_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '网站ID',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '父级ID，0为根分类',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0不使用1正常使用',
  `title` varchar(200) NOT NULL COMMENT '分类名称',
  `taxis` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '分类排序，值越小越往前靠',
  `tpl_list` varchar(255) NOT NULL COMMENT '列表模板',
  `tpl_content` varchar(255) NOT NULL COMMENT '内容模板',
  `psize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '列表每页数量',
  `seo_title` varchar(255) NOT NULL COMMENT 'SEO标题',
  `seo_keywords` varchar(255) NOT NULL COMMENT 'SEO关键字',
  `seo_desc` varchar(255) NOT NULL COMMENT 'SEO描述',
  `identifier` varchar(255) NOT NULL COMMENT '分类标识串',
  `tag` varchar(255) NOT NULL COMMENT '自身Tag设置',
  `style` varchar(255) NOT NULL COMMENT 'CSS样式',
  `module_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '模块ID',
  `psize_api` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'API接口读取的数量',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `site_id` (`site_id`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='分类管理';

-- ----------------------------
-- Records of tb_cate
-- ----------------------------
INSERT INTO `tb_cate` VALUES ('1', '1', '0', '1', '博客分类', '5', '', '', '0', '', '', '', 'blogscate', '', '', '1', '0');
INSERT INTO `tb_cate` VALUES ('5', '1', '1', '1', '产品小白', '10', '', '', '0', '', '', '', 'catepro', '', '', '0', '0');
INSERT INTO `tb_cate` VALUES ('4', '1', '1', '1', '码农生涯', '5', '', '', '0', '', '', '', 'tslx', '', '', '0', '0');

-- ----------------------------
-- Table structure for tb_currency
-- ----------------------------
DROP TABLE IF EXISTS `tb_currency`;
CREATE TABLE `tb_currency` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '货币ID',
  `code` varchar(3) NOT NULL COMMENT '货币标识，仅限三位数的大写字母',
  `val` decimal(13,8) unsigned NOT NULL COMMENT '货币转化',
  `taxis` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序，值越小越往前靠',
  `title` varchar(50) NOT NULL COMMENT '名称',
  `symbol_left` varchar(24) NOT NULL COMMENT '价格左侧',
  `symbol_right` varchar(24) NOT NULL COMMENT '价格右侧',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0不使用1使用',
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0不隐藏1隐藏',
  `code_num` varchar(5) NOT NULL COMMENT '币种数值',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='货币管理';

-- ----------------------------
-- Records of tb_currency
-- ----------------------------
INSERT INTO `tb_currency` VALUES ('1', 'CNY', '6.16989994', '10', '人民币', '', '元', '1', '0', '165');
INSERT INTO `tb_currency` VALUES ('2', 'USD', '1.00000000', '20', '美金', 'US$', '', '1', '0', '840');
INSERT INTO `tb_currency` VALUES ('3', 'HKD', '7.76350021', '30', '港元', 'HK$', '', '1', '0', '344');
INSERT INTO `tb_currency` VALUES ('4', 'EUR', '0.76639998', '40', '欧元', 'EUR', '', '1', '0', '978');
INSERT INTO `tb_currency` VALUES ('5', 'GBP', '0.64529997', '50', '英镑', '￡', '', '1', '0', '826');
INSERT INTO `tb_currency` VALUES ('7', 'AUD', '1.00000000', '60', '澳币', 'A$', '', '1', '0', '036');

-- ----------------------------
-- Table structure for tb_email
-- ----------------------------
DROP TABLE IF EXISTS `tb_email`;
CREATE TABLE `tb_email` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `site_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '网站ID，0表示全部网站',
  `identifier` varchar(255) NOT NULL COMMENT '发送标识',
  `title` varchar(200) NOT NULL COMMENT '邮件主题',
  `content` text NOT NULL COMMENT '邮件内容',
  `note` varchar(255) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='邮件内容';

-- ----------------------------
-- Records of tb_email
-- ----------------------------
INSERT INTO `tb_email` VALUES ('4', '1', 'register_code', '获取会员注册资格', '<p>您好，{$email}</p><p>您将注册成为网站【{$config.title} 】会员，请点击下面的地址，进入下一步注册：</p><p><br/></p><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><p><a href=\"{$link}\" target=\"_blank\">{$link}</a></p><p>（此链接24小时内有效）</p></blockquote><p><br/></p><p><br/></p><p>感谢您对本站的关注，茫茫人海中，能有缘走到一起。</p>', '');
INSERT INTO `tb_email` VALUES ('5', '1', 'getpass', '取回密码操作', '<p>您好，{$user.account}</p><p>您执行了忘记密码操作功能，请点击下面的链接执行下一步：</p><p><br /></p><p><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><p><a href=\"{$link}\" target=\"_blank\">{$link}</a></p></blockquote><br /></p><p>感谢您对本站的支持，有什么问题您在登录后可以咨询我们的客服。</p>', '');
INSERT INTO `tb_email` VALUES ('6', '1', 'project_save', '主题添加通知', '<p>您好，管理员</p><blockquote><p>您的网站（<a href=\"http://{$sys.url}\" target=\"_self\">{$sys.url}</a>）新增了一篇主题，下述是主题的基本信息：<br/></p><p>主题名称：{$rs.title}</p><p>项目类型：{$page_rs.title}</p><p><br/></p><p>请登录网站查询</p></blockquote>', '');
INSERT INTO `tb_email` VALUES ('7', '1', 'order_admin', '网站有新订单【{$order.sn}】', '<p>您好，管理员</p><blockquote><p>您的网站：{$sys.url} 收到一份新的订单，订单号是：{$order.sn}，请登录网站后台进行核验。</p></blockquote>', '');
INSERT INTO `tb_email` VALUES ('8', '1', 'user_order_create', '我们已收到您的订单【{$order.sn}】，欢迎您随时关注订单状态', '<p><strong>尊敬的{$fullname}，您好：</strong><br/></p><p><br/></p><p>感谢您在<span style=\"color: rgb(0, 112, 192);\">{$config.title}</span>（{$sys.url}）购物。</p><p>我们已经收到您的订单<span style=\"color: rgb(0, 112, 192);\">{$order.sn}</span>，建议您选择<span style=\"color: rgb(0, 112, 192);\">在线支付</span>的支付配送方式。订单信息以个人中心里的“<span style=\"color: rgb(0, 112, 192);\"><strong>我的订单</strong></span>”信息为准，您也可以随时进入订单详细进行查看修改等操作。</p><p><br/></p><p><strong>重要说明：</strong></p><p>本邮件仅表明销售方已收到了您提交的订单；销售方收到你的订单信息后，只有在销售方将您的订单中订购的商品从仓库实际直接向您发出时（以商品出库为标志），方视为您与销售方之间就实际直接向您发出的商品建立了合同关系；<br/>如果您在一份订单里订购了多种商品并且销售方只给您发出了部分商品时，您与销售方之间仅就实际直接向您发出的商品建立了合同关系；只有在销售方实际直接向您发出了订单中订购的其他商品时，您和销售方之间就订单中该其他已实际直接向您发出的商品建立了合同关系。<br/>您可以随时登陆您在京东注册的账户，查询您的订单状态。更多内容请见最新的京东网站用户注册协议及京东网站各类购物规则，我们建议您不时地浏览阅读。</p><p><br/></p><p><strong>账户安全提醒：</strong><br/>互联网账号存在被盗风险，为了保障您的账号及资金安全，我们提醒您访问 我的账户- &gt; 修改密码，尽量使用复杂密码，如字母+数字+特殊符号等。</p>', '');
INSERT INTO `tb_email` VALUES ('9', '1', 'sms_order_create', '会员下单成功后，短信通知', '<p>您的订单：{$order.sn} 已成功提交，请您及时完成支付操作。超过24小时未支付订单将会自动删除。感谢您对我们的支持！</p>', '');
INSERT INTO `tb_email` VALUES ('10', '1', 'order_user_paid', '您的订单【{$order.sn}】已支付成功', '<p><strong>尊敬的{$fullname}，您好：</strong></p><p style=\"white-space: normal;\">感谢您在<span style=\"color: rgb(0, 112, 192);\">{$config.title}</span>（{$sys.url}）购物。</p><p style=\"white-space: normal;\">您的订单<span style=\"color: rgb(0, 112, 192);\">{$order.sn}</span>已成功支付，请耐心等候，我们管理员正在核验付款信息。</p><p style=\"white-space: normal;\">订单信息以个人中心里的“<span style=\"color: rgb(0, 112, 192);\"><strong>我的订单</strong></span>”信息为准，您也可以随时进入订单详细进行查看修改等操作。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>重要说明：</strong></p><p style=\"white-space: normal;\">本邮件仅表明销售方已收到了您提交的订单；销售方收到你的订单信息后，只有在销售方将您的订单中订购的商品从仓库实际直接向您发出时（以商品出库为标志），方视为您与销售方之间就实际直接向您发出的商品建立了合同关系；<br/>如果您在一份订单里订购了多种商品并且销售方只给您发出了部分商品时，您与销售方之间仅就实际直接向您发出的商品建立了合同关系；只有在销售方实际直接向您发出了订单中订购的其他商品时，您和销售方之间就订单中该其他已实际直接向您发出的商品建立了合同关系。<br/>您可以随时登陆您在京东注册的账户，查询您的订单状态。更多内容请见最新的京东网站用户注册协议及京东网站各类购物规则，我们建议您不时地浏览阅读。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>账户安全提醒：</strong><br/>互联网账号存在被盗风险，为了保障您的账号及资金安全，我们提醒您访问 我的账户- &gt; 修改密码，尽量使用复杂密码，如字母+数字+特殊符号等。</p><p><br/></p>', '');
INSERT INTO `tb_email` VALUES ('11', '1', 'order_admin_paid', '客户{$user.user}订单【{$orser.sn}】付款成功', '<p>您好，管理员，请登录网站后台 {$sys.url} 核验订单【{$orser.sn}】支付是否成功</p>', '');
INSERT INTO `tb_email` VALUES ('12', '1', 'sms_order_paid', '订单付款成功后的通知', '<p>您的订单：{$order.sn} 已成功付款，我们正在核验中，请耐心等候！</p>', '');
INSERT INTO `tb_email` VALUES ('13', '1', 'order_user_shipped', '您的订单【{$order.sn}】已发货', '<p style=\"white-space: normal;\"><strong>尊敬的{$fullname}，您好：</strong><br/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">感谢您在<span style=\"color: rgb(0, 112, 192);\">{$config.title}</span>（{$sys.url}）购物。</p><p style=\"white-space: normal;\">您的订单<span style=\"color: rgb(0, 112, 192);\">{$order.sn}</span>已经发货，请保持您的电话畅通，以方便快递人员能与您取得联系。</p><p style=\"white-space: normal;\">订单信息以个人中心里的“<span style=\"color: rgb(0, 112, 192);\"><strong>我的订单</strong></span>”信息为准，您也可以随时进入订单详细进行查看修改等操作。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>重要说明：</strong></p><p style=\"white-space: normal;\">本邮件仅表明销售方已收到了您提交的订单；销售方收到你的订单信息后，只有在销售方将您的订单中订购的商品从仓库实际直接向您发出时（以商品出库为标志），方视为您与销售方之间就实际直接向您发出的商品建立了合同关系；<br/>如果您在一份订单里订购了多种商品并且销售方只给您发出了部分商品时，您与销售方之间仅就实际直接向您发出的商品建立了合同关系；只有在销售方实际直接向您发出了订单中订购的其他商品时，您和销售方之间就订单中该其他已实际直接向您发出的商品建立了合同关系。<br/>您可以随时登陆您在京东注册的账户，查询您的订单状态。更多内容请见最新的京东网站用户注册协议及京东网站各类购物规则，我们建议您不时地浏览阅读。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>账户安全提醒：</strong><br/>互联网账号存在被盗风险，为了保障您的账号及资金安全，我们提醒您访问 我的账户- &gt; 修改密码，尽量使用复杂密码，如字母+数字+特殊符号等。</p><p><br/></p>', '');
INSERT INTO `tb_email` VALUES ('14', '1', 'sms_order_shipped', '订单发货短信通知', '您的订单：{$order.sn} 已经发货，请保持电话畅通，以方便快递人员能与您取得联系。', '');
INSERT INTO `tb_email` VALUES ('15', '1', 'order_admin_recerved', '订单【{$order.sn}】已确认收货', '<p>您好，管理员，客户已对订单【{$order.sn}】执行确认收货操作，请登录后台核验</p>', '');
INSERT INTO `tb_email` VALUES ('16', '1', 'email_code', '【{$config.title}】邮件验证码', '<p>你的验证码是：{$code}，三十分钟内有效，请及时输入</p>', '');
INSERT INTO `tb_email` VALUES ('17', '1', 'sms_code', '短信验证码', '您的验证码：{$code}，请在10分钟内输入【微光互助】', '');
INSERT INTO `tb_email` VALUES ('18', '1', 'sms_paid_admin', '订单成功后管理员', '订单：{$order.sn}，客户已支付成功，请检查', '');
INSERT INTO `tb_email` VALUES ('34', '1', 'email_code', '您的验证码', '<p>您的验证码是：<span style=\"color: rgb(255, 0, 0);\"><strong>{$code}</strong></span>，有效时间20分钟，请不要将验证码发送别人。<br/></p><p><br/></p>', '');
INSERT INTO `tb_email` VALUES ('35', '1', 'sms_sendcloud_code', '4575', 'code:{$code}', 'SendCloud使用的验证码');
INSERT INTO `tb_email` VALUES ('36', '1', 'sms_aliyun_test', 'SMS_49105038', 'customer:{$user.user}', '阿里云短信测试');
INSERT INTO `tb_email` VALUES ('37', '1', 'sms_61825160', 'SMS_61825160', 'code:{$code}', '阿里云：验证码');
INSERT INTO `tb_email` VALUES ('38', '1', 'email_toall', '您的留言 #{$rs.id}，管理员已经回复', '', '留言回复通知');
INSERT INTO `tb_email` VALUES ('99', '1', 'sms_yuntongxun', '487959', '1:{$code}\r\n2:5分钟', '容联云通迅');
INSERT INTO `tb_email` VALUES ('100', '1', 'email_edm1', '新春促销，全场七折优惠', '<p>您好，{$username}</p><p style=\"text-align: center;\">值此新春佳节，锟铻携全体员工祝大家新春快乐，事业高升，家庭美满！</p><p style=\"text-align: center;\">在春节期间，我们推出了七折优惠大促销！模板七折，授权七折！真七折噢！</p><p style=\"text-align: center;\"><a href=\"https://www.phpok.com/market.html\" target=\"_blank\"><img src=\"res/_cache/auto/14/1425.png\" title=\"编组 21备份\" alt=\"编组 21备份\" style=\"width: 700px;\" width=\"700\" height=\"\"/></a></p>', '营销模板');

-- ----------------------------
-- Table structure for tb_express
-- ----------------------------
DROP TABLE IF EXISTS `tb_express`;
CREATE TABLE `tb_express` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `site_id` int(11) NOT NULL DEFAULT '0' COMMENT '站点ID，为0所有站点使用',
  `title` varchar(255) NOT NULL COMMENT '名称',
  `company` varchar(255) NOT NULL COMMENT '公司名称',
  `homepage` varchar(255) NOT NULL COMMENT '官方网站',
  `logo` varchar(255) NOT NULL COMMENT '物流快递公司的Logo',
  `code` varchar(100) NOT NULL COMMENT '接口标识，用于读取logistics文件夹下的接口文件',
  `rate` int(11) NOT NULL DEFAULT '6' COMMENT '查询频率，用于减少请求',
  `ext` text NOT NULL COMMENT '扩展数据保存',
  `content` text NOT NULL COMMENT '公司介绍',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='快递平台管理';

-- ----------------------------
-- Records of tb_express
-- ----------------------------

-- ----------------------------
-- Table structure for tb_extc
-- ----------------------------
DROP TABLE IF EXISTS `tb_extc`;
CREATE TABLE `tb_extc` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '内容值ID，对应ext表中的id',
  `content` longtext NOT NULL COMMENT '内容文本',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展字段内容维护';

-- ----------------------------
-- Records of tb_extc
-- ----------------------------

-- ----------------------------
-- Table structure for tb_fav
-- ----------------------------
DROP TABLE IF EXISTS `tb_fav`;
CREATE TABLE `tb_fav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_id` int(10) unsigned NOT NULL COMMENT '会员ID',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `note` varchar(255) NOT NULL COMMENT '摘要',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `lid` int(11) NOT NULL COMMENT '关联主题',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员收藏夹';

-- ----------------------------
-- Records of tb_fav
-- ----------------------------

-- ----------------------------
-- Table structure for tb_fields
-- ----------------------------
DROP TABLE IF EXISTS `tb_fields`;
CREATE TABLE `tb_fields` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '字段ID，自增',
  `ftype` varchar(255) NOT NULL COMMENT '模型ID，当为数字时表示模块ID，非数表示其他模型的ID',
  `title` varchar(255) NOT NULL COMMENT '字段名称',
  `identifier` varchar(50) NOT NULL COMMENT '字段标识串',
  `field_type` varchar(255) NOT NULL DEFAULT '200' COMMENT '字段存储类型',
  `note` varchar(255) NOT NULL COMMENT '字段内容备注',
  `form_type` varchar(100) NOT NULL COMMENT '表单类型',
  `form_style` varchar(255) NOT NULL COMMENT '表单CSS',
  `format` varchar(100) NOT NULL COMMENT '格式化方式',
  `content` varchar(255) NOT NULL COMMENT '默认值',
  `taxis` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序',
  `ext` text NOT NULL COMMENT '扩展内容',
  `is_front` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0前端不可用1前端可用',
  `search` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0不支持搜索1完全匹配搜索2模糊匹配搜索3区间搜索',
  `search_separator` varchar(10) NOT NULL COMMENT '分割符，仅限区间搜索时有效',
  `form_class` varchar(255) NOT NULL COMMENT '自定义表单Class',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='字段管理器';

-- ----------------------------
-- Records of tb_fields
-- ----------------------------
INSERT INTO `tb_fields` VALUES ('30', '3', '管理员回复时间', 'replytime', 'datetime', '管理员回复时间', 'text', '', 'safe', '', '40', 'a:5:{s:8:\"form_btn\";s:8:\"datetime\";s:10:\"ext_format\";s:0:\"\";s:15:\"ext_quick_words\";s:0:\"\";s:14:\"ext_quick_type\";s:0:\"\";s:13:\"ext_include_3\";s:1:\"0\";}', '0', '0', '', '');
INSERT INTO `tb_fields` VALUES ('2', '1', '内容', 'content', 'longtext', '', 'editor', '', 'html', '', '10', 'a:8:{s:6:\"height\";s:3:\"560\";s:7:\"is_code\";s:0:\"\";s:7:\"is_read\";s:0:\"\";s:7:\"inc_tag\";s:0:\"\";s:10:\"paste_text\";s:1:\"0\";s:4:\"btns\";s:0:\"\";s:8:\"is_float\";s:0:\"\";s:11:\"auto_height\";s:0:\"\";}', '0', '0', '', '');
INSERT INTO `tb_fields` VALUES ('3', '1', '标签', 'blogstag', 'varchar', '标签', 'select', '', 'safe', '', '15', 'a:5:{s:11:\"option_list\";s:6:\"opt:21\";s:11:\"is_multiple\";s:1:\"0\";s:5:\"width\";s:0:\"\";s:10:\"ext_select\";s:0:\"\";s:9:\"empty_val\";s:0:\"\";}', '0', '0', '', '');
INSERT INTO `tb_fields` VALUES ('4', '1', '作者', 'author', 'varchar', '作者', 'text', '', 'safe', '', '20', 'a:5:{s:8:\"form_btn\";s:0:\"\";s:10:\"ext_format\";s:0:\"\";s:15:\"ext_quick_words\";s:0:\"\";s:14:\"ext_quick_type\";s:0:\"\";s:13:\"ext_include_3\";s:1:\"0\";}', '0', '0', '', '');
INSERT INTO `tb_fields` VALUES ('10', '3', '姓名', 'fullname', 'varchar', '', 'text', '', 'safe', '', '5', 'a:4:{s:8:\"form_btn\";s:0:\"\";s:5:\"width\";s:3:\"300\";s:15:\"ext_quick_words\";s:0:\"\";s:14:\"ext_quick_type\";s:0:\"\";}', '0', '0', '', '');
INSERT INTO `tb_fields` VALUES ('11', '3', '联系QQ', 'qq', 'varchar', '', 'text', '', 'safe', '', '10', 'a:5:{s:8:\"form_btn\";s:0:\"\";s:10:\"ext_format\";s:0:\"\";s:15:\"ext_quick_words\";s:0:\"\";s:14:\"ext_quick_type\";s:0:\"\";s:13:\"ext_include_3\";s:1:\"0\";}', '0', '0', '', '');
INSERT INTO `tb_fields` VALUES ('6', '2', '缩略图', 'thumb', 'varchar', '', 'text', '', 'safe', '', '10', 'a:5:{s:8:\"form_btn\";s:0:\"\";s:10:\"ext_format\";s:0:\"\";s:15:\"ext_quick_words\";s:0:\"\";s:14:\"ext_quick_type\";s:0:\"\";s:13:\"ext_include_3\";s:1:\"0\";}', '0', '0', '', '');
INSERT INTO `tb_fields` VALUES ('7', '2', '摘要', 'note', 'longtext', '简要文字描述', 'textarea', '', 'safe', '', '15', 'a:2:{s:5:\"width\";s:3:\"600\";s:6:\"height\";s:2:\"80\";}', '0', '0', '', '');
INSERT INTO `tb_fields` VALUES ('9', '2', '地址链接', 'linkurl', 'varchar', '地址链接', 'text', '', 'safe', '', '20', 'a:5:{s:8:\"form_btn\";s:0:\"\";s:10:\"ext_format\";s:0:\"\";s:15:\"ext_quick_words\";s:0:\"\";s:14:\"ext_quick_type\";s:0:\"\";s:13:\"ext_include_3\";s:1:\"0\";}', '0', '0', '', '');
INSERT INTO `tb_fields` VALUES ('12', '3', '手机号', 'mobile', 'varchar', '', 'text', '', 'safe', '', '15', 'a:4:{s:8:\"form_btn\";s:0:\"\";s:5:\"width\";s:3:\"300\";s:15:\"ext_quick_words\";s:0:\"\";s:14:\"ext_quick_type\";s:0:\"\";}', '0', '0', '', '');
INSERT INTO `tb_fields` VALUES ('13', '3', '内容', 'content', 'longtext', '', 'editor', '', 'html', '', '20', 'a:7:{s:5:\"width\";s:3:\"950\";s:6:\"height\";s:3:\"360\";s:7:\"is_code\";s:0:\"\";s:7:\"is_read\";s:0:\"\";s:7:\"inc_tag\";s:0:\"\";s:10:\"paste_text\";s:0:\"\";s:4:\"btns\";s:0:\"\";}', '0', '0', '', '');
INSERT INTO `tb_fields` VALUES ('14', '3', '管理员回复', 'adminreply', 'varchar', '管理员回复', 'editor', '', 'safe', '', '25', 'a:8:{s:6:\"height\";s:0:\"\";s:7:\"is_code\";s:0:\"\";s:7:\"is_read\";s:0:\"\";s:7:\"inc_tag\";s:0:\"\";s:10:\"paste_text\";s:1:\"0\";s:4:\"btns\";a:13:{s:5:\"image\";s:2:\"on\";s:4:\"info\";s:2:\"on\";s:5:\"video\";s:2:\"on\";s:4:\"file\";s:2:\"on\";s:4:\"page\";s:2:\"on\";s:5:\"table\";s:2:\"on\";s:7:\"emotion\";s:2:\"on\";s:3:\"map\";s:2:\"on\";s:8:\"spechars\";s:2:\"on\";s:10:\"insertcode\";s:2:\"on\";s:9:\"paragraph\";s:2:\"on\";s:8:\"fontsize\";s:2:\"on\";s:10:\"fontfamily\";s:2:\"on\";}s:8:\"is_float\";s:0:\"\";s:11:\"auto_height\";s:0:\"\";}', '0', '0', '', '');
INSERT INTO `tb_fields` VALUES ('15', '4', '图片', 'img', 'longtext', '图片', 'upload', '', 'safe', '', '5', 'a:2:{s:7:\"cate_id\";s:1:\"1\";s:11:\"is_multiple\";s:1:\"1\";}', '0', '0', '', '');
INSERT INTO `tb_fields` VALUES ('16', '5', '历史访问人数', 'historynumber', 'varchar', '历史访问人数', 'text', '', 'safe', '', '5', 'a:5:{s:8:\"form_btn\";s:0:\"\";s:10:\"ext_format\";s:0:\"\";s:15:\"ext_quick_words\";s:0:\"\";s:14:\"ext_quick_type\";s:0:\"\";s:13:\"ext_include_3\";s:1:\"0\";}', '0', '0', '', '');
INSERT INTO `tb_fields` VALUES ('17', '5', '网站标题', 'title', 'varchar', '网站标题', 'text', '', 'safe', '', '10', 'a:5:{s:8:\"form_btn\";s:0:\"\";s:10:\"ext_format\";s:0:\"\";s:15:\"ext_quick_words\";s:0:\"\";s:14:\"ext_quick_type\";s:0:\"\";s:13:\"ext_include_3\";s:1:\"0\";}', '0', '0', '', '');
INSERT INTO `tb_fields` VALUES ('18', '5', '站点描述', 'descripte', 'varchar', '站点描述', 'text', '', 'safe', '', '15', 'a:5:{s:8:\"form_btn\";s:0:\"\";s:10:\"ext_format\";s:0:\"\";s:15:\"ext_quick_words\";s:0:\"\";s:14:\"ext_quick_type\";s:0:\"\";s:13:\"ext_include_3\";s:1:\"0\";}', '0', '0', '', '');
INSERT INTO `tb_fields` VALUES ('19', '5', '缩略图', 'thumb', 'varchar', '', 'upload', '', 'safe', '', '20', 'a:8:{s:7:\"cate_id\";s:1:\"1\";s:11:\"cate_custom\";s:1:\"0\";s:11:\"is_multiple\";s:1:\"0\";s:11:\"upload_type\";s:11:\"png,jpg,gif\";s:11:\"upload_name\";s:6:\"图片\";s:13:\"upload_binary\";s:1:\"0\";s:15:\"upload_compress\";s:1:\"0\";s:18:\"upload_compress_wh\";s:3:\"500\";}', '0', '0', '', '');
INSERT INTO `tb_fields` VALUES ('20', '5', '客服QQ', 'qq', 'varchar', '', 'text', '', 'safe', '', '25', 'a:4:{s:8:\"form_btn\";s:0:\"\";s:5:\"width\";s:3:\"300\";s:15:\"ext_quick_words\";s:0:\"\";s:14:\"ext_quick_type\";s:0:\"\";}', '0', '0', '', '');
INSERT INTO `tb_fields` VALUES ('21', '5', '微信', 'wechat', 'varchar', '微信', 'text', '', 'safe', '', '30', 'a:5:{s:8:\"form_btn\";s:0:\"\";s:10:\"ext_format\";s:0:\"\";s:15:\"ext_quick_words\";s:0:\"\";s:14:\"ext_quick_type\";s:0:\"\";s:13:\"ext_include_3\";s:1:\"0\";}', '0', '0', '', '');
INSERT INTO `tb_fields` VALUES ('22', '5', 'git', 'git', 'varchar', 'git', 'text', '', 'safe', '', '35', 'a:5:{s:8:\"form_btn\";s:0:\"\";s:10:\"ext_format\";s:0:\"\";s:15:\"ext_quick_words\";s:0:\"\";s:14:\"ext_quick_type\";s:0:\"\";s:13:\"ext_include_3\";s:1:\"0\";}', '0', '0', '', '');
INSERT INTO `tb_fields` VALUES ('23', '3', 'ip地址', 'ip', 'varchar', 'ip地址', 'text', '', 'safe', '', '30', 'a:5:{s:8:\"form_btn\";s:0:\"\";s:10:\"ext_format\";s:0:\"\";s:15:\"ext_quick_words\";s:0:\"\";s:14:\"ext_quick_type\";s:0:\"\";s:13:\"ext_include_3\";s:1:\"0\";}', '0', '0', '', '');
INSERT INTO `tb_fields` VALUES ('24', '3', '留言时间', 'dataline', 'datetime', '留言时间', 'text', '', 'safe', '', '35', 'a:5:{s:8:\"form_btn\";s:8:\"datetime\";s:10:\"ext_format\";s:0:\"\";s:15:\"ext_quick_words\";s:0:\"\";s:14:\"ext_quick_type\";s:0:\"\";s:13:\"ext_include_3\";s:1:\"0\";}', '0', '0', '', '');
INSERT INTO `tb_fields` VALUES ('25', '2', '管理员回复', 'adminreply', 'varchar', '管理员回复', 'text', '', 'safe', '', '25', 'a:5:{s:8:\"form_btn\";s:0:\"\";s:10:\"ext_format\";s:0:\"\";s:15:\"ext_quick_words\";s:0:\"\";s:14:\"ext_quick_type\";s:0:\"\";s:13:\"ext_include_3\";s:1:\"0\";}', '0', '0', '', '');
INSERT INTO `tb_fields` VALUES ('26', '2', '状态', 'status', 'varchar', '当前状态', 'radio', '', 'safe', '', '30', 'a:3:{s:11:\"option_list\";s:6:\"opt:22\";s:9:\"put_order\";s:1:\"0\";s:10:\"ext_select\";s:0:\"\";}', '0', '0', '', '');
INSERT INTO `tb_fields` VALUES ('27', '2', '标题', 'title', 'varchar', '标题', 'text', '', 'safe', '', '1', 'a:5:{s:8:\"form_btn\";s:0:\"\";s:10:\"ext_format\";s:0:\"\";s:15:\"ext_quick_words\";s:0:\"\";s:14:\"ext_quick_type\";s:0:\"\";s:13:\"ext_include_3\";s:1:\"0\";}', '0', '0', '', '');
INSERT INTO `tb_fields` VALUES ('28', '1', '摘要', 'summary', 'longtext', '摘要', 'editor', '', 'safe', '', '6', 'a:8:{s:6:\"height\";s:3:\"400\";s:7:\"is_code\";s:0:\"\";s:7:\"is_read\";s:0:\"\";s:7:\"inc_tag\";s:0:\"\";s:10:\"paste_text\";s:1:\"0\";s:4:\"btns\";s:0:\"\";s:8:\"is_float\";s:0:\"\";s:11:\"auto_height\";s:0:\"\";}', '0', '0', '', '');
INSERT INTO `tb_fields` VALUES ('31', '5', '打赏码-微信', 'paywechat', '', '', 'upload', '', 'safe', '', '40', 'a:2:{s:7:\"cate_id\";s:1:\"1\";s:11:\"is_multiple\";s:1:\"0\";}', '0', '0', '', '');
INSERT INTO `tb_fields` VALUES ('32', '5', '打赏码-支付宝', 'payali', '', '', 'upload', '', 'safe', '', '45', 'a:2:{s:7:\"cate_id\";s:1:\"1\";s:11:\"is_multiple\";s:1:\"0\";}', '0', '0', '', '');

-- ----------------------------
-- Table structure for tb_freight
-- ----------------------------
DROP TABLE IF EXISTS `tb_freight`;
CREATE TABLE `tb_freight` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '运费模板ID，自增ID',
  `site_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '网站ID',
  `title` varchar(100) NOT NULL COMMENT '模板名称，便于后台管理',
  `type` enum('weight','volume','number','fixed','price') NOT NULL DEFAULT 'weight' COMMENT 'weight重量volume体积number数量fixed固定值',
  `currency_id` int(11) NOT NULL DEFAULT '0' COMMENT '货币ID',
  `taxis` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='物流运费模板管理';

-- ----------------------------
-- Records of tb_freight
-- ----------------------------
INSERT INTO `tb_freight` VALUES ('1', '1', '计重运费模板', 'weight', '1', '10');
INSERT INTO `tb_freight` VALUES ('2', '1', '体积运费模板', 'volume', '1', '20');
INSERT INTO `tb_freight` VALUES ('3', '1', '基于数量的运费模板', 'number', '1', '30');
INSERT INTO `tb_freight` VALUES ('4', '1', '固定运费模板', 'fixed', '1', '40');
INSERT INTO `tb_freight` VALUES ('5', '1', '基于价格模板', 'price', '1', '50');

-- ----------------------------
-- Table structure for tb_freight_price
-- ----------------------------
DROP TABLE IF EXISTS `tb_freight_price`;
CREATE TABLE `tb_freight_price` (
  `zid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '区域ID',
  `unit_val` varchar(20) NOT NULL COMMENT '单位量，如0.5kg，或1个或1立方米，取决于系统设定',
  `price` varchar(50) NOT NULL DEFAULT '0' COMMENT '运费价格，最低为0，不能为负数',
  PRIMARY KEY (`zid`,`unit_val`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='单位体积价格';

-- ----------------------------
-- Records of tb_freight_price
-- ----------------------------
INSERT INTO `tb_freight_price` VALUES ('1', '1', '10');
INSERT INTO `tb_freight_price` VALUES ('1', '2', '17');
INSERT INTO `tb_freight_price` VALUES ('1', '3', '7*N');
INSERT INTO `tb_freight_price` VALUES ('2', '1', '10');
INSERT INTO `tb_freight_price` VALUES ('2', '2', '17');
INSERT INTO `tb_freight_price` VALUES ('2', '3', '8*N');
INSERT INTO `tb_freight_price` VALUES ('3', '1', '10');
INSERT INTO `tb_freight_price` VALUES ('3', '2', '24');
INSERT INTO `tb_freight_price` VALUES ('3', '3', '10*N');
INSERT INTO `tb_freight_price` VALUES ('4', '1', '10');
INSERT INTO `tb_freight_price` VALUES ('4', '2', '24');
INSERT INTO `tb_freight_price` VALUES ('4', '3', '10*N');
INSERT INTO `tb_freight_price` VALUES ('5', '1', '11');
INSERT INTO `tb_freight_price` VALUES ('5', '2', '22');
INSERT INTO `tb_freight_price` VALUES ('5', '3', '10*N');
INSERT INTO `tb_freight_price` VALUES ('6', '1', '15');
INSERT INTO `tb_freight_price` VALUES ('6', '2', '27');
INSERT INTO `tb_freight_price` VALUES ('6', '3', '10*N');
INSERT INTO `tb_freight_price` VALUES ('7', '1', '11');
INSERT INTO `tb_freight_price` VALUES ('7', '2', '22');
INSERT INTO `tb_freight_price` VALUES ('7', '3', '10*N');
INSERT INTO `tb_freight_price` VALUES ('8', '1', '30');
INSERT INTO `tb_freight_price` VALUES ('8', '2', '30');
INSERT INTO `tb_freight_price` VALUES ('8', '3', '10*N');
INSERT INTO `tb_freight_price` VALUES ('10', '0.5', '10');
INSERT INTO `tb_freight_price` VALUES ('10', '1', '12*N');
INSERT INTO `tb_freight_price` VALUES ('10', '1.5', '13*N');
INSERT INTO `tb_freight_price` VALUES ('11', '0.5', '20');
INSERT INTO `tb_freight_price` VALUES ('11', '1', '35');
INSERT INTO `tb_freight_price` VALUES ('11', '1.5', '45');
INSERT INTO `tb_freight_price` VALUES ('12', 'fixed', '10');
INSERT INTO `tb_freight_price` VALUES ('24', 'fixed', '20');
INSERT INTO `tb_freight_price` VALUES ('25', '0.01', '10');
INSERT INTO `tb_freight_price` VALUES ('25', '100', '10');
INSERT INTO `tb_freight_price` VALUES ('25', '10000', '0');

-- ----------------------------
-- Table structure for tb_freight_zone
-- ----------------------------
DROP TABLE IF EXISTS `tb_freight_zone`;
CREATE TABLE `tb_freight_zone` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `fid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '运费模板ID',
  `title` varchar(100) NOT NULL COMMENT '名称',
  `taxis` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `note` varchar(255) NOT NULL COMMENT '简单说明该区域信息',
  `area` longtext NOT NULL COMMENT '省份+城市',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='运费模板区域设置';

-- ----------------------------
-- Records of tb_freight_zone
-- ----------------------------
INSERT INTO `tb_freight_zone` VALUES ('1', '3', '华东', '10', '包括省市有上海，江苏，浙江，安徽，江西', 'a:5:{s:9:\"上海市\";a:1:{s:9:\"上海市\";b:1;}s:9:\"江苏省\";a:13:{s:9:\"南京市\";b:1;s:9:\"无锡市\";b:1;s:9:\"徐州市\";b:1;s:9:\"常州市\";b:1;s:9:\"苏州市\";b:1;s:9:\"南通市\";b:1;s:12:\"连云港市\";b:1;s:9:\"淮安市\";b:1;s:9:\"盐城市\";b:1;s:9:\"扬州市\";b:1;s:9:\"镇江市\";b:1;s:9:\"泰州市\";b:1;s:9:\"宿迁市\";b:1;}s:9:\"浙江省\";a:11:{s:9:\"杭州市\";b:1;s:9:\"宁波市\";b:1;s:9:\"温州市\";b:1;s:9:\"嘉兴市\";b:1;s:9:\"湖州市\";b:1;s:9:\"绍兴市\";b:1;s:9:\"金华市\";b:1;s:9:\"衢州市\";b:1;s:9:\"舟山市\";b:1;s:9:\"台州市\";b:1;s:9:\"丽水市\";b:1;}s:9:\"安徽省\";a:17:{s:9:\"合肥市\";b:1;s:9:\"芜湖市\";b:1;s:9:\"蚌埠市\";b:1;s:9:\"淮南市\";b:1;s:12:\"马鞍山市\";b:1;s:9:\"淮北市\";b:1;s:9:\"铜陵市\";b:1;s:9:\"安庆市\";b:1;s:9:\"黄山市\";b:1;s:9:\"滁州市\";b:1;s:9:\"阜阳市\";b:1;s:9:\"宿州市\";b:1;s:9:\"巢湖市\";b:1;s:9:\"六安市\";b:1;s:9:\"亳州市\";b:1;s:9:\"池州市\";b:1;s:9:\"宣城市\";b:1;}s:9:\"江西省\";a:11:{s:9:\"南昌市\";b:1;s:12:\"景德镇市\";b:1;s:9:\"萍乡市\";b:1;s:9:\"九江市\";b:1;s:9:\"新余市\";b:1;s:9:\"鹰潭市\";b:1;s:9:\"赣州市\";b:1;s:9:\"吉安市\";b:1;s:9:\"宜春市\";b:1;s:9:\"抚州市\";b:1;s:9:\"上饶市\";b:1;}}');
INSERT INTO `tb_freight_zone` VALUES ('2', '3', '华北', '20', '包含北京，天津，山西，山东，河北，内蒙古', 'a:6:{s:9:\"北京市\";a:1:{s:9:\"北京市\";b:1;}s:9:\"天津市\";a:1:{s:9:\"天津市\";b:1;}s:9:\"河北省\";a:11:{s:12:\"石家庄市\";b:1;s:9:\"唐山市\";b:1;s:12:\"秦皇岛市\";b:1;s:9:\"邯郸市\";b:1;s:9:\"邢台市\";b:1;s:9:\"保定市\";b:1;s:12:\"张家口市\";b:1;s:9:\"承德市\";b:1;s:9:\"沧州市\";b:1;s:9:\"廊坊市\";b:1;s:9:\"衡水市\";b:1;}s:9:\"山西省\";a:11:{s:9:\"太原市\";b:1;s:9:\"大同市\";b:1;s:9:\"阳泉市\";b:1;s:9:\"长治市\";b:1;s:9:\"晋城市\";b:1;s:9:\"朔州市\";b:1;s:9:\"晋中市\";b:1;s:9:\"运城市\";b:1;s:9:\"忻州市\";b:1;s:9:\"临汾市\";b:1;s:9:\"吕梁市\";b:1;}s:18:\"内蒙古自治区\";a:12:{s:15:\"呼和浩特市\";b:1;s:9:\"包头市\";b:1;s:9:\"乌海市\";b:1;s:9:\"赤峰市\";b:1;s:9:\"通辽市\";b:1;s:15:\"鄂尔多斯市\";b:1;s:15:\"呼伦贝尔市\";b:1;s:15:\"巴彦淖尔市\";b:1;s:15:\"乌兰察布市\";b:1;s:9:\"兴安盟\";b:1;s:15:\"锡林郭勒盟\";b:1;s:12:\"阿拉善盟\";b:1;}s:9:\"山东省\";a:17:{s:9:\"济南市\";b:1;s:9:\"青岛市\";b:1;s:9:\"淄博市\";b:1;s:9:\"枣庄市\";b:1;s:9:\"东营市\";b:1;s:9:\"烟台市\";b:1;s:9:\"潍坊市\";b:1;s:9:\"济宁市\";b:1;s:9:\"泰安市\";b:1;s:9:\"威海市\";b:1;s:9:\"日照市\";b:1;s:9:\"莱芜市\";b:1;s:9:\"临沂市\";b:1;s:9:\"德州市\";b:1;s:9:\"聊城市\";b:1;s:9:\"滨州市\";b:1;s:9:\"荷泽市\";b:1;}}');
INSERT INTO `tb_freight_zone` VALUES ('3', '3', '华中', '30', '包括湖南，湖北，河南', 'a:3:{s:9:\"河南省\";a:17:{s:9:\"郑州市\";b:1;s:9:\"开封市\";b:1;s:9:\"洛阳市\";b:1;s:12:\"平顶山市\";b:1;s:9:\"安阳市\";b:1;s:9:\"鹤壁市\";b:1;s:9:\"新乡市\";b:1;s:9:\"焦作市\";b:1;s:9:\"濮阳市\";b:1;s:9:\"许昌市\";b:1;s:9:\"漯河市\";b:1;s:12:\"三门峡市\";b:1;s:9:\"南阳市\";b:1;s:9:\"商丘市\";b:1;s:9:\"信阳市\";b:1;s:9:\"周口市\";b:1;s:12:\"驻马店市\";b:1;}s:9:\"湖北省\";a:14:{s:9:\"武汉市\";b:1;s:9:\"黄石市\";b:1;s:9:\"十堰市\";b:1;s:9:\"宜昌市\";b:1;s:9:\"襄樊市\";b:1;s:9:\"鄂州市\";b:1;s:9:\"荆门市\";b:1;s:9:\"孝感市\";b:1;s:9:\"荆州市\";b:1;s:9:\"黄冈市\";b:1;s:9:\"咸宁市\";b:1;s:9:\"随州市\";b:1;s:30:\"恩施土家族苗族自治州\";b:1;s:9:\"神农架\";b:1;}s:9:\"湖南省\";a:14:{s:9:\"长沙市\";b:1;s:9:\"株洲市\";b:1;s:9:\"湘潭市\";b:1;s:9:\"衡阳市\";b:1;s:9:\"邵阳市\";b:1;s:9:\"岳阳市\";b:1;s:9:\"常德市\";b:1;s:12:\"张家界市\";b:1;s:9:\"益阳市\";b:1;s:9:\"郴州市\";b:1;s:9:\"永州市\";b:1;s:9:\"怀化市\";b:1;s:9:\"娄底市\";b:1;s:30:\"湘西土家族苗族自治州\";b:1;}}');
INSERT INTO `tb_freight_zone` VALUES ('4', '3', '华南', '40', '包括广东，广西，福建，海南', 'a:4:{s:9:\"福建省\";a:9:{s:9:\"福州市\";b:1;s:9:\"厦门市\";b:1;s:9:\"莆田市\";b:1;s:9:\"三明市\";b:1;s:9:\"泉州市\";b:1;s:9:\"漳州市\";b:1;s:9:\"南平市\";b:1;s:9:\"龙岩市\";b:1;s:9:\"宁德市\";b:1;}s:9:\"广东省\";a:21:{s:9:\"广州市\";b:1;s:9:\"韶关市\";b:1;s:9:\"深圳市\";b:1;s:9:\"珠海市\";b:1;s:9:\"汕头市\";b:1;s:9:\"佛山市\";b:1;s:9:\"江门市\";b:1;s:9:\"湛江市\";b:1;s:9:\"茂名市\";b:1;s:9:\"肇庆市\";b:1;s:9:\"惠州市\";b:1;s:9:\"梅州市\";b:1;s:9:\"汕尾市\";b:1;s:9:\"河源市\";b:1;s:9:\"阳江市\";b:1;s:9:\"清远市\";b:1;s:9:\"东莞市\";b:1;s:9:\"中山市\";b:1;s:9:\"潮州市\";b:1;s:9:\"揭阳市\";b:1;s:9:\"云浮市\";b:1;}s:21:\"广西壮族自治区\";a:14:{s:9:\"南宁市\";b:1;s:9:\"柳州市\";b:1;s:9:\"桂林市\";b:1;s:9:\"梧州市\";b:1;s:9:\"北海市\";b:1;s:12:\"防城港市\";b:1;s:9:\"钦州市\";b:1;s:9:\"贵港市\";b:1;s:9:\"玉林市\";b:1;s:9:\"百色市\";b:1;s:9:\"贺州市\";b:1;s:9:\"河池市\";b:1;s:9:\"来宾市\";b:1;s:9:\"崇左市\";b:1;}s:9:\"海南省\";a:2:{s:9:\"海口市\";b:1;s:9:\"三亚市\";b:1;}}');
INSERT INTO `tb_freight_zone` VALUES ('5', '3', '东北', '50', '包括辽宁，吉林，黑龙江', 'a:3:{s:9:\"辽宁省\";a:14:{s:9:\"沈阳市\";b:1;s:9:\"大连市\";b:1;s:9:\"鞍山市\";b:1;s:9:\"抚顺市\";b:1;s:9:\"本溪市\";b:1;s:9:\"丹东市\";b:1;s:9:\"锦州市\";b:1;s:9:\"营口市\";b:1;s:9:\"阜新市\";b:1;s:9:\"辽阳市\";b:1;s:9:\"盘锦市\";b:1;s:9:\"铁岭市\";b:1;s:9:\"朝阳市\";b:1;s:12:\"葫芦岛市\";b:1;}s:9:\"吉林省\";a:9:{s:9:\"长春市\";b:1;s:9:\"吉林市\";b:1;s:9:\"四平市\";b:1;s:9:\"辽源市\";b:1;s:9:\"通化市\";b:1;s:9:\"白山市\";b:1;s:9:\"松原市\";b:1;s:9:\"白城市\";b:1;s:24:\"延边朝鲜族自治州\";b:1;}s:12:\"黑龙江省\";a:13:{s:12:\"哈尔滨市\";b:1;s:15:\"齐齐哈尔市\";b:1;s:9:\"鸡西市\";b:1;s:9:\"鹤岗市\";b:1;s:12:\"双鸭山市\";b:1;s:9:\"大庆市\";b:1;s:9:\"伊春市\";b:1;s:12:\"佳木斯市\";b:1;s:12:\"七台河市\";b:1;s:12:\"牡丹江市\";b:1;s:9:\"黑河市\";b:1;s:9:\"绥化市\";b:1;s:18:\"大兴安岭地区\";b:1;}}');
INSERT INTO `tb_freight_zone` VALUES ('6', '3', '西北', '60', '包括陕西，甘肃，宁夏，青海，新疆', 'a:5:{s:9:\"陕西省\";a:10:{s:9:\"西安市\";b:1;s:9:\"铜川市\";b:1;s:9:\"宝鸡市\";b:1;s:9:\"咸阳市\";b:1;s:9:\"渭南市\";b:1;s:9:\"延安市\";b:1;s:9:\"汉中市\";b:1;s:9:\"榆林市\";b:1;s:9:\"安康市\";b:1;s:9:\"商洛市\";b:1;}s:9:\"甘肃省\";a:14:{s:9:\"兰州市\";b:1;s:12:\"嘉峪关市\";b:1;s:9:\"金昌市\";b:1;s:9:\"白银市\";b:1;s:9:\"天水市\";b:1;s:9:\"武威市\";b:1;s:9:\"张掖市\";b:1;s:9:\"平凉市\";b:1;s:9:\"酒泉市\";b:1;s:9:\"庆阳市\";b:1;s:9:\"定西市\";b:1;s:9:\"陇南市\";b:1;s:21:\"临夏回族自治州\";b:1;s:21:\"甘南藏族自治州\";b:1;}s:9:\"青海省\";a:8:{s:9:\"西宁市\";b:1;s:12:\"海东地区\";b:1;s:21:\"海北藏族自治州\";b:1;s:21:\"黄南藏族自治州\";b:1;s:21:\"海南藏族自治州\";b:1;s:21:\"果洛藏族自治州\";b:1;s:21:\"玉树藏族自治州\";b:1;s:30:\"海西蒙古族藏族自治州\";b:1;}s:21:\"宁夏回族自治区\";a:5:{s:9:\"银川市\";b:1;s:12:\"石嘴山市\";b:1;s:9:\"吴忠市\";b:1;s:9:\"固原市\";b:1;s:9:\"中卫市\";b:1;}s:24:\"新疆维吾尔自治区\";a:18:{s:15:\"乌鲁木齐市\";b:1;s:15:\"克拉玛依市\";b:1;s:15:\"吐鲁番地区\";b:1;s:12:\"哈密地区\";b:1;s:21:\"昌吉回族自治州\";b:1;s:27:\"博尔塔拉蒙古自治州\";b:1;s:27:\"巴音郭楞蒙古自治州\";b:1;s:15:\"阿克苏地区\";b:1;s:33:\"克孜勒苏柯尔克孜自治州\";b:1;s:12:\"喀什地区\";b:1;s:12:\"和田地区\";b:1;s:24:\"伊犁哈萨克自治州\";b:1;s:12:\"塔城地区\";b:1;s:15:\"阿勒泰地区\";b:1;s:12:\"石河子市\";b:1;s:12:\"阿拉尔市\";b:1;s:15:\"图木舒克市\";b:1;s:12:\"五家渠市\";b:1;}}');
INSERT INTO `tb_freight_zone` VALUES ('7', '3', '西南', '70', '包括重庆，云南，贵州，西藏，四川', 'a:5:{s:9:\"重庆市\";a:1:{s:9:\"重庆市\";b:1;}s:9:\"四川省\";a:21:{s:9:\"成都市\";b:1;s:9:\"自贡市\";b:1;s:12:\"攀枝花市\";b:1;s:9:\"泸州市\";b:1;s:9:\"德阳市\";b:1;s:9:\"绵阳市\";b:1;s:9:\"广元市\";b:1;s:9:\"遂宁市\";b:1;s:9:\"内江市\";b:1;s:9:\"乐山市\";b:1;s:9:\"南充市\";b:1;s:9:\"眉山市\";b:1;s:9:\"宜宾市\";b:1;s:9:\"广安市\";b:1;s:9:\"达州市\";b:1;s:9:\"雅安市\";b:1;s:9:\"巴中市\";b:1;s:9:\"资阳市\";b:1;s:27:\"阿坝藏族羌族自治州\";b:1;s:21:\"甘孜藏族自治州\";b:1;s:21:\"凉山彝族自治州\";b:1;}s:9:\"贵州省\";a:9:{s:9:\"贵阳市\";b:1;s:12:\"六盘水市\";b:1;s:9:\"遵义市\";b:1;s:9:\"安顺市\";b:1;s:12:\"铜仁地区\";b:1;s:33:\"黔西南布依族苗族自治州\";b:1;s:12:\"毕节地区\";b:1;s:30:\"黔东南苗族侗族自治州\";b:1;s:30:\"黔南布依族苗族自治州\";b:1;}s:9:\"云南省\";a:16:{s:9:\"昆明市\";b:1;s:9:\"曲靖市\";b:1;s:9:\"玉溪市\";b:1;s:9:\"保山市\";b:1;s:9:\"昭通市\";b:1;s:9:\"丽江市\";b:1;s:9:\"思茅市\";b:1;s:9:\"临沧市\";b:1;s:21:\"楚雄彝族自治州\";b:1;s:30:\"红河哈尼族彝族自治州\";b:1;s:27:\"文山壮族苗族自治州\";b:1;s:27:\"西双版纳傣族自治州\";b:1;s:21:\"大理白族自治州\";b:1;s:30:\"德宏傣族景颇族自治州\";b:1;s:24:\"怒江傈僳族自治州\";b:1;s:21:\"迪庆藏族自治州\";b:1;}s:15:\"西藏自治区\";a:7:{s:9:\"拉萨市\";b:1;s:12:\"昌都地区\";b:1;s:12:\"山南地区\";b:1;s:15:\"日喀则地区\";b:1;s:12:\"那曲地区\";b:1;s:12:\"阿里地区\";b:1;s:12:\"林芝地区\";b:1;}}');
INSERT INTO `tb_freight_zone` VALUES ('8', '3', '港澳台', '80', '包括包港，澳门，台湾', 'a:3:{s:21:\"香港特别行政区\";a:1:{s:21:\"香港特别行政区\";b:1;}s:21:\"澳门特别行政区\";a:1:{s:21:\"澳门特别行政区\";b:1;}s:9:\"台湾省\";a:1:{s:9:\"台湾省\";b:1;}}');
INSERT INTO `tb_freight_zone` VALUES ('10', '1', 'zoom1', '10', '广东深圳', 'a:1:{s:9:\"广东省\";a:1:{s:9:\"深圳市\";b:1;}}');
INSERT INTO `tb_freight_zone` VALUES ('11', '1', 'zoom2', '20', '福建及广东', 'a:2:{s:9:\"福建省\";a:9:{s:9:\"福州市\";b:1;s:9:\"厦门市\";b:1;s:9:\"莆田市\";b:1;s:9:\"三明市\";b:1;s:9:\"泉州市\";b:1;s:9:\"漳州市\";b:1;s:9:\"南平市\";b:1;s:9:\"龙岩市\";b:1;s:9:\"宁德市\";b:1;}s:9:\"广东省\";a:20:{s:9:\"广州市\";b:1;s:9:\"韶关市\";b:1;s:9:\"珠海市\";b:1;s:9:\"汕头市\";b:1;s:9:\"佛山市\";b:1;s:9:\"江门市\";b:1;s:9:\"湛江市\";b:1;s:9:\"茂名市\";b:1;s:9:\"肇庆市\";b:1;s:9:\"惠州市\";b:1;s:9:\"梅州市\";b:1;s:9:\"汕尾市\";b:1;s:9:\"河源市\";b:1;s:9:\"阳江市\";b:1;s:9:\"清远市\";b:1;s:9:\"东莞市\";b:1;s:9:\"中山市\";b:1;s:9:\"潮州市\";b:1;s:9:\"揭阳市\";b:1;s:9:\"云浮市\";b:1;}}');
INSERT INTO `tb_freight_zone` VALUES ('12', '4', '一线城市', '10', '', 'a:4:{s:9:\"北京市\";a:1:{s:9:\"北京市\";b:1;}s:9:\"天津市\";a:1:{s:9:\"天津市\";b:1;}s:9:\"上海市\";a:1:{s:9:\"上海市\";b:1;}s:9:\"广东省\";a:2:{s:9:\"广州市\";b:1;s:9:\"深圳市\";b:1;}}');
INSERT INTO `tb_freight_zone` VALUES ('24', '4', '偏远地区', '20', '', 'a:1:{s:24:\"新疆维吾尔自治区\";a:18:{s:15:\"乌鲁木齐市\";b:1;s:15:\"克拉玛依市\";b:1;s:15:\"吐鲁番地区\";b:1;s:12:\"哈密地区\";b:1;s:21:\"昌吉回族自治州\";b:1;s:27:\"博尔塔拉蒙古自治州\";b:1;s:27:\"巴音郭楞蒙古自治州\";b:1;s:15:\"阿克苏地区\";b:1;s:33:\"克孜勒苏柯尔克孜自治州\";b:1;s:12:\"喀什地区\";b:1;s:12:\"和田地区\";b:1;s:24:\"伊犁哈萨克自治州\";b:1;s:12:\"塔城地区\";b:1;s:15:\"阿勒泰地区\";b:1;s:12:\"石河子市\";b:1;s:12:\"阿拉尔市\";b:1;s:15:\"图木舒克市\";b:1;s:12:\"五家渠市\";b:1;}}');
INSERT INTO `tb_freight_zone` VALUES ('25', '5', '华南', '10', '', 'a:4:{s:9:\"福建省\";a:9:{s:9:\"福州市\";b:1;s:9:\"厦门市\";b:1;s:9:\"莆田市\";b:1;s:9:\"三明市\";b:1;s:9:\"泉州市\";b:1;s:9:\"漳州市\";b:1;s:9:\"南平市\";b:1;s:9:\"龙岩市\";b:1;s:9:\"宁德市\";b:1;}s:9:\"广东省\";a:21:{s:9:\"广州市\";b:1;s:9:\"韶关市\";b:1;s:9:\"深圳市\";b:1;s:9:\"珠海市\";b:1;s:9:\"汕头市\";b:1;s:9:\"佛山市\";b:1;s:9:\"江门市\";b:1;s:9:\"湛江市\";b:1;s:9:\"茂名市\";b:1;s:9:\"肇庆市\";b:1;s:9:\"惠州市\";b:1;s:9:\"梅州市\";b:1;s:9:\"汕尾市\";b:1;s:9:\"河源市\";b:1;s:9:\"阳江市\";b:1;s:9:\"清远市\";b:1;s:9:\"东莞市\";b:1;s:9:\"中山市\";b:1;s:9:\"潮州市\";b:1;s:9:\"揭阳市\";b:1;s:9:\"云浮市\";b:1;}s:21:\"广西壮族自治区\";a:14:{s:9:\"南宁市\";b:1;s:9:\"柳州市\";b:1;s:9:\"桂林市\";b:1;s:9:\"梧州市\";b:1;s:9:\"北海市\";b:1;s:12:\"防城港市\";b:1;s:9:\"钦州市\";b:1;s:9:\"贵港市\";b:1;s:9:\"玉林市\";b:1;s:9:\"百色市\";b:1;s:9:\"贺州市\";b:1;s:9:\"河池市\";b:1;s:9:\"来宾市\";b:1;s:9:\"崇左市\";b:1;}s:9:\"海南省\";a:2:{s:9:\"海口市\";b:1;s:9:\"三亚市\";b:1;}}');

-- ----------------------------
-- Table structure for tb_gateway
-- ----------------------------
DROP TABLE IF EXISTS `tb_gateway`;
CREATE TABLE `tb_gateway` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `site_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '站点ID，为0表示所有站点可用',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0不可用1可用',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1表示默认使用',
  `type` varchar(50) NOT NULL COMMENT '类型，gateway文件夹的子文件夹',
  `code` varchar(50) NOT NULL COMMENT '路由引挈',
  `title` varchar(255) NOT NULL COMMENT '名称',
  `taxis` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序',
  `note` varchar(255) NOT NULL COMMENT '功能备注',
  `ext` text NOT NULL COMMENT '扩展参数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='第三方网关路由引挈';

-- ----------------------------
-- Records of tb_gateway
-- ----------------------------
INSERT INTO `tb_gateway` VALUES ('9', '1', '1', '1', 'sms', 'aliyun', '阿里云短信', '5', '', 'a:6:{s:6:\"appkey\";s:4:\"****\";s:9:\"appsecret\";s:4:\"****\";s:6:\"server\";s:21:\"dysmsapi.aliyuncs.com\";s:9:\"regoin_id\";s:11:\"cn-hangzhou\";s:7:\"signame\";s:12:\"锟铻科技\";s:6:\"mobile\";s:11:\"15818533971\";}');
INSERT INTO `tb_gateway` VALUES ('10', '1', '1', '1', 'email', 'aliyun', '阿里云邮件推送', '5', '', 'a:6:{s:6:\"appkey\";s:5:\"*****\";s:9:\"appsecret\";s:5:\"*****\";s:6:\"server\";s:11:\"cn-hangzhou\";s:7:\"signame\";s:5:\"phpok\";s:5:\"email\";s:28:\"admin@aliyun.email.phpok.org\";s:8:\"nickname\";s:12:\"锟铻科技\";}');

-- ----------------------------
-- Table structure for tb_gd
-- ----------------------------
DROP TABLE IF EXISTS `tb_gd`;
CREATE TABLE `tb_gd` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID号',
  `identifier` varchar(100) NOT NULL COMMENT '标识串',
  `width` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '图片宽度',
  `height` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '图片高度',
  `mark_picture` varchar(255) NOT NULL COMMENT '水印图片位置',
  `mark_position` varchar(100) NOT NULL COMMENT '水印位置',
  `cut_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '图片生成方式，支持缩放法、裁剪法、等宽、等高及自定义五种，默认使用缩放法',
  `quality` tinyint(3) unsigned NOT NULL DEFAULT '100' COMMENT '图片生成质量，默认是100',
  `bgcolor` varchar(10) NOT NULL DEFAULT 'FFFFFF' COMMENT '补白背景色，默认是白色',
  `trans` tinyint(3) unsigned NOT NULL DEFAULT '65' COMMENT '透明度',
  `editor` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0普通1默认插入编辑器',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='上传图片自动生成方案';

-- ----------------------------
-- Records of tb_gd
-- ----------------------------
INSERT INTO `tb_gd` VALUES ('2', 'thumb', '320', '320', '', 'bottom-right', '1', '80', 'FFFFFF', '0', '0');
INSERT INTO `tb_gd` VALUES ('12', 'auto', '0', '0', '', 'bottom-right', '0', '80', 'FFFFFF', '0', '1');

-- ----------------------------
-- Table structure for tb_list
-- ----------------------------
DROP TABLE IF EXISTS `tb_list`;
CREATE TABLE `tb_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID号',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0为根主题，其他ID对应list表的id字段',
  `cate_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `module_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '模块ID',
  `project_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '项目ID',
  `site_id` mediumint(8) unsigned NOT NULL COMMENT '网站ID',
  `title` varchar(255) NOT NULL COMMENT '主题',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `lastdate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后修改时间',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0未审核，1已审核',
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0显示，1隐藏',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '查看次数',
  `tpl` varchar(255) NOT NULL COMMENT '自定义的模板',
  `seo_title` varchar(255) NOT NULL COMMENT 'SEO标题',
  `seo_keywords` varchar(255) NOT NULL COMMENT 'SEO关键字',
  `seo_desc` varchar(255) NOT NULL COMMENT 'SEO描述',
  `tag` varchar(255) NOT NULL COMMENT 'tag标签',
  `attr` varchar(255) NOT NULL COMMENT '主题属性',
  `replydate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后回复时间',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID号，为0表示管理员发布',
  `identifier` varchar(255) NOT NULL COMMENT '内容标识串',
  `integral` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '财富基于，用于计算财富的基础量',
  `style` varchar(255) NOT NULL COMMENT 'CSS样式',
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  KEY `site_id` (`site_id`,`identifier`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='内容主表';

-- ----------------------------
-- Records of tb_list
-- ----------------------------
INSERT INTO `tb_list` VALUES ('45', '0', '4', '1', '11', '1', '图片优化之懒加载原理浅析', '1596508544', '1596508544', '0', '1', '0', '0', '', '', '', '', '', '', '0', '0', '', '0', '');
INSERT INTO `tb_list` VALUES ('48', '0', '5', '1', '11', '1', '演示产品博客标题', '1596509183', '1596509451', '0', '1', '0', '1', '', '', '', '', '', 'h', '0', '0', '', '0', '');
INSERT INTO `tb_list` VALUES ('46', '0', '4', '1', '11', '1', '红色小裤衩博客使用说明', '1596508844', '1596508844', '0', '1', '0', '2', '', '', '', '', '', 'h', '0', '0', '', '0', '');

-- ----------------------------
-- Table structure for tb_list_1
-- ----------------------------
DROP TABLE IF EXISTS `tb_list_1`;
CREATE TABLE `tb_list_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `site_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '网站ID',
  `content` longtext NOT NULL COMMENT '内容',
  `blogstag` varchar(255) NOT NULL DEFAULT '' COMMENT '标签',
  `author` varchar(255) NOT NULL DEFAULT '' COMMENT '作者',
  `project_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '项目ID',
  `cate_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '主分类ID',
  `summary` longtext NOT NULL COMMENT '摘要',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`),
  KEY `site_project` (`site_id`,`project_id`),
  KEY `site_cate` (`site_id`,`cate_id`),
  KEY `project_cate` (`site_id`,`project_id`,`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='博客模块';

-- ----------------------------
-- Records of tb_list_1
-- ----------------------------
INSERT INTO `tb_list_1` VALUES ('45', '1', '<div><h1 class=\"heading\">实现思路：以图片为例</h1><h3 class=\"heading\">思路：</h3><ul class=\" list-paddingleft-2\" style=\"width: 1406px;\"><li><p style=\"font-size: 16px; line-height: 24px;\">在图片中设置自定义属性data-img=&quot;图片地址&quot;，图片默认的地址统一选择一个提示图片之类的</p></li><li><p style=\"font-size: 16px; line-height: 24px;\">图片在页面中距离顶部的高度imgHeight</p><p style=\"font-size: 16px; line-height: 24px;\">与页面滚动出去的高度scrollTop</p><p style=\"font-size: 16px; line-height: 24px;\">屏幕的高度 screenHight</p></li></ul><h4 class=\"heading\">判断imgHeight 与（scrollTop+screenHight）</h4><ul class=\" list-paddingleft-2\" style=\"width: 1406px;\"><li><p style=\"font-size: 16px; line-height: 24px;\">当imgHeight 小于 （scrollTop+screenHight） 则把真实的图片地址赋给img 的src属性</p></li></ul><p style=\"font-size: 16px; line-height: 24px;\"><br/></p><p style=\"font-size: 16px; line-height: 24px;\"><br/></p><p style=\"font-size: 16px; line-height: 24px;\"><span style=\"font-size: 24px;\"><strong>html代码部分</strong></span><br/></p></div><p style=\"font-size: 16px; line-height: 24px;\"><br/></p><div style=\"color: rgb(212, 212, 212); background-color: rgb(30, 30, 30); font-family: Consolas, &quot;Courier New&quot;, monospace; font-size: 14px; line-height: 19px; white-space: pre;\"><p style=\"font-size: 14px; line-height: 21px;\"><span style=\"color: rgb(128, 128, 128);\"><br/></span></p><p style=\"font-size: 14px; line-height: 21px;\"><span style=\"color: rgb(128, 128, 128);\">&lt;</span><span style=\"color: rgb(86, 156, 214);\">div</span>&nbsp;<span style=\"color: rgb(156, 220, 254);\">class</span>=<span style=\"color: rgb(206, 145, 120);\">&quot;container1&quot;</span><span style=\"color: rgb(128, 128, 128);\">&gt;</span></p><br/><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(128, 128, 128);\">&lt;</span><span style=\"color: rgb(86, 156, 214);\">ul</span><span style=\"color: rgb(128, 128, 128);\">&gt;</span>&nbsp;</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(128, 128, 128);\">&lt;</span><span style=\"color: rgb(86, 156, 214);\">li</span><span style=\"color: rgb(128, 128, 128);\">&gt;</span>&nbsp;</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(128, 128, 128);\">&lt;</span><span style=\"color: rgb(86, 156, 214);\">a</span>&nbsp;<span style=\"color: rgb(156, 220, 254);\">href</span>=<span style=\"color: rgb(206, 145, 120);\">&quot;javascript:void(0)&quot;</span><span style=\"color: rgb(128, 128, 128);\">&gt;</span>&nbsp;<span style=\"color: rgb(128, 128, 128);\">&lt;</span><span style=\"color: rgb(86, 156, 214);\">img</span>&nbsp;<span style=\"color: rgb(156, 220, 254);\">data-img</span>=<span style=\"color: rgb(206, 145, 120);\">&quot;img/img1.png&quot;</span>&nbsp;<span style=\"color: rgb(156, 220, 254);\">src</span>=<span style=\"color: rgb(206, 145, 120);\">&quot;img/blank.jpg&quot;</span><span style=\"color: rgb(128, 128, 128);\">&gt;</span>&nbsp;<span style=\"color: rgb(128, 128, 128);\">&lt;/</span><span style=\"color: rgb(86, 156, 214);\">a</span><span style=\"color: rgb(128, 128, 128);\">&gt;</span>&nbsp;</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(128, 128, 128);\">&lt;/</span><span style=\"color: rgb(86, 156, 214);\">li</span><span style=\"color: rgb(128, 128, 128);\">&gt;</span>&nbsp;</div><br/><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(128, 128, 128);\">&lt;</span><span style=\"color: rgb(86, 156, 214);\">li</span><span style=\"color: rgb(128, 128, 128);\">&gt;</span>&nbsp;<span style=\"color: rgb(128, 128, 128);\">&lt;</span><span style=\"color: rgb(86, 156, 214);\">a</span>&nbsp;<span style=\"color: rgb(156, 220, 254);\">href</span>=<span style=\"color: rgb(206, 145, 120);\">&quot;javascript:void(0)&quot;</span><span style=\"color: rgb(128, 128, 128);\">&gt;</span>&nbsp;<span style=\"color: rgb(128, 128, 128);\">&lt;</span><span style=\"color: rgb(86, 156, 214);\">img</span>&nbsp;<span style=\"color: rgb(156, 220, 254);\">data-img</span>=<span style=\"color: rgb(206, 145, 120);\">&quot;img/img2.png&quot;</span>&nbsp;<span style=\"color: rgb(156, 220, 254);\">src</span>=<span style=\"color: rgb(206, 145, 120);\">&quot;img/blank.jpg&quot;</span><span style=\"color: rgb(128, 128, 128);\">&gt;</span>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(128, 128, 128);\">&lt;/</span><span style=\"color: rgb(86, 156, 214);\">a</span><span style=\"color: rgb(128, 128, 128);\">&gt;</span>&nbsp;<span style=\"color: rgb(128, 128, 128);\">&lt;/</span><span style=\"color: rgb(86, 156, 214);\">li</span><span style=\"color: rgb(128, 128, 128);\">&gt;</span>&nbsp;</div><br/><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--&nbsp;以下省略多个相同的li标签--&gt;&nbsp;</div><br/><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(128, 128, 128);\">&lt;/</span><span style=\"color: rgb(86, 156, 214);\">ul</span><span style=\"color: rgb(128, 128, 128);\">&gt;</span>&nbsp;</div><br/><p style=\"font-size: 14px; line-height: 21px;\"><span style=\"color: rgb(128, 128, 128);\">&lt;/</span><span style=\"color: rgb(86, 156, 214);\">div</span><span style=\"color: rgb(128, 128, 128);\">&gt;</span></p><p style=\"font-size: 14px; line-height: 21px;\"><br/></p></div><p style=\"font-size: 16px; line-height: 24px;\"><br/></p><p style=\"font-size: 16px; line-height: 24px;\"><span style=\"font-size: 24px;\"><strong>js代码部分</strong></span></p><div style=\"color: rgb(212, 212, 212); background-color: rgb(30, 30, 30); font-family: Consolas, &quot;Courier New&quot;, monospace; font-size: 14px; line-height: 19px; white-space: pre;\"><p style=\"font-size: 14px; line-height: 21px;\"><span style=\"color: rgb(220, 220, 170);\"><br/></span></p><p style=\"font-size: 14px; line-height: 21px;\"><span style=\"color: rgb(220, 220, 170);\">$</span>(<span style=\"color: rgb(86, 156, 214);\">function</span>&nbsp;()&nbsp;{</p><div>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(156, 220, 254);\">$</span>.<span style=\"color: rgb(156, 220, 254);\">fn</span>.<span style=\"color: rgb(220, 220, 170);\">extend</span>({</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(220, 220, 170);\">lazyLoad</span><span style=\"color: rgb(156, 220, 254);\">:</span>&nbsp;<span style=\"color: rgb(86, 156, 214);\">function</span>&nbsp;()&nbsp;{</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(86, 156, 214);\">var</span>&nbsp;<span style=\"color: rgb(156, 220, 254);\">imgs</span>&nbsp;=&nbsp;<span style=\"color: rgb(220, 220, 170);\">$</span>(<span style=\"color: rgb(86, 156, 214);\">this</span>).<span style=\"color: rgb(220, 220, 170);\">find</span>(<span style=\"color: rgb(206, 145, 120);\">&quot;img&quot;</span>);</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(86, 156, 214);\">var</span>&nbsp;<span style=\"color: rgb(156, 220, 254);\">screenHight</span>&nbsp;=&nbsp;<span style=\"color: rgb(220, 220, 170);\">$</span>(<span style=\"color: rgb(156, 220, 254);\">window</span>).<span style=\"color: rgb(220, 220, 170);\">height</span>();</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(220, 220, 170);\">$</span>(<span style=\"color: rgb(156, 220, 254);\">window</span>).<span style=\"color: rgb(220, 220, 170);\">on</span>(<span style=\"color: rgb(206, 145, 120);\">&quot;scroll&quot;</span>,&nbsp;<span style=\"color: rgb(86, 156, 214);\">function</span>&nbsp;()&nbsp;{</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(86, 156, 214);\">var</span>&nbsp;<span style=\"color: rgb(156, 220, 254);\">scrollTop</span>&nbsp;=&nbsp;<span style=\"color: rgb(220, 220, 170);\">$</span>(<span style=\"color: rgb(156, 220, 254);\">window</span>).<span style=\"color: rgb(220, 220, 170);\">scrollTop</span>();</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(156, 220, 254);\">imgs</span>.<span style=\"color: rgb(220, 220, 170);\">each</span>(<span style=\"color: rgb(86, 156, 214);\">function</span>&nbsp;(<span style=\"color: rgb(156, 220, 254);\">index</span>,&nbsp;<span style=\"color: rgb(156, 220, 254);\">item</span>)&nbsp;{</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(106, 153, 85);\">//如果loaded为true&nbsp;则加载过</span></div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(197, 134, 192);\">if</span>&nbsp;(<span style=\"color: rgb(220, 220, 170);\">$</span>(<span style=\"color: rgb(156, 220, 254);\">item</span>).<span style=\"color: rgb(220, 220, 170);\">attr</span>(<span style=\"color: rgb(206, 145, 120);\">&quot;data-loaded&quot;</span>))&nbsp;{</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(197, 134, 192);\">return</span>;</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;<span style=\"color: rgb(197, 134, 192);\">else</span>&nbsp;{</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(86, 156, 214);\">var</span>&nbsp;<span style=\"color: rgb(156, 220, 254);\">imgHeight</span>&nbsp;=&nbsp;<span style=\"color: rgb(220, 220, 170);\">$</span>(<span style=\"color: rgb(156, 220, 254);\">item</span>).<span style=\"color: rgb(220, 220, 170);\">offset</span>().<span style=\"color: rgb(156, 220, 254);\">top</span>;</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(106, 153, 85);\">//当滚动出去的距离+屏幕高度&nbsp;&gt;图片距离顶部的高度</span></div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(197, 134, 192);\">if</span>&nbsp;(<span style=\"color: rgb(156, 220, 254);\">screenHight</span>&nbsp;+&nbsp;<span style=\"color: rgb(156, 220, 254);\">scrollTop</span>&nbsp;&gt;&nbsp;<span style=\"color: rgb(156, 220, 254);\">imgHeight</span>)&nbsp;{</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(86, 156, 214);\">var</span>&nbsp;<span style=\"color: rgb(156, 220, 254);\">src</span>&nbsp;=&nbsp;<span style=\"color: rgb(220, 220, 170);\">$</span>(<span style=\"color: rgb(156, 220, 254);\">item</span>).<span style=\"color: rgb(220, 220, 170);\">attr</span>(<span style=\"color: rgb(206, 145, 120);\">&quot;data-img&quot;</span>);</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(220, 220, 170);\">$</span>(<span style=\"color: rgb(156, 220, 254);\">item</span>).<span style=\"color: rgb(220, 220, 170);\">attr</span>(<span style=\"color: rgb(206, 145, 120);\">&quot;src&quot;</span>,&nbsp;<span style=\"color: rgb(156, 220, 254);\">src</span>);</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(106, 153, 85);\">//设置loaded标记</span></div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(220, 220, 170);\">$</span>(<span style=\"color: rgb(156, 220, 254);\">item</span>).<span style=\"color: rgb(220, 220, 170);\">attr</span>(<span style=\"color: rgb(206, 145, 120);\">&#39;loaded&#39;</span>,&nbsp;<span style=\"color: rgb(86, 156, 214);\">true</span>);</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;})</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}).<span style=\"color: rgb(220, 220, 170);\">trigger</span>(<span style=\"color: rgb(206, 145, 120);\">&quot;scroll&quot;</span>);</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</div><br/><div>&nbsp;&nbsp;&nbsp;&nbsp;})</div><p style=\"font-size: 14px; line-height: 21px;\">})</p><p style=\"font-size: 14px; line-height: 21px;\"><br/></p></div><p style=\"font-size: 16px; line-height: 24px;\"><span style=\"font-size: 24px;\"></span><br/></p><p style=\"font-size: 16px; line-height: 24px; text-align: right;\">2019/9/3 08:15:20</p><p style=\"font-size: 16px; line-height: 24px;\"><br/></p><p><br/></p>', 'vue', 'pickeddeng', '11', '4', '<h1 class=\"heading\" style=\"white-space: normal;\">实现思路：以图片为例</h1><h3 class=\"heading\" style=\"white-space: normal;\">思路：</h3><ul class=\" list-paddingleft-2\" style=\"width: 1406px; white-space: normal;\"><li><p style=\"font-size: 16px; line-height: 24px;\">在图片中设置自定义属性data-img=&quot;图片地址&quot;，图片默认的地址统一选择一个提示图片之类的</p></li><li><p style=\"font-size: 16px; line-height: 24px;\">图片在页面中距离顶部的高度imgHeight</p><p style=\"font-size: 16px; line-height: 24px;\">与页面滚动出去的高度scrollTop</p><p style=\"font-size: 16px; line-height: 24px;\">屏幕的高度 screenHight</p></li></ul><h4 class=\"heading\" style=\"white-space: normal;\">判断imgHeight 与（scrollTop+screenHight）</h4><ul class=\" list-paddingleft-2\" style=\"width: 1406px; white-space: normal;\"><li><p style=\"font-size: 16px; line-height: 24px;\">当imgHeight 小于 （scrollTop+screenHight） 则把真实的图片地址赋给img 的src属性</p></li></ul><p><br/></p>');
INSERT INTO `tb_list_1` VALUES ('46', '1', '<p>演示博客的你内容</p>', 'vue', '', '11', '4', '<p style=\"text-align: center;\"><img src=\"res/_cache/auto/23/23.jpg\" title=\"qq群\" alt=\"qq群\" width=\"315\" height=\"515\" style=\"width: 315px; height: 515px;\"/></p><p style=\"text-align: center;\">&nbsp; &nbsp;<strong>博客系统交流群，扫码进群交流吧</strong><br/></p>');
INSERT INTO `tb_list_1` VALUES ('48', '1', '<p>演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容演示博客内容。</p><p style=\"text-align: center;\"><img src=\"res/_cache/auto/2/2.png\" style=\"\" title=\"45986518\"/></p><p style=\"text-align: center;\"><img src=\"res/_cache/auto/21/21.jpg\" style=\"\" title=\"149-20032314300R-2\"/></p><p style=\"text-align: center;\"><img src=\"res/_cache/auto/22/22.jpg\" style=\"\" title=\"149-20032314300V-1\"/></p><p><br/></p>', 'vue', '', '11', '5', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 18px;\">演示产品博客摘要，支持图片视频等</span></strong></p><p style=\"text-align: center;\"><img src=\"res/_cache/auto/12/12.png\" title=\"45986518\" alt=\"45986518\" width=\"322\" height=\"322\" style=\"width: 322px; height: 322px;\"/></p>');

-- ----------------------------
-- Table structure for tb_list_attr
-- ----------------------------
DROP TABLE IF EXISTS `tb_list_attr`;
CREATE TABLE `tb_list_attr` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `tid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '主题ID',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '属性组ID',
  `vid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '参数ID',
  `price` decimal(10,4) NOT NULL DEFAULT '0.0000' COMMENT '增减价格值',
  `weight` float NOT NULL DEFAULT '0' COMMENT '重量增减',
  `volume` float NOT NULL DEFAULT '0' COMMENT '体积增减值，带-号为减值',
  `taxis` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='主题属性';

-- ----------------------------
-- Records of tb_list_attr
-- ----------------------------

-- ----------------------------
-- Table structure for tb_list_biz
-- ----------------------------
DROP TABLE IF EXISTS `tb_list_biz`;
CREATE TABLE `tb_list_biz` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '产品ID',
  `price` decimal(10,4) NOT NULL DEFAULT '0.0000' COMMENT '价格',
  `currency_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '货币ID',
  `weight` float unsigned NOT NULL DEFAULT '0' COMMENT '重量，单位是Kg',
  `volume` float unsigned NOT NULL DEFAULT '0' COMMENT '体积，单位立方米',
  `unit` varchar(50) NOT NULL COMMENT '单位',
  `is_virtual` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0实物1虚拟产品',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='电子商务';

-- ----------------------------
-- Records of tb_list_biz
-- ----------------------------

-- ----------------------------
-- Table structure for tb_list_cate
-- ----------------------------
DROP TABLE IF EXISTS `tb_list_cate`;
CREATE TABLE `tb_list_cate` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '主题ID',
  `cate_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  PRIMARY KEY (`id`,`cate_id`),
  KEY `id` (`id`),
  KEY `cate_id` (`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='主题绑定的分类';

-- ----------------------------
-- Records of tb_list_cate
-- ----------------------------
INSERT INTO `tb_list_cate` VALUES ('19', '5');
INSERT INTO `tb_list_cate` VALUES ('20', '5');
INSERT INTO `tb_list_cate` VALUES ('21', '5');
INSERT INTO `tb_list_cate` VALUES ('22', '5');
INSERT INTO `tb_list_cate` VALUES ('24', '5');
INSERT INTO `tb_list_cate` VALUES ('25', '5');
INSERT INTO `tb_list_cate` VALUES ('45', '4');
INSERT INTO `tb_list_cate` VALUES ('46', '4');
INSERT INTO `tb_list_cate` VALUES ('48', '5');

-- ----------------------------
-- Table structure for tb_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_log`;
CREATE TABLE `tb_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `note` varchar(255) NOT NULL COMMENT '日志摘要',
  `url` varchar(255) NOT NULL COMMENT '请求网址',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '执行时间',
  `app_id` varchar(30) NOT NULL DEFAULT 'www' COMMENT '接入APP_ID',
  `ctrl` varchar(255) NOT NULL COMMENT '控制器',
  `func` varchar(255) NOT NULL COMMENT '方法',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作人',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `ip` varchar(255) NOT NULL COMMENT '登录IP',
  `referer` varchar(255) NOT NULL COMMENT '来源网址',
  `mask` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0表示系统日志，1表示手动断点日志用于调试',
  `session_id` varchar(255) NOT NULL COMMENT 'SESSION_ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=268 DEFAULT CHARSET=utf8 COMMENT='日志记录';

-- ----------------------------
-- Records of tb_log
-- ----------------------------
INSERT INTO `tb_log` VALUES ('1', '管理员登录成功', 'http://localhost/blogs/admin.php?c=login&f=ok', '1595398613', 'admin', 'login', 'ok', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('2', '管理员 &lt;span class=&quot;red&quot;&gt;admin&lt;/span&gt; 成功退出', 'http://localhost/blogs/admin.php?c=logout', '1595398661', 'admin', 'logout', 'index', '0', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('3', '管理员登录成功', 'http://localhost/blogs/admin.php?c=login&f=ok', '1595398957', 'admin', 'login', 'ok', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('4', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 1\n            [identifier] => thumb\n            [title] => 缩略图\n            [type] => varchar\n        )\n\n    [1] => Array\n        (\n            [id] => 2\n            [identifier] => content\n      ', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=1&_=1595399866018', '1595399883', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('5', '标识串不能为空', 'http://localhost/blogs/admin.php?c=project&f=save', '1595399934', 'admin', 'project', 'save', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('6', '1', 'http://localhost/blogs/admin.php?c=module&f=status&id=1&_=1595399981563', '1595399985', 'admin', 'module', 'status', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('7', '模块已使用，不允许更换类型', 'http://localhost/blogs/admin.php?c=module&f=save', '1595400007', 'admin', 'module', 'save', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('8', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 1\n            [identifier] => thumb\n            [title] => 缩略图\n            [type] => varchar\n        )\n\n    [1] => Array\n        (\n            [id] => 2\n            [identifier] => content\n      ', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=1&_=1595400032714', '1595400053', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('9', '<pre>Array\n(\n    [id] => 1\n    [cate_id] => 1\n    [folder] => res/202007/22/\n    [name] => fa049d5abc08dc62.png\n    [ext] => png\n    [filename] => res/202007/22/fa049d5abc08dc62.png\n    [ico] => res/_cache/_ico/1/1.png\n    [addtime] => 1595400182\n    [tit', 'http://localhost/blogs/admin.php?c=upload&f=save&PHPSESSION=cgcdqeq8pcb53aq2hrrcmtobg1&id=WU_FILE_0&name=20828f842579a0d921800a06a86318c.png&type=image%2Fpng&lastModifiedDate=Fri+Jun+05+2020+09%3A02%3A57+GMT%2B0800+%28%E4%B8%AD%E5%9B%BD%E6%A0%87%E5%87%86%', '1595400182', 'admin', 'upload', 'save', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('10', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 1\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => fa049d5abc08dc62.png\n            [ext] => png\n            [filename] => res/202007/22/fa049d5abc08dc62.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=1&_=1595400157082', '1595400182', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('11', '1', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595400211', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('12', '<pre>Array\n(\n    [id] => 2\n    [cate_id] => 1\n    [folder] => res/202007/22/\n    [name] => 84ecb412f4ff577b.png\n    [ext] => png\n    [filename] => res/202007/22/84ecb412f4ff577b.png\n    [ico] => res/_cache/_ico/2/2.png\n    [addtime] => 1595400235\n    [tit', 'http://localhost/blogs/admin.php?c=upload&f=save&PHPSESSION=cgcdqeq8pcb53aq2hrrcmtobg1&id=WU_FILE_0&name=45986518.png&type=image%2Fpng&lastModifiedDate=Fri+Jul+10+2020+14%3A33%3A51+GMT%2B0800+%28%E4%B8%AD%E5%9B%BD%E6%A0%87%E5%87%86%E6%97%B6%E9%97%B4%29&si', '1595400235', 'admin', 'upload', 'save', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('13', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=2&_=1595400229278', '1595400236', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('14', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 1\n            [identifier] => thumb\n            [title] => 缩略图\n            [type] => varchar\n        )\n\n    [1] => Array\n        (\n            [id] => 2\n            [identifier] => content\n      ', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=1&_=1595400442112', '1595400442', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('15', '主题删除成功', 'http://localhost/blogs/admin.php?c=list&f=del&id=1&_=1595400486258', '1595400511', 'admin', 'list', 'del', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('16', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=2&_=1595400527646', '1595400533', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('17', '2', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595400539', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('18', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 1\n            [identifier] => thumb\n            [title] => 缩略图\n            [type] => varchar\n        )\n\n    [1] => Array\n        (\n            [id] => 2\n            [identifier] => content\n      ', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=1&_=1595400563836', '1595400563', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('19', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 1\n            [identifier] => thumb\n            [title] => 缩略图\n            [type] => varchar\n        )\n\n    [1] => Array\n        (\n            [id] => 2\n            [identifier] => content\n      ', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=1&_=1595400665195', '1595400665', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('20', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=2&_=1595400703113', '1595400703', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('21', '1', 'http://localhost/blogs/admin.php?c=module&f=status&id=2&_=1595400848101', '1595400849', 'admin', 'module', 'status', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('22', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 5\n            [identifier] => net_title\n            [title] => 网站名称\n            [type] => varchar\n        )\n\n    [1] => Array\n        (\n            [id] => 6\n            [identifier] => thumb\n   ', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=2&_=1595400977116', '1595401007', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('23', '标识串不能为空', 'http://localhost/blogs/admin.php?c=project&f=save', '1595401053', 'admin', 'project', 'save', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('24', '<pre>Array\n(\n    [id] => 3\n    [cate_id] => 1\n    [folder] => res/202007/22/\n    [name] => 8b015ee71b690190.png\n    [ext] => png\n    [filename] => res/202007/22/8b015ee71b690190.png\n    [ico] => res/_cache/_ico/3/3.png\n    [addtime] => 1595401087\n    [tit', 'http://localhost/blogs/admin.php?c=upload&f=save&PHPSESSION=cgcdqeq8pcb53aq2hrrcmtobg1&id=WU_FILE_0&name=20828f842579a0d921800a06a86318c.png&type=image%2Fpng&lastModifiedDate=Fri+Jun+05+2020+09%3A02%3A57+GMT%2B0800+%28%E4%B8%AD%E5%9B%BD%E6%A0%87%E5%87%86%', '1595401087', 'admin', 'upload', 'save', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('25', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 3\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 8b015ee71b690190.png\n            [ext] => png\n            [filename] => res/202007/22/8b015ee71b690190.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=3&_=1595401074640', '1595401088', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('26', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=2&_=1595401162294', '1595401169', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('27', '模块已使用，不允许更换类型', 'http://localhost/blogs/admin.php?c=module&f=save', '1595401291', 'admin', 'module', 'save', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('28', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 5\n            [identifier] => net_title\n            [title] => 网站名称\n            [type] => varchar\n        )\n\n    [1] => Array\n        (\n            [id] => 6\n            [identifier] => thumb\n   ', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=2&_=1595401314566', '1595401345', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('29', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=2&_=1595401406401', '1595401414', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('30', '3', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595401430', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('31', '1', 'http://localhost/blogs/admin.php?c=list&f=content_status&id=3&_=1595401434457', '1595401463', 'admin', 'list', 'content_status', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('32', '1', 'http://localhost/blogs/admin.php?c=module&f=status&id=3&_=1595402874157', '1595402877', 'admin', 'module', 'status', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('33', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 10\n            [identifier] => fullname\n            [title] => 姓名\n            [type] => varchar\n        )\n\n    [1] => Array\n        (\n            [id] => 11\n            [identifier] => qq\n       ', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=3&_=1595403752845', '1595403768', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('34', '1', 'http://localhost/blogs/admin.php?c=module&f=status&id=4&_=1595403923476', '1595403925', 'admin', 'module', 'status', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('35', '名称不能为空', 'http://localhost/blogs/admin.php?c=module&f=field_addok&mid=4', '1595405194', 'admin', 'module', 'field_addok', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('36', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 15\n            [identifier] => img\n            [title] => 图片\n            [type] => text\n        )\n\n)\n</pre>', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=4&_=1595405632886', '1595405646', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('37', '标识串不能为空', 'http://localhost/blogs/admin.php?c=project&f=save', '1595405671', 'admin', 'project', 'save', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('38', '<pre>Array\n(\n    [id] => 4\n    [cate_id] => 1\n    [folder] => res/202007/22/\n    [name] => 22490f1cdd12a7fb.png\n    [ext] => png\n    [filename] => res/202007/22/22490f1cdd12a7fb.png\n    [ico] => res/_cache/_ico/4/4.png\n    [addtime] => 1595405718\n    [tit', 'http://localhost/blogs/admin.php?c=upload&f=save&PHPSESSION=cgcdqeq8pcb53aq2hrrcmtobg1&id=WU_FILE_0&name=20828f842579a0d921800a06a86318c.png&type=image%2Fpng&lastModifiedDate=Fri+Jun+05+2020+09%3A02%3A57+GMT%2B0800+%28%E4%B8%AD%E5%9B%BD%E6%A0%87%E5%87%86%', '1595405718', 'admin', 'upload', 'save', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('39', '<pre>Array\n(\n    [id] => 5\n    [cate_id] => 1\n    [folder] => res/202007/22/\n    [name] => 58c28d3842edfb29.png\n    [ext] => png\n    [filename] => res/202007/22/58c28d3842edfb29.png\n    [ico] => res/_cache/_ico/5/5.png\n    [addtime] => 1595405718\n    [tit', 'http://localhost/blogs/admin.php?c=upload&f=save&PHPSESSION=cgcdqeq8pcb53aq2hrrcmtobg1&id=WU_FILE_1&name=45986518.png&type=image%2Fpng&lastModifiedDate=Fri+Jul+10+2020+14%3A33%3A51+GMT%2B0800+%28%E4%B8%AD%E5%9B%BD%E6%A0%87%E5%87%86%E6%97%B6%E9%97%B4%29&si', '1595405718', 'admin', 'upload', 'save', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('40', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 4\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 22490f1cdd12a7fb.png\n            [ext] => png\n            [filename] => res/202007/22/22490f1cdd12a7fb.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=4&_=1595405706934', '1595405719', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('41', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 4\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 22490f1cdd12a7fb.png\n            [ext] => png\n            [filename] => res/202007/22/22490f1cdd12a7fb.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=4%2C5&_=1595405706935', '1595405720', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('42', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 4\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 22490f1cdd12a7fb.png\n            [ext] => png\n            [filename] => res/202007/22/22490f1cdd12a7fb.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=4%2C5&_=1595405782101', '1595405782', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('43', '1', 'http://localhost/blogs/admin.php?c=list&f=content_status&id=3&_=1595401467111', '1595405969', 'admin', 'list', 'content_status', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('44', '1', 'http://localhost/blogs/admin.php?c=module&f=status&id=5&_=1595406069378', '1595406070', 'admin', 'module', 'status', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('45', '网站信息更新完成', 'http://localhost/blogs/admin.php?c=all&f=save', '1595406181', 'admin', 'all', 'save', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('46', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 16\n            [identifier] => historynumber\n            [title] => 历史访问人数\n            [type] => varchar\n        )\n\n    [1] => Array\n        (\n            [id] => 17\n            [identifier] => t', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=5&_=1595406904615', '1595406920', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('47', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=2&_=1595407026194', '1595407043', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('48', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 5\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 58c28d3842edfb29.png\n            [ext] => png\n            [filename] => res/202007/22/58c28d3842edfb29.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=5&_=1595407026195', '1595407051', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('49', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 4\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 22490f1cdd12a7fb.png\n            [ext] => png\n            [filename] => res/202007/22/22490f1cdd12a7fb.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=4&_=1595407026196', '1595407055', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('50', '保存数据失败，请检查', 'http://localhost/blogs/admin.php?c=list&f=single_save', '1595407065', 'admin', 'list', 'single_save', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('51', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 1\n            [identifier] => thumb\n            [title] => 缩略图\n            [type] => varchar\n        )\n\n    [1] => Array\n        (\n            [id] => 2\n            [identifier] => content\n      ', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=1&_=1595407303848', '1595407303', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('52', '模块已使用，不允许更换类型', 'http://localhost/blogs/admin.php?c=module&f=save', '1595407318', 'admin', 'module', 'save', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('53', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 1\n            [identifier] => thumb\n            [title] => 缩略图\n            [type] => varchar\n        )\n\n    [1] => Array\n        (\n            [id] => 2\n            [identifier] => content\n      ', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=1&_=1595407568661', '1595407591', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('54', '分类添加成功', 'http://localhost/blogs/admin.php?c=cate&f=open_save&title=%E5%8D%9A%E5%AE%A2%E5%88%86%E7%B1%BB&identifier=blogscate&_=1595407598418', '1595407615', 'admin', 'cate', 'open_save', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('55', '<pre>Array\n(\n    [1] => Array\n        (\n            [id] => 1\n            [site_id] => 1\n            [parent_id] => 0\n            [status] => 1\n            [title] => 博客分类\n            [taxis] => 5\n            [tpl_list] => \n            [tpl_content] => \n ', 'http://localhost/blogs/admin.php?c=project&f=rootcate&_=1595407568662', '1595407615', 'admin', 'project', 'rootcate', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('56', '标识符已被使用', 'http://localhost/blogs/admin.php?c=project&f=save', '1595407653', 'admin', 'project', 'save', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('57', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 1\n            [identifier] => thumb\n            [title] => 缩略图\n            [type] => varchar\n        )\n\n    [1] => Array\n        (\n            [id] => 2\n            [identifier] => content\n      ', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=1&_=1595407669891', '1595407669', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('58', '分类信息配置成功', 'http://localhost/blogs/admin.php?c=cate&f=save', '1595407755', 'admin', 'cate', 'save', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('59', '4', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595407805', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('60', '主分类不能为空', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595407824', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('61', '5', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595407829', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('62', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 1\n            [identifier] => thumb\n            [title] => 缩略图\n            [type] => varchar\n        )\n\n    [1] => Array\n        (\n            [id] => 2\n            [identifier] => content\n      ', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=1&_=1595407851433', '1595407851', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('63', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 1\n            [identifier] => thumb\n            [title] => 缩略图\n            [type] => varchar\n        )\n\n    [1] => Array\n        (\n            [id] => 2\n            [identifier] => content\n      ', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=1&_=1595407871240', '1595407871', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('64', '6', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595407903', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('65', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 1\n            [identifier] => thumb\n            [title] => 缩略图\n            [type] => varchar\n        )\n\n    [1] => Array\n        (\n            [id] => 2\n            [identifier] => content\n      ', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=1&_=1595407950262', '1595407950', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('66', '模块已使用，不允许更换类型', 'http://localhost/blogs/admin.php?c=module&f=save', '1595407987', 'admin', 'module', 'save', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('67', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 1\n            [identifier] => thumb\n            [title] => 缩略图\n            [type] => varchar\n        )\n\n    [1] => Array\n        (\n            [id] => 2\n            [identifier] => content\n      ', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=1&_=1595408004557', '1595408004', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('68', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 1\n            [identifier] => thumb\n            [title] => 缩略图\n            [type] => varchar\n        )\n\n    [1] => Array\n        (\n            [id] => 2\n            [identifier] => content\n      ', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=1&_=1595408020275', '1595408040', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('69', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 1\n            [identifier] => thumb\n            [title] => 缩略图\n            [type] => varchar\n        )\n\n    [1] => Array\n        (\n            [id] => 2\n            [identifier] => content\n      ', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=1&_=1595408116681', '1595408116', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('70', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 1\n            [identifier] => thumb\n            [title] => 缩略图\n            [type] => varchar\n        )\n\n    [1] => Array\n        (\n            [id] => 2\n            [identifier] => content\n      ', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=1&_=1595408152332', '1595408154', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('71', '7', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595408180', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('72', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 1\n            [identifier] => thumb\n            [title] => 缩略图\n            [type] => varchar\n        )\n\n    [1] => Array\n        (\n            [id] => 2\n            [identifier] => content\n      ', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=1&_=1595408250709', '1595408250', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('73', '主分类不能为空', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595408306', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('74', '8', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595408310', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('75', '分类信息配置成功', 'http://localhost/blogs/admin.php?c=cate&f=save', '1595408379', 'admin', 'cate', 'save', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('76', '9', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595408401', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('77', '10', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595408440', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('78', '11', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595408485', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('79', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 1\n            [identifier] => thumb\n            [title] => 缩略图\n            [type] => varchar\n        )\n\n    [1] => Array\n        (\n            [id] => 2\n            [identifier] => content\n      ', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=1&_=1595408531983', '1595408532', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('80', '分类信息配置成功', 'http://localhost/blogs/admin.php?c=cate&f=save', '1595408575', 'admin', 'cate', 'save', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('81', '分类信息配置成功', 'http://localhost/blogs/admin.php?c=cate&f=save', '1595408662', 'admin', 'cate', 'save', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('82', '标识已被使用', 'http://localhost/blogs/admin.php?c=cate&f=save', '1595408686', 'admin', 'cate', 'save', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('83', '12', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595408715', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('84', '13', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595408903', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('85', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 1\n            [identifier] => thumb\n            [title] => 缩略图\n            [type] => varchar\n        )\n\n    [1] => Array\n        (\n            [id] => 2\n            [identifier] => content\n      ', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=1&_=1595409047580', '1595409060', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('86', '标识串不能为空', 'http://localhost/blogs/admin.php?c=project&f=save', '1595409112', 'admin', 'project', 'save', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('87', '14', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595409156', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('88', '管理员 &lt;span class=&quot;red&quot;&gt;admin&lt;/span&gt; 成功退出', 'http://localhost/blogs/admin.php?c=logout', '1595409168', 'admin', 'logout', 'index', '0', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('89', '管理员登录成功', 'http://localhost/blogs/admin.php?c=login&f=ok', '1595409183', 'admin', 'login', 'ok', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('90', '模块已使用，不允许更换类型', 'http://localhost/blogs/admin.php?c=module&f=save', '1595409229', 'admin', 'module', 'save', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('91', '模块使用中，请先停用模块信息', 'http://localhost/blogs/admin.php?c=module&f=delete&id=1&_=1595409243931', '1595410173', 'admin', 'module', 'delete', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('92', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 1\n            [identifier] => thumb\n            [title] => 缩略图\n            [type] => varchar\n        )\n\n    [1] => Array\n        (\n            [id] => 2\n            [identifier] => content\n      ', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=1&_=1595410211710', '1595410223', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('93', '主分类不能为空', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595410259', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('94', '15', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595410262', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('95', '16', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595410271', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('96', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 5\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 58c28d3842edfb29.png\n            [ext] => png\n            [filename] => res/202007/22/58c28d3842edfb29.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=5&_=1595410668363', '1595410671', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('97', '16', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595410725', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('98', '网站信息更新完成', 'http://localhost/blogs/admin.php?c=all&f=save', '1595411709', 'admin', 'all', 'save', '1', '0', '::1', '', '0', 'cgcdqeq8pcb53aq2hrrcmtobg1');
INSERT INTO `tb_log` VALUES ('99', '管理员登录成功', 'http://localhost/blogs/admin.php?c=login&f=ok', '1595412137', 'admin', 'login', 'ok', '1', '0', '::1', '', '0', 'vvnkji3o7m2hmbnf90icc1mdc3');
INSERT INTO `tb_log` VALUES ('100', '验证码不能为空', 'http://localhost/blogs/admin.php?c=login&f=ok', '1595466850', 'admin', 'login', 'ok', '0', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('101', '17', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595470517', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('102', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 5\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 58c28d3842edfb29.png\n            [ext] => png\n            [filename] => res/202007/22/58c28d3842edfb29.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=5&_=1595470646008', '1595470649', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('103', '17', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595470650', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('104', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 5\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 58c28d3842edfb29.png\n            [ext] => png\n            [filename] => res/202007/22/58c28d3842edfb29.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=5&_=1595473205551', '1595473205', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('105', '17', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595473210', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('106', '主题删除成功', 'http://localhost/blogs/admin.php?c=list&f=del&id=17%2C16%2C15&_=1595473214100', '1595473383', 'admin', 'list', 'del', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('107', '18', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595473425', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('108', '19', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595473539', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('109', '20', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595474077', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('110', '21', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595474089', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('111', '21', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595474226', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('112', '22', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595474269', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('113', '23', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595474277', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('114', '主题删除成功', 'http://localhost/blogs/admin.php?c=list&f=del&id=23&_=1595474280628', '1595485821', 'admin', 'list', 'del', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('115', '24', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595485851', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('116', '25', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595485860', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('117', '1', 'http://localhost/blogs/admin.php?c=list&f=content_status&id=19&_=1595485863410', '1595485879', 'admin', 'list', 'content_status', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('118', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 4\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 22490f1cdd12a7fb.png\n            [ext] => png\n            [filename] => res/202007/22/22490f1cdd12a7fb.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=4&_=1595486063408', '1595486065', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('119', '25', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595486068', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('120', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 4\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 22490f1cdd12a7fb.png\n            [ext] => png\n            [filename] => res/202007/22/22490f1cdd12a7fb.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=4&_=1595486241799', '1595486242', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('121', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 1\n            [identifier] => thumb\n            [title] => 缩略图\n            [type] => varchar\n        )\n\n    [1] => Array\n        (\n            [id] => 2\n            [identifier] => content\n      ', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=1&_=1595489690268', '1595489690', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('122', '21', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595490029', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('123', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 4\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 22490f1cdd12a7fb.png\n            [ext] => png\n            [filename] => res/202007/22/22490f1cdd12a7fb.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=4&_=1595491367451', '1595491367', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('124', '25', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595491387', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('125', '19', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595492272', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('126', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 4\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 22490f1cdd12a7fb.png\n            [ext] => png\n            [filename] => res/202007/22/22490f1cdd12a7fb.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=4&_=1595494694363', '1595494705', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('127', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=2&_=1595494694364', '1595494710', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('128', '26', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595494750', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('129', '35', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595496829', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('130', '字符已经存在', 'http://localhost/blogs/admin.php?c=module&f=field_addok&mid=2', '1595496913', 'admin', 'module', 'field_addok', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('131', '模块已使用，不允许更换类型', 'http://localhost/blogs/admin.php?c=module&f=save', '1595496938', 'admin', 'module', 'save', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('132', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 6\n            [identifier] => thumb\n            [title] => 缩略图\n            [type] => varchar\n        )\n\n    [1] => Array\n        (\n            [id] => 7\n            [identifier] => note\n         ', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=2&_=1595497041574', '1595497051', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('133', '请传递正确的附件ID', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=http%3Awww.baidu.com&_=1595497633209', '1595497633', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('134', '请传递正确的附件ID', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=http%3Awww.baidu.com&_=1595497697563', '1595497697', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('135', '请传递正确的附件ID', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=http%3Awww.baidu.com&_=1595497815547', '1595497815', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('136', '请传递正确的附件ID', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=http%3Awww.baidu.com&_=1595497881292', '1595497881', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('137', '请传递正确的附件ID', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=http%3Awww.baidu.com&_=1595498029772', '1595498029', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('138', '请传递正确的附件ID', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=http%3Awww.baidu.com&_=1595498132804', '1595498132', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '0', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('139', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 4\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 22490f1cdd12a7fb.png\n            [ext] => png\n            [filename] => res/202007/22/22490f1cdd12a7fb.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=4&_=1595498132806', '1595498136', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('140', '<pre>Array\n(\n    [id] => 6\n    [cate_id] => 1\n    [folder] => res/202007/23/\n    [name] => \n    [ext] => png\n    [filename] => res/202007/23/06d854330e809ef7.png\n    [ico] => res/_cache/_ico/6/6.png\n    [addtime] => 1595498382\n    [title] => 20828f842579a', 'http://localhost/blogs/api.php?c=upload&f=save', '1595498382', 'api', 'upload', 'save', '0', '0', '127.0.0.1', '', '1', 'g408t4vjhudkkpe4u5oebqo2o0');
INSERT INTO `tb_log` VALUES ('141', '<pre>Array\n(\n    [id] => 7\n    [cate_id] => 1\n    [folder] => res/202007/23/\n    [name] => \n    [ext] => jpg\n    [filename] => res/202007/23/50b016b059e8f045.jpg\n    [ico] => res/_cache/_ico/7/7.jpg\n    [addtime] => 1595498572\n    [title] => Snipaste_2020', 'http://localhost/blogs/api.php?c=upload&f=save', '1595498572', 'api', 'upload', 'save', '0', '0', '127.0.0.1', '', '1', 'g408t4vjhudkkpe4u5oebqo2o0');
INSERT INTO `tb_log` VALUES ('142', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 7\n            [cate_id] => 1\n            [folder] => res/202007/23/\n            [name] => \n            [ext] => jpg\n            [filename] => res/202007/23/50b016b059e8f045.jpg\n            [ico] ', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=7&_=1595499705912', '1595499705', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('143', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=2&_=1595499705914', '1595499715', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'npkq21qfudrj3547o35v4ikuh4');
INSERT INTO `tb_log` VALUES ('144', '管理员登录成功', 'http://localhost/blogs/admin.php?c=login&f=ok', '1595568288', 'admin', 'login', 'ok', '1', '0', '::1', '', '0', '28ipl3f12evchc0dkg4dfvhtp0');
INSERT INTO `tb_log` VALUES ('145', '36', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595568316', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', '28ipl3f12evchc0dkg4dfvhtp0');
INSERT INTO `tb_log` VALUES ('146', '37', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595569596', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', '28ipl3f12evchc0dkg4dfvhtp0');
INSERT INTO `tb_log` VALUES ('147', '37', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595569810', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', '28ipl3f12evchc0dkg4dfvhtp0');
INSERT INTO `tb_log` VALUES ('148', '37', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595569958', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', '28ipl3f12evchc0dkg4dfvhtp0');
INSERT INTO `tb_log` VALUES ('149', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=2&_=1595570691190', '1595570752', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '28ipl3f12evchc0dkg4dfvhtp0');
INSERT INTO `tb_log` VALUES ('150', '<pre>Array\n(\n    [id] => 8\n    [cate_id] => 1\n    [folder] => res/202007/24/\n    [name] => 864ca903adbd6a0c.png\n    [ext] => png\n    [filename] => res/202007/24/864ca903adbd6a0c.png\n    [ico] => res/_cache/_ico/8/8.png\n    [addtime] => 1595570821\n    [tit', 'http://localhost/blogs/admin.php?c=upload&f=save&PHPSESSION=28ipl3f12evchc0dkg4dfvhtp0&id=WU_FILE_0&name=45986518.png&type=image%2Fpng&lastModifiedDate=Fri+Jul+10+2020+14%3A33%3A51+GMT%2B0800+%28%E4%B8%AD%E5%9B%BD%E6%A0%87%E5%87%86%E6%97%B6%E9%97%B4%29&si', '1595570821', 'admin', 'upload', 'save', '1', '0', '::1', '', '1', '28ipl3f12evchc0dkg4dfvhtp0');
INSERT INTO `tb_log` VALUES ('151', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 8\n            [cate_id] => 1\n            [folder] => res/202007/24/\n            [name] => 864ca903adbd6a0c.png\n            [ext] => png\n            [filename] => res/202007/24/864ca903adbd6a0c.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=8&_=1595570691191', '1595570821', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '28ipl3f12evchc0dkg4dfvhtp0');
INSERT INTO `tb_log` VALUES ('152', '<pre>Array\n(\n    [id] => 9\n    [cate_id] => 1\n    [folder] => res/202007/24/\n    [name] => 2aa6d2621befd3de.png\n    [ext] => png\n    [filename] => res/202007/24/2aa6d2621befd3de.png\n    [ico] => res/_cache/_ico/9/9.png\n    [addtime] => 1595570833\n    [tit', 'http://localhost/blogs/admin.php?c=upload&f=save&PHPSESSION=28ipl3f12evchc0dkg4dfvhtp0&id=WU_FILE_1&name=%E5%9B%BE%E7%89%871.png&type=image%2Fpng&lastModifiedDate=Fri+Jul+24+2020+14%3A06%3A33+GMT%2B0800+%28%E4%B8%AD%E5%9B%BD%E6%A0%87%E5%87%86%E6%97%B6%E9%', '1595570833', 'admin', 'upload', 'save', '1', '0', '::1', '', '1', '28ipl3f12evchc0dkg4dfvhtp0');
INSERT INTO `tb_log` VALUES ('153', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 9\n            [cate_id] => 1\n            [folder] => res/202007/24/\n            [name] => 2aa6d2621befd3de.png\n            [ext] => png\n            [filename] => res/202007/24/2aa6d2621befd3de.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=9&_=1595570691193', '1595570833', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '28ipl3f12evchc0dkg4dfvhtp0');
INSERT INTO `tb_log` VALUES ('154', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 4\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 22490f1cdd12a7fb.png\n            [ext] => png\n            [filename] => res/202007/22/22490f1cdd12a7fb.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=4%2C5&_=1595570908211', '1595570908', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '28ipl3f12evchc0dkg4dfvhtp0');
INSERT INTO `tb_log` VALUES ('155', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 4\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 22490f1cdd12a7fb.png\n            [ext] => png\n            [filename] => res/202007/22/22490f1cdd12a7fb.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=4%2C5%2C9&_=1595570908213', '1595570912', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '28ipl3f12evchc0dkg4dfvhtp0');
INSERT INTO `tb_log` VALUES ('156', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 4\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 22490f1cdd12a7fb.png\n            [ext] => png\n            [filename] => res/202007/22/22490f1cdd12a7fb.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=4%2C5%2C9%2C7&_=1595570908214', '1595570912', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '28ipl3f12evchc0dkg4dfvhtp0');
INSERT INTO `tb_log` VALUES ('157', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 4\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 22490f1cdd12a7fb.png\n            [ext] => png\n            [filename] => res/202007/22/22490f1cdd12a7fb.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=4%2C5%2C9&_=1595570908215', '1595570913', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '28ipl3f12evchc0dkg4dfvhtp0');
INSERT INTO `tb_log` VALUES ('158', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 4\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 22490f1cdd12a7fb.png\n            [ext] => png\n            [filename] => res/202007/22/22490f1cdd12a7fb.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=4%2C5%2C9%2C7&_=1595570908216', '1595570914', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '28ipl3f12evchc0dkg4dfvhtp0');
INSERT INTO `tb_log` VALUES ('159', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 4\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 22490f1cdd12a7fb.png\n            [ext] => png\n            [filename] => res/202007/22/22490f1cdd12a7fb.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=4%2C5%2C9%2C7%2C2&_=1595570908217', '1595570914', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '28ipl3f12evchc0dkg4dfvhtp0');
INSERT INTO `tb_log` VALUES ('160', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=2&_=1595578647528', '1595578647', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '28ipl3f12evchc0dkg4dfvhtp0');
INSERT INTO `tb_log` VALUES ('161', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 9\n            [cate_id] => 1\n            [folder] => res/202007/24/\n            [name] => 2aa6d2621befd3de.png\n            [ext] => png\n            [filename] => res/202007/24/2aa6d2621befd3de.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=9&_=1595578647529', '1595578647', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '28ipl3f12evchc0dkg4dfvhtp0');
INSERT INTO `tb_log` VALUES ('162', '验证码填写不正确', 'http://localhost/blogs/admin.php?c=login&f=ok', '1595669628', 'admin', 'login', 'ok', '0', '0', '::1', '', '0', 'm3c36sucrpfdb1303u932sqek0');
INSERT INTO `tb_log` VALUES ('163', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=2&_=1595669870054', '1595669870', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'm3c36sucrpfdb1303u932sqek0');
INSERT INTO `tb_log` VALUES ('164', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 9\n            [cate_id] => 1\n            [folder] => res/202007/24/\n            [name] => 2aa6d2621befd3de.png\n            [ext] => png\n            [filename] => res/202007/24/2aa6d2621befd3de.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=9&_=1595669870055', '1595669870', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'm3c36sucrpfdb1303u932sqek0');
INSERT INTO `tb_log` VALUES ('165', '验证码不能为空', 'http://localhost/blogs/admin.php?c=login&f=ok', '1595913336', 'admin', 'login', 'ok', '0', '0', '::1', '', '0', 'fi3oibf5qs7u251a8ajuf98ce4');
INSERT INTO `tb_log` VALUES ('166', '37', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595913373', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'fi3oibf5qs7u251a8ajuf98ce4');
INSERT INTO `tb_log` VALUES ('167', '37', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595914235', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'fi3oibf5qs7u251a8ajuf98ce4');
INSERT INTO `tb_log` VALUES ('168', '37', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595914555', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'fi3oibf5qs7u251a8ajuf98ce4');
INSERT INTO `tb_log` VALUES ('169', '37', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595915454', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'fi3oibf5qs7u251a8ajuf98ce4');
INSERT INTO `tb_log` VALUES ('170', '38', 'http://localhost/blogs/admin.php?c=list&f=ok', '1595919400', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'fi3oibf5qs7u251a8ajuf98ce4');
INSERT INTO `tb_log` VALUES ('171', '验证码不能为空', 'http://localhost/blogs/admin.php?c=login&f=ok', '1596071796', 'admin', 'login', 'ok', '0', '0', '::1', '', '0', '5dcummqiqd2is8uac84vj9m2u1');
INSERT INTO `tb_log` VALUES ('172', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 4\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 22490f1cdd12a7fb.png\n            [ext] => png\n            [filename] => res/202007/22/22490f1cdd12a7fb.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=4%2C5%2C9%2C7%2C2&_=1596071814449', '1596071814', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '5dcummqiqd2is8uac84vj9m2u1');
INSERT INTO `tb_log` VALUES ('173', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 4\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 22490f1cdd12a7fb.png\n            [ext] => png\n            [filename] => res/202007/22/22490f1cdd12a7fb.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=4%2C5%2C9%2C2&_=1596071814451', '1596071817', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '5dcummqiqd2is8uac84vj9m2u1');
INSERT INTO `tb_log` VALUES ('174', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 9\n            [cate_id] => 1\n            [folder] => res/202007/24/\n            [name] => 2aa6d2621befd3de.png\n            [ext] => png\n            [filename] => res/202007/24/2aa6d2621befd3de.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=5%2C9%2C2&_=1596071814452', '1596071822', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '5dcummqiqd2is8uac84vj9m2u1');
INSERT INTO `tb_log` VALUES ('175', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 9\n            [cate_id] => 1\n            [folder] => res/202007/24/\n            [name] => 2aa6d2621befd3de.png\n            [ext] => png\n            [filename] => res/202007/24/2aa6d2621befd3de.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=5%2C9%2C2%2C1&_=1596071814453', '1596071823', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '5dcummqiqd2is8uac84vj9m2u1');
INSERT INTO `tb_log` VALUES ('176', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 9\n            [cate_id] => 1\n            [folder] => res/202007/24/\n            [name] => 2aa6d2621befd3de.png\n            [ext] => png\n            [filename] => res/202007/24/2aa6d2621befd3de.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=5%2C9%2C2%2C1%2C4&_=1596071814454', '1596071823', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '5dcummqiqd2is8uac84vj9m2u1');
INSERT INTO `tb_log` VALUES ('177', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 9\n            [cate_id] => 1\n            [folder] => res/202007/24/\n            [name] => 2aa6d2621befd3de.png\n            [ext] => png\n            [filename] => res/202007/24/2aa6d2621befd3de.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=5%2C9%2C2%2C1%2C4%2C3&_=1596071814455', '1596071824', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '5dcummqiqd2is8uac84vj9m2u1');
INSERT INTO `tb_log` VALUES ('178', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 9\n            [cate_id] => 1\n            [folder] => res/202007/24/\n            [name] => 2aa6d2621befd3de.png\n            [ext] => png\n            [filename] => res/202007/24/2aa6d2621befd3de.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=5%2C9%2C2%2C1%2C4%2C3%2C6&_=1596071814456', '1596071825', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '5dcummqiqd2is8uac84vj9m2u1');
INSERT INTO `tb_log` VALUES ('179', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 9\n            [cate_id] => 1\n            [folder] => res/202007/24/\n            [name] => 2aa6d2621befd3de.png\n            [ext] => png\n            [filename] => res/202007/24/2aa6d2621befd3de.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=5%2C9%2C2%2C1%2C4%2C3%2C6%2C11&_=1596071814457', '1596071825', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '5dcummqiqd2is8uac84vj9m2u1');
INSERT INTO `tb_log` VALUES ('180', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 9\n            [cate_id] => 1\n            [folder] => res/202007/24/\n            [name] => 2aa6d2621befd3de.png\n            [ext] => png\n            [filename] => res/202007/24/2aa6d2621befd3de.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=5%2C9%2C2%2C1%2C4%2C3%2C6%2C11%2C12&_=1596071814458', '1596071826', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '5dcummqiqd2is8uac84vj9m2u1');
INSERT INTO `tb_log` VALUES ('181', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 7\n            [cate_id] => 1\n            [folder] => res/202007/23/\n            [name] => \n            [ext] => jpg\n            [filename] => res/202007/23/50b016b059e8f045.jpg\n            [ico] ', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=7&_=1596076544077', '1596076544', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '5dcummqiqd2is8uac84vj9m2u1');
INSERT INTO `tb_log` VALUES ('182', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 7\n            [cate_id] => 1\n            [folder] => res/202007/23/\n            [name] => \n            [ext] => jpg\n            [filename] => res/202007/23/50b016b059e8f045.jpg\n            [ico] ', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=7&_=1596076550387', '1596076550', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '5dcummqiqd2is8uac84vj9m2u1');
INSERT INTO `tb_log` VALUES ('183', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=2&_=1596076555886', '1596076555', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '5dcummqiqd2is8uac84vj9m2u1');
INSERT INTO `tb_log` VALUES ('184', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 7\n            [cate_id] => 1\n            [folder] => res/202007/23/\n            [name] => \n            [ext] => jpg\n            [filename] => res/202007/23/50b016b059e8f045.jpg\n            [ico] ', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=7&_=1596076561654', '1596076561', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '5dcummqiqd2is8uac84vj9m2u1');
INSERT INTO `tb_log` VALUES ('185', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 6\n            [cate_id] => 1\n            [folder] => res/202007/23/\n            [name] => \n            [ext] => png\n            [filename] => res/202007/23/06d854330e809ef7.png\n            [ico] ', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=6&_=1596077199329', '1596077199', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '5dcummqiqd2is8uac84vj9m2u1');
INSERT INTO `tb_log` VALUES ('186', '管理员登录成功', 'http://localhost/blogs/admin.php?c=login&f=ok', '1596086084', 'admin', 'login', 'ok', '1', '0', '::1', '', '0', 's0rrnrr6oimuvjv8ksp0ehjc54');
INSERT INTO `tb_log` VALUES ('187', '管理员登录成功', 'http://localhost/blogs/admin.php?c=login&f=ok', '1596099263', 'admin', 'login', 'ok', '1', '0', '::1', '', '0', '91r7f2og0op73rg444lakog6j5');
INSERT INTO `tb_log` VALUES ('188', '管理员信息不存在', 'http://localhost/blogs/admin.php?c=login&f=ok', '1596102799', 'admin', 'login', 'ok', '0', '0', '::1', '', '0', 'g3noo6k4ikjgev0g8r4b0sctm2');
INSERT INTO `tb_log` VALUES ('189', '管理员登录成功', 'http://localhost/blogs/admin.php?c=login&f=ok', '1596105748', 'admin', 'login', 'ok', '1', '0', '::1', '', '0', '2r7gjtp6un4krit6s9e02vd1l4');
INSERT INTO `tb_log` VALUES ('190', '管理员登录成功', 'http://localhost/blogs/admin.php?c=login&f=ok', '1596105959', 'admin', 'login', 'ok', '1', '0', '::1', '', '0', 't82j80tn74qdauic4jgmpgpis4');
INSERT INTO `tb_log` VALUES ('191', '管理员登录成功', 'http://localhost/blogs/admin.php?c=login&f=ok', '1596106161', 'admin', 'login', 'ok', '1', '0', '::1', '', '0', 'su4bnsga86rqb1s2al0m79k4b4');
INSERT INTO `tb_log` VALUES ('192', '管理员登录成功', 'http://localhost/blogs/admin.php?c=login&f=ok', '1596110927', 'admin', 'login', 'ok', '1', '0', '::1', '', '0', 'knlm9ak2qcu4llcbrkfkmaijr0');
INSERT INTO `tb_log` VALUES ('193', '保存数据失败，请检查', 'http://localhost/blogs/admin.php?c=list&f=single_save', '1596111079', 'admin', 'list', 'single_save', '1', '0', '::1', '', '0', 'knlm9ak2qcu4llcbrkfkmaijr0');
INSERT INTO `tb_log` VALUES ('194', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 10\n            [identifier] => fullname\n            [title] => 姓名\n            [type] => varchar\n        )\n\n    [1] => Array\n        (\n            [id] => 11\n            [identifier] => qq\n       ', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=3&_=1596111116577', '1596111116', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'knlm9ak2qcu4llcbrkfkmaijr0');
INSERT INTO `tb_log` VALUES ('195', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 10\n            [identifier] => fullname\n            [title] => 姓名\n            [type] => varchar\n        )\n\n    [1] => Array\n        (\n            [id] => 11\n            [identifier] => qq\n       ', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=3&_=1596111268099', '1596111286', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'knlm9ak2qcu4llcbrkfkmaijr0');
INSERT INTO `tb_log` VALUES ('196', '标识串不能为空', 'http://localhost/blogs/admin.php?c=project&f=save', '1596111317', 'admin', 'project', 'save', '1', '0', '::1', '', '0', 'knlm9ak2qcu4llcbrkfkmaijr0');
INSERT INTO `tb_log` VALUES ('197', '验证码不能为空', 'http://localhost/blogs/admin.php?c=login&f=ok', '1596419808', 'admin', 'login', 'ok', '0', '0', '::1', '', '0', '0hdc2h80glr8ij1cm2vvt9vl82');
INSERT INTO `tb_log` VALUES ('198', '39', 'http://localhost/blogs/admin.php?c=list&f=ok', '1596440953', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', '0hdc2h80glr8ij1cm2vvt9vl82');
INSERT INTO `tb_log` VALUES ('199', '40', 'http://localhost/blogs/admin.php?c=list&f=ok', '1596441581', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', '0hdc2h80glr8ij1cm2vvt9vl82');
INSERT INTO `tb_log` VALUES ('200', '41', 'http://localhost/blogs/admin.php?c=list&f=ok', '1596441597', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', '0hdc2h80glr8ij1cm2vvt9vl82');
INSERT INTO `tb_log` VALUES ('201', '42', 'http://localhost/blogs/admin.php?c=list&f=ok', '1596441608', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', '0hdc2h80glr8ij1cm2vvt9vl82');
INSERT INTO `tb_log` VALUES ('202', '43', 'http://localhost/blogs/admin.php?c=list&f=ok', '1596441616', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', '0hdc2h80glr8ij1cm2vvt9vl82');
INSERT INTO `tb_log` VALUES ('203', '44', 'http://localhost/blogs/admin.php?c=list&f=ok', '1596441624', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', '0hdc2h80glr8ij1cm2vvt9vl82');
INSERT INTO `tb_log` VALUES ('204', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=2&_=1596442522258', '1596442522', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '0hdc2h80glr8ij1cm2vvt9vl82');
INSERT INTO `tb_log` VALUES ('205', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 9\n            [cate_id] => 1\n            [folder] => res/202007/24/\n            [name] => 2aa6d2621befd3de.png\n            [ext] => png\n            [filename] => res/202007/24/2aa6d2621befd3de.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=9&_=1596442522259', '1596442522', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '0hdc2h80glr8ij1cm2vvt9vl82');
INSERT INTO `tb_log` VALUES ('206', '验证码填写不正确', 'http://localhost/blogs/admin.php?c=login&f=ok', '1596447702', 'admin', 'login', 'ok', '0', '0', '::1', '', '0', '9f2srvnms2msqlh2nb32998is2');
INSERT INTO `tb_log` VALUES ('207', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=2&_=1596447720329', '1596447720', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '9f2srvnms2msqlh2nb32998is2');
INSERT INTO `tb_log` VALUES ('208', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 9\n            [cate_id] => 1\n            [folder] => res/202007/24/\n            [name] => 2aa6d2621befd3de.png\n            [ext] => png\n            [filename] => res/202007/24/2aa6d2621befd3de.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=9&_=1596447720330', '1596447720', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', '9f2srvnms2msqlh2nb32998is2');
INSERT INTO `tb_log` VALUES ('209', '管理员登录成功', 'http://localhost/blogs/admin.php?c=login&f=ok', '1596503556', 'admin', 'login', 'ok', '1', '0', '::1', '', '0', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('210', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=2&_=1596503573914', '1596503573', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('211', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 9\n            [cate_id] => 1\n            [folder] => res/202007/24/\n            [name] => 2aa6d2621befd3de.png\n            [ext] => png\n            [filename] => res/202007/24/2aa6d2621befd3de.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=9&_=1596503573915', '1596503573', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('212', '标识串不能为空', 'http://localhost/blogs/admin.php?c=module&f=field_addok&mid=5', '1596503661', 'admin', 'module', 'field_addok', '1', '0', '::1', '', '0', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('213', '字段标识不符合系统要求，限字母、数字及下划线且必须是字母开头', 'http://localhost/blogs/admin.php?c=module&f=field_addok&mid=5', '1596503681', 'admin', 'module', 'field_addok', '1', '0', '::1', '', '0', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('214', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=2&_=1596503744321', '1596503744', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('215', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=2&_=1596504020508', '1596504020', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('216', '<pre>Array\n(\n    [id] => 13\n    [cate_id] => 1\n    [folder] => res/202008/04/\n    [name] => 6a7f1799dd721dd6.jpg\n    [ext] => jpg\n    [filename] => res/202008/04/6a7f1799dd721dd6.jpg\n    [ico] => res/_cache/_ico/13/13.jpg\n    [addtime] => 1596504036\n    [', 'http://localhost/blogs/admin.php?c=upload&f=save&PHPSESSION=irva581brttvgmg8idlkl5i755&id=WU_FILE_0&name=wechat.jpg&type=image%2Fjpeg&lastModifiedDate=Tue+Aug+04+2020+09%3A20%3A16+GMT%2B0800+%28%E4%B8%AD%E5%9B%BD%E6%A0%87%E5%87%86%E6%97%B6%E9%97%B4%29&siz', '1596504036', 'admin', 'upload', 'save', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('217', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 13\n            [cate_id] => 1\n            [folder] => res/202008/04/\n            [name] => 6a7f1799dd721dd6.jpg\n            [ext] => jpg\n            [filename] => res/202008/04/6a7f1799dd721dd6.j', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=13&_=1596504020510', '1596504037', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('218', '<pre>Array\n(\n    [id] => 14\n    [cate_id] => 1\n    [folder] => res/202008/04/\n    [name] => bdc35ba954e10240.jpg\n    [ext] => jpg\n    [filename] => res/202008/04/bdc35ba954e10240.jpg\n    [ico] => res/_cache/_ico/14/14.jpg\n    [addtime] => 1596504043\n    [', 'http://localhost/blogs/admin.php?c=upload&f=save&PHPSESSION=irva581brttvgmg8idlkl5i755&id=WU_FILE_1&name=ali.jpg&type=image%2Fjpeg&lastModifiedDate=Tue+Aug+04+2020+09%3A19%3A32+GMT%2B0800+%28%E4%B8%AD%E5%9B%BD%E6%A0%87%E5%87%86%E6%97%B6%E9%97%B4%29&size=5', '1596504043', 'admin', 'upload', 'save', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('219', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 14\n            [cate_id] => 1\n            [folder] => res/202008/04/\n            [name] => bdc35ba954e10240.jpg\n            [ext] => jpg\n            [filename] => res/202008/04/bdc35ba954e10240.j', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=14&_=1596504020511', '1596504044', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('220', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=2&_=1596505346531', '1596505346', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('221', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 13\n            [cate_id] => 1\n            [folder] => res/202008/04/\n            [name] => 6a7f1799dd721dd6.jpg\n            [ext] => jpg\n            [filename] => res/202008/04/6a7f1799dd721dd6.j', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=13&_=1596505346532', '1596505346', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('222', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 14\n            [cate_id] => 1\n            [folder] => res/202008/04/\n            [name] => bdc35ba954e10240.jpg\n            [ext] => jpg\n            [filename] => res/202008/04/bdc35ba954e10240.j', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=14&_=1596505346533', '1596505346', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('223', '<pre>Array\n(\n    [id] => 15\n    [cate_id] => 1\n    [folder] => res/202008/04/\n    [name] => 37ccb1020ab8b97e.jpg\n    [ext] => jpg\n    [filename] => res/202008/04/37ccb1020ab8b97e.jpg\n    [ico] => res/_cache/_ico/15/15.jpg\n    [addtime] => 1596505368\n    [', 'http://localhost/blogs/admin.php?c=upload&f=save&PHPSESSION=irva581brttvgmg8idlkl5i755&id=WU_FILE_0&name=wechat.jpg&type=image%2Fjpeg&lastModifiedDate=Tue+Aug+04+2020+09%3A42%3A23+GMT%2B0800+%28%E4%B8%AD%E5%9B%BD%E6%A0%87%E5%87%86%E6%97%B6%E9%97%B4%29&siz', '1596505368', 'admin', 'upload', 'save', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('224', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 15\n            [cate_id] => 1\n            [folder] => res/202008/04/\n            [name] => 37ccb1020ab8b97e.jpg\n            [ext] => jpg\n            [filename] => res/202008/04/37ccb1020ab8b97e.j', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=15&_=1596505346535', '1596505369', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('225', '<pre>Array\n(\n    [id] => 16\n    [cate_id] => 1\n    [folder] => res/202008/04/\n    [name] => b4ba26b1f5d1065c.jpg\n    [ext] => jpg\n    [filename] => res/202008/04/b4ba26b1f5d1065c.jpg\n    [ico] => res/_cache/_ico/16/16.jpg\n    [addtime] => 1596505378\n    [', 'http://localhost/blogs/admin.php?c=upload&f=save&PHPSESSION=irva581brttvgmg8idlkl5i755&id=WU_FILE_1&name=wechat.jpg&type=image%2Fjpeg&lastModifiedDate=Tue+Aug+04+2020+09%3A42%3A23+GMT%2B0800+%28%E4%B8%AD%E5%9B%BD%E6%A0%87%E5%87%86%E6%97%B6%E9%97%B4%29&siz', '1596505378', 'admin', 'upload', 'save', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('226', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 16\n            [cate_id] => 1\n            [folder] => res/202008/04/\n            [name] => b4ba26b1f5d1065c.jpg\n            [ext] => jpg\n            [filename] => res/202008/04/b4ba26b1f5d1065c.j', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=16&_=1596505346536', '1596505379', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('227', '<pre>Array\n(\n    [id] => 17\n    [cate_id] => 1\n    [folder] => res/202008/04/\n    [name] => 4e252cf2b84a88e4.jpg\n    [ext] => jpg\n    [filename] => res/202008/04/4e252cf2b84a88e4.jpg\n    [ico] => res/_cache/_ico/17/17.jpg\n    [addtime] => 1596505385\n    [', 'http://localhost/blogs/admin.php?c=upload&f=save&PHPSESSION=irva581brttvgmg8idlkl5i755&id=WU_FILE_2&name=ali.jpg&type=image%2Fjpeg&lastModifiedDate=Tue+Aug+04+2020+09%3A41%3A13+GMT%2B0800+%28%E4%B8%AD%E5%9B%BD%E6%A0%87%E5%87%86%E6%97%B6%E9%97%B4%29&size=5', '1596505385', 'admin', 'upload', 'save', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('228', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 17\n            [cate_id] => 1\n            [folder] => res/202008/04/\n            [name] => 4e252cf2b84a88e4.jpg\n            [ext] => jpg\n            [filename] => res/202008/04/4e252cf2b84a88e4.j', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=17&_=1596505346538', '1596505386', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('229', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 9\n            [cate_id] => 1\n            [folder] => res/202007/24/\n            [name] => 2aa6d2621befd3de.png\n            [ext] => png\n            [filename] => res/202007/24/2aa6d2621befd3de.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=5%2C9%2C2%2C1%2C4%2C3%2C6%2C11%2C12&_=1596506499491', '1596506499', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('230', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=5%2C2%2C1%2C4%2C3%2C6%2C11%2C12&_=1596506499493', '1596506501', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('231', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=5%2C2%2C4%2C3%2C6%2C11%2C12&_=1596506499494', '1596506502', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('232', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=5%2C2%2C3%2C6%2C11%2C12&_=1596506499495', '1596506504', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('233', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=5%2C2%2C6%2C11%2C12&_=1596506499496', '1596506505', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('234', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=5%2C2%2C11%2C12&_=1596506499497', '1596506505', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('235', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=5%2C2%2C12&_=1596506499498', '1596506506', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('236', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=5%2C2&_=1596506499499', '1596506507', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('237', '<pre>Array\n(\n    [id] => 18\n    [cate_id] => 1\n    [folder] => res/202008/04/\n    [name] => aa56dc218ada1bbf.jpg\n    [ext] => jpg\n    [filename] => res/202008/04/aa56dc218ada1bbf.jpg\n    [ico] => res/_cache/_ico/18/18.jpg\n    [addtime] => 1596506513\n    [', 'http://localhost/blogs/admin.php?c=upload&f=save&PHPSESSION=irva581brttvgmg8idlkl5i755&id=WU_FILE_0&name=59-1912101J31V.jpg&type=image%2Fjpeg&lastModifiedDate=Tue+Aug+04+2020+10%3A01%3A20+GMT%2B0800+%28%E4%B8%AD%E5%9B%BD%E6%A0%87%E5%87%86%E6%97%B6%E9%97%B', '1596506513', 'admin', 'upload', 'save', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('238', '上传的文件异常', 'http://localhost/blogs/admin.php?c=upload&f=save&PHPSESSION=irva581brttvgmg8idlkl5i755&id=WU_FILE_1&name=59-191202214T21.jpg&type=image%2Fjpeg&lastModifiedDate=Tue+Aug+04+2020+10%3A01%3A25+GMT%2B0800+%28%E4%B8%AD%E5%9B%BD%E6%A0%87%E5%87%86%E6%97%B6%E9%97%', '1596506513', 'admin', 'upload', 'save', '1', '0', '::1', '', '0', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('239', '<pre>Array\n(\n    [id] => 19\n    [cate_id] => 1\n    [folder] => res/202008/04/\n    [name] => 65517ce35d41e783.jpg\n    [ext] => jpg\n    [filename] => res/202008/04/65517ce35d41e783.jpg\n    [ico] => res/_cache/_ico/19/19.jpg\n    [addtime] => 1596506513\n    [', 'http://localhost/blogs/admin.php?c=upload&f=save&PHPSESSION=irva581brttvgmg8idlkl5i755&id=WU_FILE_1&name=59-191202214T21.jpg&type=image%2Fjpeg&lastModifiedDate=Tue+Aug+04+2020+10%3A01%3A25+GMT%2B0800+%28%E4%B8%AD%E5%9B%BD%E6%A0%87%E5%87%86%E6%97%B6%E9%97%', '1596506513', 'admin', 'upload', 'save', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('240', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=5%2C2%2C18&_=1596506499500', '1596506514', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('241', '<pre>Array\n(\n    [id] => 20\n    [cate_id] => 1\n    [folder] => res/202008/04/\n    [name] => 03000136c5a4fcbf.jpg\n    [ext] => jpg\n    [filename] => res/202008/04/03000136c5a4fcbf.jpg\n    [ico] => res/_cache/_ico/20/20.jpg\n    [addtime] => 1596506514\n    [', 'http://localhost/blogs/admin.php?c=upload&f=save&PHPSESSION=irva581brttvgmg8idlkl5i755&id=WU_FILE_2&name=59-19120222042U.jpg&type=image%2Fjpeg&lastModifiedDate=Tue+Aug+04+2020+10%3A01%3A29+GMT%2B0800+%28%E4%B8%AD%E5%9B%BD%E6%A0%87%E5%87%86%E6%97%B6%E9%97%', '1596506514', 'admin', 'upload', 'save', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('242', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=5%2C2%2C18%2C19&_=1596506499501', '1596506515', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('243', '<pre>Array\n(\n    [id] => 21\n    [cate_id] => 1\n    [folder] => res/202008/04/\n    [name] => 46183822dc369ac2.jpg\n    [ext] => jpg\n    [filename] => res/202008/04/46183822dc369ac2.jpg\n    [ico] => res/_cache/_ico/21/21.jpg\n    [addtime] => 1596506515\n    [', 'http://localhost/blogs/admin.php?c=upload&f=save&PHPSESSION=irva581brttvgmg8idlkl5i755&id=WU_FILE_3&name=149-20032314300R-2.jpg&type=image%2Fjpeg&lastModifiedDate=Tue+Aug+04+2020+10%3A01%3A07+GMT%2B0800+%28%E4%B8%AD%E5%9B%BD%E6%A0%87%E5%87%86%E6%97%B6%E9%', '1596506515', 'admin', 'upload', 'save', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('244', '<pre>Array\n(\n    [id] => 22\n    [cate_id] => 1\n    [folder] => res/202008/04/\n    [name] => 7100200bec0cd4f4.jpg\n    [ext] => jpg\n    [filename] => res/202008/04/7100200bec0cd4f4.jpg\n    [ico] => res/_cache/_ico/22/22.jpg\n    [addtime] => 1596506515\n    [', 'http://localhost/blogs/admin.php?c=upload&f=save&PHPSESSION=irva581brttvgmg8idlkl5i755&id=WU_FILE_4&name=149-20032314300V-1.jpg&type=image%2Fjpeg&lastModifiedDate=Tue+Aug+04+2020+10%3A01%3A02+GMT%2B0800+%28%E4%B8%AD%E5%9B%BD%E6%A0%87%E5%87%86%E6%97%B6%E9%', '1596506515', 'admin', 'upload', 'save', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('245', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=5%2C2%2C18%2C19%2C20&_=1596506499502', '1596506516', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('246', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=5%2C2%2C18%2C19%2C20%2C21&_=1596506499503', '1596506517', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('247', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 2\n            [cate_id] => 1\n            [folder] => res/202007/22/\n            [name] => 84ecb412f4ff577b.png\n            [ext] => png\n            [filename] => res/202007/22/84ecb412f4ff577b.pn', 'http://localhost/blogs/admin.php?c=upload&f=thumbshow&id=5%2C2%2C18%2C19%2C20%2C21%2C22&_=1596506499504', '1596506518', 'admin', 'upload', 'thumbshow', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('248', '<pre>Array\n(\n    [0] => Array\n        (\n            [id] => 28\n            [identifier] => summary\n            [title] => 摘要\n            [type] => text\n        )\n\n    [1] => Array\n        (\n            [id] => 2\n            [identifier] => content\n       ', 'http://localhost/blogs/admin.php?c=project&f=mfields&id=1&_=1596507203730', '1596507203', 'admin', 'project', 'mfields', '1', '0', '::1', '', '1', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('249', '主题删除成功', 'http://localhost/blogs/admin.php?c=list&f=del&id=36&_=1596507159892', '1596507274', 'admin', 'list', 'del', '1', '0', '::1', '', '0', 'irva581brttvgmg8idlkl5i755');
INSERT INTO `tb_log` VALUES ('250', '管理员登录成功', 'http://localhost/blogs/admin.php?c=login&f=ok', '1596507738', 'admin', 'login', 'ok', '1', '0', '::1', '', '0', 'd8sdvq2mbnooae2mhjgemfuvt2');
INSERT INTO `tb_log` VALUES ('251', '1', 'http://localhost/blogs/admin.php?c=admin&f=status&id=2&_=1596507966396', '1596507968', 'admin', 'admin', 'status', '1', '0', '::1', '', '0', 'd8sdvq2mbnooae2mhjgemfuvt2');
INSERT INTO `tb_log` VALUES ('252', '管理员 &lt;span class=&quot;red&quot;&gt;admin&lt;/span&gt; 成功退出', 'http://localhost/blogs/admin.php?c=logout', '1596507975', 'admin', 'logout', 'index', '0', '0', '::1', '', '0', 'd8sdvq2mbnooae2mhjgemfuvt2');
INSERT INTO `tb_log` VALUES ('253', '你的管理权限未设置好，请联系超级管理员进行设置', 'http://localhost/blogs/admin.php?c=login&f=ok', '1596507983', 'admin', 'login', 'ok', '0', '0', '::1', '', '0', 'd8sdvq2mbnooae2mhjgemfuvt2');
INSERT INTO `tb_log` VALUES ('254', '管理员登录成功', 'http://localhost/blogs/admin.php?c=login&f=ok', '1596507994', 'admin', 'login', 'ok', '1', '0', '::1', '', '0', 'd8sdvq2mbnooae2mhjgemfuvt2');
INSERT INTO `tb_log` VALUES ('255', '管理员 &lt;span class=&quot;red&quot;&gt;admin&lt;/span&gt; 成功退出', 'http://localhost/blogs/admin.php?c=logout', '1596508130', 'admin', 'logout', 'index', '0', '0', '::1', '', '0', 'd8sdvq2mbnooae2mhjgemfuvt2');
INSERT INTO `tb_log` VALUES ('256', '验证码不能为空', 'http://localhost/blogs/admin.php?c=login&f=ok', '1596508143', 'admin', 'login', 'ok', '0', '0', '::1', '', '0', 'd8sdvq2mbnooae2mhjgemfuvt2');
INSERT INTO `tb_log` VALUES ('257', '管理员登录成功', 'http://localhost/blogs/admin.php?c=login&f=ok', '1596508172', 'admin', 'login', 'ok', '2', '0', '::1', '', '0', 'd8sdvq2mbnooae2mhjgemfuvt2');
INSERT INTO `tb_log` VALUES ('258', '管理员 &lt;span class=&quot;red&quot;&gt;test&lt;/span&gt; 成功退出', 'http://localhost/blogs/admin.php?c=logout', '1596508188', 'admin', 'logout', 'index', '0', '0', '::1', '', '0', 'd8sdvq2mbnooae2mhjgemfuvt2');
INSERT INTO `tb_log` VALUES ('259', '管理员登录成功', 'http://localhost/blogs/admin.php?c=login&f=ok', '1596508246', 'admin', 'login', 'ok', '1', '0', '::1', '', '0', 'cerpgkmuaspvn9tsv2o6m3r727');
INSERT INTO `tb_log` VALUES ('260', '45', 'http://localhost/blogs/admin.php?c=list&f=ok', '1596508544', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'cerpgkmuaspvn9tsv2o6m3r727');
INSERT INTO `tb_log` VALUES ('261', '46', 'http://localhost/blogs/admin.php?c=list&f=ok', '1596508844', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'cerpgkmuaspvn9tsv2o6m3r727');
INSERT INTO `tb_log` VALUES ('262', '47', 'http://localhost/blogs/admin.php?c=list&f=ok', '1596509029', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'cerpgkmuaspvn9tsv2o6m3r727');
INSERT INTO `tb_log` VALUES ('263', '48', 'http://localhost/blogs/admin.php?c=list&f=ok', '1596509183', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'cerpgkmuaspvn9tsv2o6m3r727');
INSERT INTO `tb_log` VALUES ('264', '48', 'http://localhost/blogs/admin.php?c=list&f=ok', '1596509253', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'cerpgkmuaspvn9tsv2o6m3r727');
INSERT INTO `tb_log` VALUES ('265', '47', 'http://localhost/blogs/admin.php?c=list&f=ok', '1596509266', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'cerpgkmuaspvn9tsv2o6m3r727');
INSERT INTO `tb_log` VALUES ('266', '48', 'http://localhost/blogs/admin.php?c=list&f=ok', '1596509451', 'admin', 'list', 'ok', '1', '0', '::1', '', '0', 'cerpgkmuaspvn9tsv2o6m3r727');
INSERT INTO `tb_log` VALUES ('267', '主题删除成功', 'http://localhost/blogs/admin.php?c=list&f=del&id=47&_=1596509455264', '1596509483', 'admin', 'list', 'del', '1', '0', '::1', '', '0', 'cerpgkmuaspvn9tsv2o6m3r727');

-- ----------------------------
-- Table structure for tb_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID，主键',
  `site_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '站点ID',
  `group_id` varchar(255) NOT NULL COMMENT '菜单组ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父级ID，支持无限级菜单',
  `title` varchar(255) NOT NULL COMMENT '菜单名称',
  `type` varchar(255) NOT NULL COMMENT '类型，project指项目，cate指分类，content指内容，link自定义',
  `project_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '项目ID',
  `cate_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `list_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '主题ID',
  `link` varchar(255) NOT NULL COMMENT '自定义链接，最长不能超过255',
  `target` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0当前页，1新窗口',
  `is_userid` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0游客，1仅限会员',
  `taxis` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序，最大255，值越小越往前靠',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0未审，1正常',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`,`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of tb_menu
-- ----------------------------

-- ----------------------------
-- Table structure for tb_module
-- ----------------------------
DROP TABLE IF EXISTS `tb_module`;
CREATE TABLE `tb_module` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID号',
  `title` varchar(255) NOT NULL COMMENT '模块名称',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0不使用1使用',
  `taxis` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '模块排序',
  `note` varchar(255) NOT NULL COMMENT '模块说明',
  `layout` text NOT NULL COMMENT '布局',
  `mtype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0联合模块，1独立模块',
  `tbl` varchar(255) NOT NULL DEFAULT 'list' COMMENT '关联主表',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='模块管理，每创建一个模块自动创建一个表';

-- ----------------------------
-- Records of tb_module
-- ----------------------------
INSERT INTO `tb_module` VALUES ('1', '博客模块', '1', '5', '博客管理', 'hits,dateline,blogstag,author', '0', 'list');
INSERT INTO `tb_module` VALUES ('2', '友情链接', '1', '10', '友情链接', 'title,note,linkurl,adminreply,status', '1', 'list');
INSERT INTO `tb_module` VALUES ('3', '留言板', '1', '15', '留言板', 'fullname,qq,mobile,content,adminreply', '1', 'list');
INSERT INTO `tb_module` VALUES ('4', '我的相册', '1', '20', '我的相册', 'img', '1', 'list');
INSERT INTO `tb_module` VALUES ('5', '站点信息', '1', '25', '站点信息', 'historynumber,title,descripte,thumb,qq,wechat,git', '1', 'list');

-- ----------------------------
-- Table structure for tb_opt
-- ----------------------------
DROP TABLE IF EXISTS `tb_opt`;
CREATE TABLE `tb_opt` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID号',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '组ID',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '父级ID',
  `title` varchar(255) NOT NULL COMMENT '名称',
  `val` varchar(255) NOT NULL COMMENT '值',
  `taxis` int(10) unsigned NOT NULL DEFAULT '255' COMMENT '排序，值越小越往前靠',
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15141 DEFAULT CHARSET=utf8 COMMENT='表单列表选项';

-- ----------------------------
-- Records of tb_opt
-- ----------------------------
INSERT INTO `tb_opt` VALUES ('1', '1', '0', '未设置', '0', '30');
INSERT INTO `tb_opt` VALUES ('2', '1', '0', '男', '1', '10');
INSERT INTO `tb_opt` VALUES ('17', '4', '0', '是', '1', '10');
INSERT INTO `tb_opt` VALUES ('18', '4', '0', '否', '0', '20');
INSERT INTO `tb_opt` VALUES ('21', '6', '0', '当前窗口', '_self', '10');
INSERT INTO `tb_opt` VALUES ('22', '6', '0', '新窗口', '_blank', '20');
INSERT INTO `tb_opt` VALUES ('23', '7', '0', '启用', '1', '10');
INSERT INTO `tb_opt` VALUES ('24', '7', '0', '禁用', '', '20');
INSERT INTO `tb_opt` VALUES ('25', '8', '0', 'UTF-8', 'utf8', '20');
INSERT INTO `tb_opt` VALUES ('26', '8', '0', 'GBK', 'gbk', '10');
INSERT INTO `tb_opt` VALUES ('62', '12', '0', '不置顶', '', '10');
INSERT INTO `tb_opt` VALUES ('63', '12', '0', '一级置顶', '1', '20');
INSERT INTO `tb_opt` VALUES ('64', '12', '0', '二级置顶', '2', '30');
INSERT INTO `tb_opt` VALUES ('65', '13', '0', '三分钟', '180', '10');
INSERT INTO `tb_opt` VALUES ('66', '14', '0', '点击推事件', 'click', '10');
INSERT INTO `tb_opt` VALUES ('67', '14', '0', '跳转链接', 'view', '20');
INSERT INTO `tb_opt` VALUES ('10147', '19', '0', '北京市', '北京市', '5');
INSERT INTO `tb_opt` VALUES ('10148', '19', '10147', '朝阳区', '朝阳区', '5');
INSERT INTO `tb_opt` VALUES ('10149', '19', '10148', '三环到四环之间', '三环到四环之间', '5');
INSERT INTO `tb_opt` VALUES ('10150', '19', '10148', '四环到五环之间', '四环到五环之间', '10');
INSERT INTO `tb_opt` VALUES ('10151', '19', '10148', '五环到六环之间', '五环到六环之间', '15');
INSERT INTO `tb_opt` VALUES ('10152', '19', '10148', '管庄', '管庄', '20');
INSERT INTO `tb_opt` VALUES ('10153', '19', '10148', '北苑', '北苑', '25');
INSERT INTO `tb_opt` VALUES ('10154', '19', '10148', '定福庄', '定福庄', '30');
INSERT INTO `tb_opt` VALUES ('10155', '19', '10148', '三环以内', '三环以内', '35');
INSERT INTO `tb_opt` VALUES ('10156', '19', '10147', '海淀区', '海淀区', '10');
INSERT INTO `tb_opt` VALUES ('10157', '19', '10156', '三环以内', '三环以内', '5');
INSERT INTO `tb_opt` VALUES ('10158', '19', '10156', '三环到四环之间', '三环到四环之间', '10');
INSERT INTO `tb_opt` VALUES ('10159', '19', '10156', '四环到五环之间', '四环到五环之间', '15');
INSERT INTO `tb_opt` VALUES ('10160', '19', '10156', '五环到六环之间', '五环到六环之间', '20');
INSERT INTO `tb_opt` VALUES ('10161', '19', '10156', '六环以外', '六环以外', '25');
INSERT INTO `tb_opt` VALUES ('10162', '19', '10156', '西三旗', '西三旗', '30');
INSERT INTO `tb_opt` VALUES ('10163', '19', '10156', '西二旗', '西二旗', '35');
INSERT INTO `tb_opt` VALUES ('10164', '19', '10147', '西城区', '西城区', '15');
INSERT INTO `tb_opt` VALUES ('10165', '19', '10164', '内环到二环里', '内环到二环里', '5');
INSERT INTO `tb_opt` VALUES ('10166', '19', '10164', '二环到三环', '二环到三环', '10');
INSERT INTO `tb_opt` VALUES ('10167', '19', '10147', '东城区', '东城区', '20');
INSERT INTO `tb_opt` VALUES ('10168', '19', '10167', '内环到三环里', '内环到三环里', '5');
INSERT INTO `tb_opt` VALUES ('10169', '19', '10147', '崇文区', '崇文区', '25');
INSERT INTO `tb_opt` VALUES ('10170', '19', '10169', '一环到二环', '一环到二环', '5');
INSERT INTO `tb_opt` VALUES ('10171', '19', '10169', '二环到三环', '二环到三环', '10');
INSERT INTO `tb_opt` VALUES ('10172', '19', '10147', '宣武区', '宣武区', '30');
INSERT INTO `tb_opt` VALUES ('10173', '19', '10172', '内环到三环里', '内环到三环里', '5');
INSERT INTO `tb_opt` VALUES ('10174', '19', '10147', '丰台区', '丰台区', '35');
INSERT INTO `tb_opt` VALUES ('10175', '19', '10174', '四环到五环之间', '四环到五环之间', '5');
INSERT INTO `tb_opt` VALUES ('10176', '19', '10174', '二环到三环', '二环到三环', '10');
INSERT INTO `tb_opt` VALUES ('10177', '19', '10174', '三环到四环之间', '三环到四环之间', '15');
INSERT INTO `tb_opt` VALUES ('10178', '19', '10174', '五环到六环之间', '五环到六环之间', '20');
INSERT INTO `tb_opt` VALUES ('10179', '19', '10174', '六环之外', '六环之外', '25');
INSERT INTO `tb_opt` VALUES ('10180', '19', '10147', '石景山区', '石景山区', '40');
INSERT INTO `tb_opt` VALUES ('10181', '19', '10180', '四环到五环内', '四环到五环内', '5');
INSERT INTO `tb_opt` VALUES ('10182', '19', '10180', '石景山城区', '石景山城区', '10');
INSERT INTO `tb_opt` VALUES ('10183', '19', '10180', '八大处科技园区', '八大处科技园区', '15');
INSERT INTO `tb_opt` VALUES ('10184', '19', '10147', '门头沟', '门头沟', '45');
INSERT INTO `tb_opt` VALUES ('10185', '19', '10184', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('10186', '19', '10184', '龙泉镇', '龙泉镇', '10');
INSERT INTO `tb_opt` VALUES ('10187', '19', '10184', '永定镇', '永定镇', '15');
INSERT INTO `tb_opt` VALUES ('10188', '19', '10184', '大台镇', '大台镇', '20');
INSERT INTO `tb_opt` VALUES ('10189', '19', '10184', '潭柘寺镇', '潭柘寺镇', '25');
INSERT INTO `tb_opt` VALUES ('10190', '19', '10184', '王平镇', '王平镇', '30');
INSERT INTO `tb_opt` VALUES ('10191', '19', '10184', '军庄镇', '军庄镇', '35');
INSERT INTO `tb_opt` VALUES ('10192', '19', '10184', '妙峰山镇', '妙峰山镇', '40');
INSERT INTO `tb_opt` VALUES ('10193', '19', '10184', '雁翅镇', '雁翅镇', '45');
INSERT INTO `tb_opt` VALUES ('10194', '19', '10184', '斋堂镇', '斋堂镇', '50');
INSERT INTO `tb_opt` VALUES ('10195', '19', '10184', '清水镇', '清水镇', '55');
INSERT INTO `tb_opt` VALUES ('10196', '19', '10147', '房山区', '房山区', '50');
INSERT INTO `tb_opt` VALUES ('10197', '19', '10196', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('10198', '19', '10196', '大安山乡', '大安山乡', '10');
INSERT INTO `tb_opt` VALUES ('10199', '19', '10196', '大石窝镇', '大石窝镇', '15');
INSERT INTO `tb_opt` VALUES ('10200', '19', '10196', '窦店镇', '窦店镇', '20');
INSERT INTO `tb_opt` VALUES ('10201', '19', '10196', '佛子庄乡', '佛子庄乡', '25');
INSERT INTO `tb_opt` VALUES ('10202', '19', '10196', '韩村河镇', '韩村河镇', '30');
INSERT INTO `tb_opt` VALUES ('10203', '19', '10196', '河北镇', '河北镇', '35');
INSERT INTO `tb_opt` VALUES ('10204', '19', '10196', '良乡镇', '良乡镇', '40');
INSERT INTO `tb_opt` VALUES ('10205', '19', '10196', '琉璃河镇', '琉璃河镇', '45');
INSERT INTO `tb_opt` VALUES ('10206', '19', '10196', '南窖乡', '南窖乡', '50');
INSERT INTO `tb_opt` VALUES ('10207', '19', '10196', '蒲洼乡', '蒲洼乡', '55');
INSERT INTO `tb_opt` VALUES ('10208', '19', '10196', '青龙湖镇', '青龙湖镇', '60');
INSERT INTO `tb_opt` VALUES ('10209', '19', '10196', '十渡镇', '十渡镇', '65');
INSERT INTO `tb_opt` VALUES ('10210', '19', '10196', '石楼镇', '石楼镇', '70');
INSERT INTO `tb_opt` VALUES ('10211', '19', '10196', '史家营乡', '史家营乡', '75');
INSERT INTO `tb_opt` VALUES ('10212', '19', '10196', '霞云岭乡', '霞云岭乡', '80');
INSERT INTO `tb_opt` VALUES ('10213', '19', '10196', '新镇', '新镇', '85');
INSERT INTO `tb_opt` VALUES ('10214', '19', '10196', '阎村镇', '阎村镇', '90');
INSERT INTO `tb_opt` VALUES ('10215', '19', '10196', '燕山地区', '燕山地区', '95');
INSERT INTO `tb_opt` VALUES ('10216', '19', '10196', '张坊镇', '张坊镇', '100');
INSERT INTO `tb_opt` VALUES ('10217', '19', '10196', '长沟镇', '长沟镇', '105');
INSERT INTO `tb_opt` VALUES ('10218', '19', '10196', '长阳镇', '长阳镇', '110');
INSERT INTO `tb_opt` VALUES ('10219', '19', '10196', '周口店镇', '周口店镇', '115');
INSERT INTO `tb_opt` VALUES ('10220', '19', '10147', '通州区', '通州区', '55');
INSERT INTO `tb_opt` VALUES ('10221', '19', '10220', '六环内（马驹桥镇）', '六环内（马驹桥镇）', '5');
INSERT INTO `tb_opt` VALUES ('10222', '19', '10220', '中仓街道', '中仓街道', '10');
INSERT INTO `tb_opt` VALUES ('10223', '19', '10220', '新华街道', '新华街道', '15');
INSERT INTO `tb_opt` VALUES ('10224', '19', '10220', '玉桥街道', '玉桥街道', '20');
INSERT INTO `tb_opt` VALUES ('10225', '19', '10220', '北苑街道', '北苑街道', '25');
INSERT INTO `tb_opt` VALUES ('10226', '19', '10220', '六环外（马驹桥镇）', '六环外（马驹桥镇）', '30');
INSERT INTO `tb_opt` VALUES ('10227', '19', '10220', '永顺镇', '永顺镇', '35');
INSERT INTO `tb_opt` VALUES ('10228', '19', '10220', '梨园镇', '梨园镇', '40');
INSERT INTO `tb_opt` VALUES ('10229', '19', '10220', '宋庄镇', '宋庄镇', '45');
INSERT INTO `tb_opt` VALUES ('10230', '19', '10220', '漷县镇', '漷县镇', '50');
INSERT INTO `tb_opt` VALUES ('10231', '19', '10220', '张家湾镇', '张家湾镇', '55');
INSERT INTO `tb_opt` VALUES ('10232', '19', '10220', '西集镇', '西集镇', '60');
INSERT INTO `tb_opt` VALUES ('10233', '19', '10220', '永乐店镇', '永乐店镇', '65');
INSERT INTO `tb_opt` VALUES ('10234', '19', '10220', '潞城镇', '潞城镇', '70');
INSERT INTO `tb_opt` VALUES ('10235', '19', '10220', '台湖镇', '台湖镇', '75');
INSERT INTO `tb_opt` VALUES ('10236', '19', '10220', '于家务乡', '于家务乡', '80');
INSERT INTO `tb_opt` VALUES ('10237', '19', '10220', '次渠镇', '次渠镇', '85');
INSERT INTO `tb_opt` VALUES ('10238', '19', '10147', '大兴区', '大兴区', '60');
INSERT INTO `tb_opt` VALUES ('10239', '19', '10238', '四环至五环之间', '四环至五环之间', '5');
INSERT INTO `tb_opt` VALUES ('10240', '19', '10238', '五环至六环之间', '五环至六环之间', '10');
INSERT INTO `tb_opt` VALUES ('10241', '19', '10238', '六环以外', '六环以外', '15');
INSERT INTO `tb_opt` VALUES ('10242', '19', '10238', '亦庄经济开发区', '亦庄经济开发区', '20');
INSERT INTO `tb_opt` VALUES ('10243', '19', '10147', '顺义区', '顺义区', '65');
INSERT INTO `tb_opt` VALUES ('10244', '19', '10243', '北石槽镇', '北石槽镇', '5');
INSERT INTO `tb_opt` VALUES ('10245', '19', '10243', '北务镇', '北务镇', '10');
INSERT INTO `tb_opt` VALUES ('10246', '19', '10243', '北小营镇', '北小营镇', '15');
INSERT INTO `tb_opt` VALUES ('10247', '19', '10243', '大孙各庄镇', '大孙各庄镇', '20');
INSERT INTO `tb_opt` VALUES ('10248', '19', '10243', '高丽营镇', '高丽营镇', '25');
INSERT INTO `tb_opt` VALUES ('10249', '19', '10243', '光明街道', '光明街道', '30');
INSERT INTO `tb_opt` VALUES ('10250', '19', '10243', '后沙峪地区', '后沙峪地区', '35');
INSERT INTO `tb_opt` VALUES ('10251', '19', '10243', '空港街道', '空港街道', '40');
INSERT INTO `tb_opt` VALUES ('10252', '19', '10243', '李桥镇', '李桥镇', '45');
INSERT INTO `tb_opt` VALUES ('10253', '19', '10243', '李遂镇', '李遂镇', '50');
INSERT INTO `tb_opt` VALUES ('10254', '19', '10243', '龙湾屯镇', '龙湾屯镇', '55');
INSERT INTO `tb_opt` VALUES ('10255', '19', '10243', '马坡地区', '马坡地区', '60');
INSERT INTO `tb_opt` VALUES ('10256', '19', '10243', '木林镇', '木林镇', '65');
INSERT INTO `tb_opt` VALUES ('10257', '19', '10243', '南彩镇', '南彩镇', '70');
INSERT INTO `tb_opt` VALUES ('10258', '19', '10243', '南法信地区', '南法信地区', '75');
INSERT INTO `tb_opt` VALUES ('10259', '19', '10243', '牛栏山地区', '牛栏山地区', '80');
INSERT INTO `tb_opt` VALUES ('10260', '19', '10243', '仁和地区', '仁和地区', '85');
INSERT INTO `tb_opt` VALUES ('10261', '19', '10243', '胜利街道', '胜利街道', '90');
INSERT INTO `tb_opt` VALUES ('10262', '19', '10243', '石园街道', '石园街道', '95');
INSERT INTO `tb_opt` VALUES ('10263', '19', '10243', '双丰街道', '双丰街道', '100');
INSERT INTO `tb_opt` VALUES ('10264', '19', '10243', '天竺地区', '天竺地区', '105');
INSERT INTO `tb_opt` VALUES ('10265', '19', '10243', '旺泉街道', '旺泉街道', '110');
INSERT INTO `tb_opt` VALUES ('10266', '19', '10243', '杨镇地区', '杨镇地区', '115');
INSERT INTO `tb_opt` VALUES ('10267', '19', '10243', '张镇', '张镇', '120');
INSERT INTO `tb_opt` VALUES ('10268', '19', '10243', '赵全营镇', '赵全营镇', '125');
INSERT INTO `tb_opt` VALUES ('10269', '19', '10147', '怀柔区', '怀柔区', '70');
INSERT INTO `tb_opt` VALUES ('10270', '19', '10269', '城区以内', '城区以内', '5');
INSERT INTO `tb_opt` VALUES ('10271', '19', '10269', '郊区', '郊区', '10');
INSERT INTO `tb_opt` VALUES ('10272', '19', '10147', '密云区', '密云区', '75');
INSERT INTO `tb_opt` VALUES ('10273', '19', '10272', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('10274', '19', '10272', '城区以外', '城区以外', '10');
INSERT INTO `tb_opt` VALUES ('10275', '19', '10147', '昌平区', '昌平区', '80');
INSERT INTO `tb_opt` VALUES ('10276', '19', '10275', '六环以内', '六环以内', '5');
INSERT INTO `tb_opt` VALUES ('10277', '19', '10275', '城区', '城区', '10');
INSERT INTO `tb_opt` VALUES ('10278', '19', '10275', '城区以外', '城区以外', '15');
INSERT INTO `tb_opt` VALUES ('10279', '19', '10147', '平谷区', '平谷区', '85');
INSERT INTO `tb_opt` VALUES ('10280', '19', '10279', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('10281', '19', '10279', '城区以外', '城区以外', '10');
INSERT INTO `tb_opt` VALUES ('10282', '19', '10147', '延庆县', '延庆县', '90');
INSERT INTO `tb_opt` VALUES ('10283', '19', '10282', '延庆镇', '延庆镇', '5');
INSERT INTO `tb_opt` VALUES ('10284', '19', '10282', '城区', '城区', '10');
INSERT INTO `tb_opt` VALUES ('10285', '19', '10282', '康庄镇', '康庄镇', '15');
INSERT INTO `tb_opt` VALUES ('10286', '19', '10282', '八达岭镇', '八达岭镇', '20');
INSERT INTO `tb_opt` VALUES ('10287', '19', '10282', '永宁镇', '永宁镇', '25');
INSERT INTO `tb_opt` VALUES ('10288', '19', '10282', '旧县镇', '旧县镇', '30');
INSERT INTO `tb_opt` VALUES ('10289', '19', '10282', '张山营镇', '张山营镇', '35');
INSERT INTO `tb_opt` VALUES ('10290', '19', '10282', '四海镇', '四海镇', '40');
INSERT INTO `tb_opt` VALUES ('10291', '19', '10282', '千家店镇', '千家店镇', '45');
INSERT INTO `tb_opt` VALUES ('10292', '19', '10282', '沈家营镇', '沈家营镇', '50');
INSERT INTO `tb_opt` VALUES ('10293', '19', '10282', '大榆树镇', '大榆树镇', '55');
INSERT INTO `tb_opt` VALUES ('10294', '19', '10282', '井庄镇', '井庄镇', '60');
INSERT INTO `tb_opt` VALUES ('10295', '19', '10282', '大庄科乡', '大庄科乡', '65');
INSERT INTO `tb_opt` VALUES ('10296', '19', '10282', '刘斌堡乡', '刘斌堡乡', '70');
INSERT INTO `tb_opt` VALUES ('10297', '19', '10282', '香营乡', '香营乡', '75');
INSERT INTO `tb_opt` VALUES ('10298', '19', '10282', '珍珠泉乡', '珍珠泉乡', '80');
INSERT INTO `tb_opt` VALUES ('10299', '19', '0', '上海市', '上海市', '10');
INSERT INTO `tb_opt` VALUES ('10300', '19', '10299', '黄浦区', '黄浦区', '5');
INSERT INTO `tb_opt` VALUES ('10301', '19', '10299', '徐汇区', '徐汇区', '10');
INSERT INTO `tb_opt` VALUES ('10302', '19', '10299', '长宁区', '长宁区', '15');
INSERT INTO `tb_opt` VALUES ('10303', '19', '10299', '静安区', '静安区', '20');
INSERT INTO `tb_opt` VALUES ('10304', '19', '10299', '闸北区', '闸北区', '25');
INSERT INTO `tb_opt` VALUES ('10305', '19', '10299', '虹口区', '虹口区', '30');
INSERT INTO `tb_opt` VALUES ('10306', '19', '10299', '杨浦区', '杨浦区', '35');
INSERT INTO `tb_opt` VALUES ('10307', '19', '10299', '宝山区', '宝山区', '40');
INSERT INTO `tb_opt` VALUES ('10308', '19', '10307', '罗店镇', '罗店镇', '5');
INSERT INTO `tb_opt` VALUES ('10309', '19', '10307', '城区', '城区', '10');
INSERT INTO `tb_opt` VALUES ('10310', '19', '10307', '大场镇', '大场镇', '15');
INSERT INTO `tb_opt` VALUES ('10311', '19', '10307', '杨行镇', '杨行镇', '20');
INSERT INTO `tb_opt` VALUES ('10312', '19', '10307', '月浦镇', '月浦镇', '25');
INSERT INTO `tb_opt` VALUES ('10313', '19', '10307', '罗泾镇', '罗泾镇', '30');
INSERT INTO `tb_opt` VALUES ('10314', '19', '10307', '顾村镇', '顾村镇', '35');
INSERT INTO `tb_opt` VALUES ('10315', '19', '10307', '高境镇', '高境镇', '40');
INSERT INTO `tb_opt` VALUES ('10316', '19', '10307', '庙行镇', '庙行镇', '45');
INSERT INTO `tb_opt` VALUES ('10317', '19', '10307', '淞南镇', '淞南镇', '50');
INSERT INTO `tb_opt` VALUES ('10318', '19', '10307', '宝山城市工业园区', '宝山城市工业园区', '55');
INSERT INTO `tb_opt` VALUES ('10319', '19', '10299', '闵行区', '闵行区', '45');
INSERT INTO `tb_opt` VALUES ('10320', '19', '10319', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('10321', '19', '10319', '莘庄镇', '莘庄镇', '10');
INSERT INTO `tb_opt` VALUES ('10322', '19', '10319', '七宝镇', '七宝镇', '15');
INSERT INTO `tb_opt` VALUES ('10323', '19', '10319', '浦江镇', '浦江镇', '20');
INSERT INTO `tb_opt` VALUES ('10324', '19', '10319', '梅陇镇', '梅陇镇', '25');
INSERT INTO `tb_opt` VALUES ('10325', '19', '10319', '虹桥镇', '虹桥镇', '30');
INSERT INTO `tb_opt` VALUES ('10326', '19', '10319', '马桥镇', '马桥镇', '35');
INSERT INTO `tb_opt` VALUES ('10327', '19', '10319', '吴泾镇', '吴泾镇', '40');
INSERT INTO `tb_opt` VALUES ('10328', '19', '10319', '华漕镇', '华漕镇', '45');
INSERT INTO `tb_opt` VALUES ('10329', '19', '10319', '颛桥镇', '颛桥镇', '50');
INSERT INTO `tb_opt` VALUES ('10330', '19', '10299', '嘉定区', '嘉定区', '50');
INSERT INTO `tb_opt` VALUES ('10331', '19', '10330', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('10332', '19', '10330', '南翔镇', '南翔镇', '10');
INSERT INTO `tb_opt` VALUES ('10333', '19', '10330', '马陆镇', '马陆镇', '15');
INSERT INTO `tb_opt` VALUES ('10334', '19', '10330', '华亭镇', '华亭镇', '20');
INSERT INTO `tb_opt` VALUES ('10335', '19', '10330', '江桥镇', '江桥镇', '25');
INSERT INTO `tb_opt` VALUES ('10336', '19', '10330', '菊园新区', '菊园新区', '30');
INSERT INTO `tb_opt` VALUES ('10337', '19', '10330', '安亭镇', '安亭镇', '35');
INSERT INTO `tb_opt` VALUES ('10338', '19', '10330', '徐行镇', '徐行镇', '40');
INSERT INTO `tb_opt` VALUES ('10339', '19', '10330', '外冈镇', '外冈镇', '45');
INSERT INTO `tb_opt` VALUES ('10340', '19', '10330', '嘉定工业区', '嘉定工业区', '50');
INSERT INTO `tb_opt` VALUES ('10341', '19', '10299', '浦东新区', '浦东新区', '55');
INSERT INTO `tb_opt` VALUES ('10342', '19', '10341', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('10343', '19', '10341', '川沙新镇', '川沙新镇', '10');
INSERT INTO `tb_opt` VALUES ('10344', '19', '10341', '祝桥镇', '祝桥镇', '15');
INSERT INTO `tb_opt` VALUES ('10345', '19', '10341', '新场镇', '新场镇', '20');
INSERT INTO `tb_opt` VALUES ('10346', '19', '10341', '高桥镇', '高桥镇', '25');
INSERT INTO `tb_opt` VALUES ('10347', '19', '10341', '惠南镇', '惠南镇', '30');
INSERT INTO `tb_opt` VALUES ('10348', '19', '10341', '北蔡镇', '北蔡镇', '35');
INSERT INTO `tb_opt` VALUES ('10349', '19', '10341', '合庆镇', '合庆镇', '40');
INSERT INTO `tb_opt` VALUES ('10350', '19', '10341', '唐镇', '唐镇', '45');
INSERT INTO `tb_opt` VALUES ('10351', '19', '10341', '曹路镇', '曹路镇', '50');
INSERT INTO `tb_opt` VALUES ('10352', '19', '10341', '金桥镇', '金桥镇', '55');
INSERT INTO `tb_opt` VALUES ('10353', '19', '10341', '高行镇', '高行镇', '60');
INSERT INTO `tb_opt` VALUES ('10354', '19', '10341', '高东镇', '高东镇', '65');
INSERT INTO `tb_opt` VALUES ('10355', '19', '10341', '张江镇', '张江镇', '70');
INSERT INTO `tb_opt` VALUES ('10356', '19', '10341', '三林镇', '三林镇', '75');
INSERT INTO `tb_opt` VALUES ('10357', '19', '10341', '南汇新城镇', '南汇新城镇', '80');
INSERT INTO `tb_opt` VALUES ('10358', '19', '10341', '康桥镇', '康桥镇', '85');
INSERT INTO `tb_opt` VALUES ('10359', '19', '10341', '宣桥镇', '宣桥镇', '90');
INSERT INTO `tb_opt` VALUES ('10360', '19', '10341', '书院镇', '书院镇', '95');
INSERT INTO `tb_opt` VALUES ('10361', '19', '10341', '大团镇', '大团镇', '100');
INSERT INTO `tb_opt` VALUES ('10362', '19', '10341', '周浦镇', '周浦镇', '105');
INSERT INTO `tb_opt` VALUES ('10363', '19', '10341', '芦潮港镇', '芦潮港镇', '110');
INSERT INTO `tb_opt` VALUES ('10364', '19', '10341', '泥城镇', '泥城镇', '115');
INSERT INTO `tb_opt` VALUES ('10365', '19', '10341', '航头镇', '航头镇', '120');
INSERT INTO `tb_opt` VALUES ('10366', '19', '10341', '万祥镇', '万祥镇', '125');
INSERT INTO `tb_opt` VALUES ('10367', '19', '10341', '老港镇', '老港镇', '130');
INSERT INTO `tb_opt` VALUES ('10368', '19', '10299', '青浦区', '青浦区', '60');
INSERT INTO `tb_opt` VALUES ('10369', '19', '10368', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('10370', '19', '10368', '赵巷镇', '赵巷镇', '10');
INSERT INTO `tb_opt` VALUES ('10371', '19', '10368', '徐泾镇', '徐泾镇', '15');
INSERT INTO `tb_opt` VALUES ('10372', '19', '10368', '华新镇', '华新镇', '20');
INSERT INTO `tb_opt` VALUES ('10373', '19', '10368', '重固镇', '重固镇', '25');
INSERT INTO `tb_opt` VALUES ('10374', '19', '10368', '白鹤镇', '白鹤镇', '30');
INSERT INTO `tb_opt` VALUES ('10375', '19', '10368', '练塘镇', '练塘镇', '35');
INSERT INTO `tb_opt` VALUES ('10376', '19', '10368', '金泽镇', '金泽镇', '40');
INSERT INTO `tb_opt` VALUES ('10377', '19', '10368', '朱家角镇', '朱家角镇', '45');
INSERT INTO `tb_opt` VALUES ('10378', '19', '10299', '松江区', '松江区', '65');
INSERT INTO `tb_opt` VALUES ('10379', '19', '10378', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('10380', '19', '10378', '泗泾镇', '泗泾镇', '10');
INSERT INTO `tb_opt` VALUES ('10381', '19', '10378', '佘山镇', '佘山镇', '15');
INSERT INTO `tb_opt` VALUES ('10382', '19', '10378', '车墩镇', '车墩镇', '20');
INSERT INTO `tb_opt` VALUES ('10383', '19', '10378', '新桥镇', '新桥镇', '25');
INSERT INTO `tb_opt` VALUES ('10384', '19', '10378', '洞泾镇', '洞泾镇', '30');
INSERT INTO `tb_opt` VALUES ('10385', '19', '10378', '九亭镇', '九亭镇', '35');
INSERT INTO `tb_opt` VALUES ('10386', '19', '10378', '泖港镇', '泖港镇', '40');
INSERT INTO `tb_opt` VALUES ('10387', '19', '10378', '石湖荡镇', '石湖荡镇', '45');
INSERT INTO `tb_opt` VALUES ('10388', '19', '10378', '新浜镇', '新浜镇', '50');
INSERT INTO `tb_opt` VALUES ('10389', '19', '10378', '叶榭镇', '叶榭镇', '55');
INSERT INTO `tb_opt` VALUES ('10390', '19', '10378', '小昆山镇', '小昆山镇', '60');
INSERT INTO `tb_opt` VALUES ('10391', '19', '10299', '金山区', '金山区', '70');
INSERT INTO `tb_opt` VALUES ('10392', '19', '10391', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('10393', '19', '10391', '金山工业区', '金山工业区', '10');
INSERT INTO `tb_opt` VALUES ('10394', '19', '10391', '朱泾镇', '朱泾镇', '15');
INSERT INTO `tb_opt` VALUES ('10395', '19', '10391', '枫泾镇', '枫泾镇', '20');
INSERT INTO `tb_opt` VALUES ('10396', '19', '10391', '张堰镇', '张堰镇', '25');
INSERT INTO `tb_opt` VALUES ('10397', '19', '10391', '亭林镇', '亭林镇', '30');
INSERT INTO `tb_opt` VALUES ('10398', '19', '10391', '吕巷镇', '吕巷镇', '35');
INSERT INTO `tb_opt` VALUES ('10399', '19', '10391', '廊下镇', '廊下镇', '40');
INSERT INTO `tb_opt` VALUES ('10400', '19', '10391', '金山卫镇', '金山卫镇', '45');
INSERT INTO `tb_opt` VALUES ('10401', '19', '10391', '漕泾镇', '漕泾镇', '50');
INSERT INTO `tb_opt` VALUES ('10402', '19', '10391', '山阳镇', '山阳镇', '55');
INSERT INTO `tb_opt` VALUES ('10403', '19', '10299', '奉贤区', '奉贤区', '75');
INSERT INTO `tb_opt` VALUES ('10404', '19', '10403', '南桥镇', '南桥镇', '5');
INSERT INTO `tb_opt` VALUES ('10405', '19', '10403', '奉城镇', '奉城镇', '10');
INSERT INTO `tb_opt` VALUES ('10406', '19', '10403', '四团镇', '四团镇', '15');
INSERT INTO `tb_opt` VALUES ('10407', '19', '10403', '柘林镇', '柘林镇', '20');
INSERT INTO `tb_opt` VALUES ('10408', '19', '10403', '庄行镇', '庄行镇', '25');
INSERT INTO `tb_opt` VALUES ('10409', '19', '10403', '金汇镇', '金汇镇', '30');
INSERT INTO `tb_opt` VALUES ('10410', '19', '10403', '青村镇', '青村镇', '35');
INSERT INTO `tb_opt` VALUES ('10411', '19', '10403', '海湾镇', '海湾镇', '40');
INSERT INTO `tb_opt` VALUES ('10412', '19', '10299', '普陀区', '普陀区', '80');
INSERT INTO `tb_opt` VALUES ('10413', '19', '10299', '崇明县', '崇明县', '85');
INSERT INTO `tb_opt` VALUES ('10414', '19', '10413', '堡镇', '堡镇', '5');
INSERT INTO `tb_opt` VALUES ('10415', '19', '10413', '庙镇', '庙镇', '10');
INSERT INTO `tb_opt` VALUES ('10416', '19', '10413', '陈家镇', '陈家镇', '15');
INSERT INTO `tb_opt` VALUES ('10417', '19', '10413', '城桥镇', '城桥镇', '20');
INSERT INTO `tb_opt` VALUES ('10418', '19', '10413', '东平镇', '东平镇', '25');
INSERT INTO `tb_opt` VALUES ('10419', '19', '10413', '港西镇', '港西镇', '30');
INSERT INTO `tb_opt` VALUES ('10420', '19', '10413', '港沿镇', '港沿镇', '35');
INSERT INTO `tb_opt` VALUES ('10421', '19', '10413', '建设镇', '建设镇', '40');
INSERT INTO `tb_opt` VALUES ('10422', '19', '10413', '绿华镇', '绿华镇', '45');
INSERT INTO `tb_opt` VALUES ('10423', '19', '10413', '三星镇', '三星镇', '50');
INSERT INTO `tb_opt` VALUES ('10424', '19', '10413', '竖新镇', '竖新镇', '55');
INSERT INTO `tb_opt` VALUES ('10425', '19', '10413', '向化镇', '向化镇', '60');
INSERT INTO `tb_opt` VALUES ('10426', '19', '10413', '新海镇', '新海镇', '65');
INSERT INTO `tb_opt` VALUES ('10427', '19', '10413', '新河镇', '新河镇', '70');
INSERT INTO `tb_opt` VALUES ('10428', '19', '10413', '中兴镇', '中兴镇', '75');
INSERT INTO `tb_opt` VALUES ('10429', '19', '10413', '长兴乡', '长兴乡', '80');
INSERT INTO `tb_opt` VALUES ('10430', '19', '10413', '横沙乡', '横沙乡', '85');
INSERT INTO `tb_opt` VALUES ('10431', '19', '10413', '新村乡', '新村乡', '90');
INSERT INTO `tb_opt` VALUES ('10432', '19', '0', '天津市', '天津市', '15');
INSERT INTO `tb_opt` VALUES ('10433', '19', '10432', '东丽区', '东丽区', '5');
INSERT INTO `tb_opt` VALUES ('10434', '19', '10432', '和平区', '和平区', '10');
INSERT INTO `tb_opt` VALUES ('10435', '19', '10432', '河北区', '河北区', '15');
INSERT INTO `tb_opt` VALUES ('10436', '19', '10432', '河东区', '河东区', '20');
INSERT INTO `tb_opt` VALUES ('10437', '19', '10432', '河西区', '河西区', '25');
INSERT INTO `tb_opt` VALUES ('10438', '19', '10432', '红桥区', '红桥区', '30');
INSERT INTO `tb_opt` VALUES ('10439', '19', '10432', '蓟县', '蓟县', '35');
INSERT INTO `tb_opt` VALUES ('10440', '19', '10432', '静海县', '静海县', '40');
INSERT INTO `tb_opt` VALUES ('10441', '19', '10432', '南开区', '南开区', '45');
INSERT INTO `tb_opt` VALUES ('10442', '19', '10432', '塘沽区', '塘沽区', '50');
INSERT INTO `tb_opt` VALUES ('10443', '19', '10432', '西青区', '西青区', '55');
INSERT INTO `tb_opt` VALUES ('10444', '19', '10443', '杨柳青,中北,精武,大寺镇,环外海泰及外环内', '杨柳青,中北,精武,大寺镇,环外海泰及外环内', '5');
INSERT INTO `tb_opt` VALUES ('10445', '19', '10443', '其它地区', '其它地区', '10');
INSERT INTO `tb_opt` VALUES ('10446', '19', '10432', '武清区', '武清区', '60');
INSERT INTO `tb_opt` VALUES ('10447', '19', '10446', '杨村镇、下朱庄内', '杨村镇、下朱庄内', '5');
INSERT INTO `tb_opt` VALUES ('10448', '19', '10446', '其它地区', '其它地区', '10');
INSERT INTO `tb_opt` VALUES ('10449', '19', '10432', '津南区', '津南区', '65');
INSERT INTO `tb_opt` VALUES ('10450', '19', '10449', '双港，辛庄', '双港，辛庄', '5');
INSERT INTO `tb_opt` VALUES ('10451', '19', '10449', '咸水沽镇、海河教育园，海河科技园', '咸水沽镇、海河教育园，海河科技园', '10');
INSERT INTO `tb_opt` VALUES ('10452', '19', '10449', '其他地区', '其他地区', '15');
INSERT INTO `tb_opt` VALUES ('10453', '19', '10432', '汉沽区', '汉沽区', '70');
INSERT INTO `tb_opt` VALUES ('10454', '19', '10453', '汉沽区街里、汉沽开发区', '汉沽区街里、汉沽开发区', '5');
INSERT INTO `tb_opt` VALUES ('10455', '19', '10453', '其它地区', '其它地区', '10');
INSERT INTO `tb_opt` VALUES ('10456', '19', '10432', '大港区', '大港区', '75');
INSERT INTO `tb_opt` VALUES ('10457', '19', '10456', '大港油田', '大港油田', '5');
INSERT INTO `tb_opt` VALUES ('10458', '19', '10456', '主城区内', '主城区内', '10');
INSERT INTO `tb_opt` VALUES ('10459', '19', '10456', '主城区外', '主城区外', '15');
INSERT INTO `tb_opt` VALUES ('10460', '19', '10432', '北辰区', '北辰区', '80');
INSERT INTO `tb_opt` VALUES ('10461', '19', '10460', '外环外双街镇，河北工大新校，屈店工业园', '外环外双街镇，河北工大新校，屈店工业园', '5');
INSERT INTO `tb_opt` VALUES ('10462', '19', '10460', '外环内', '外环内', '10');
INSERT INTO `tb_opt` VALUES ('10463', '19', '10460', '外环外其它地区', '外环外其它地区', '15');
INSERT INTO `tb_opt` VALUES ('10464', '19', '10432', '宝坻区', '宝坻区', '85');
INSERT INTO `tb_opt` VALUES ('10465', '19', '10464', '城关镇、马家店开发区、天宝工业园', '城关镇、马家店开发区、天宝工业园', '5');
INSERT INTO `tb_opt` VALUES ('10466', '19', '10464', '其它地区', '其它地区', '10');
INSERT INTO `tb_opt` VALUES ('10467', '19', '10432', '宁河县', '宁河县', '90');
INSERT INTO `tb_opt` VALUES ('10468', '19', '10467', '芦台镇、经济开发区、贸易开发区', '芦台镇、经济开发区、贸易开发区', '5');
INSERT INTO `tb_opt` VALUES ('10469', '19', '10467', '其它地区', '其它地区', '10');
INSERT INTO `tb_opt` VALUES ('10470', '19', '0', '重庆市', '重庆市', '20');
INSERT INTO `tb_opt` VALUES ('10471', '19', '10470', '万州区', '万州区', '5');
INSERT INTO `tb_opt` VALUES ('10472', '19', '10471', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('10473', '19', '10471', '白土镇', '白土镇', '10');
INSERT INTO `tb_opt` VALUES ('10474', '19', '10471', '白羊镇', '白羊镇', '15');
INSERT INTO `tb_opt` VALUES ('10475', '19', '10471', '大周镇', '大周镇', '20');
INSERT INTO `tb_opt` VALUES ('10476', '19', '10471', '弹子镇', '弹子镇', '25');
INSERT INTO `tb_opt` VALUES ('10477', '19', '10471', '分水镇', '分水镇', '30');
INSERT INTO `tb_opt` VALUES ('10478', '19', '10471', '甘宁镇', '甘宁镇', '35');
INSERT INTO `tb_opt` VALUES ('10479', '19', '10471', '高峰镇', '高峰镇', '40');
INSERT INTO `tb_opt` VALUES ('10480', '19', '10471', '高梁镇', '高梁镇', '45');
INSERT INTO `tb_opt` VALUES ('10481', '19', '10471', '后山镇', '后山镇', '50');
INSERT INTO `tb_opt` VALUES ('10482', '19', '10471', '李河镇', '李河镇', '55');
INSERT INTO `tb_opt` VALUES ('10483', '19', '10471', '龙驹镇', '龙驹镇', '60');
INSERT INTO `tb_opt` VALUES ('10484', '19', '10471', '龙沙镇', '龙沙镇', '65');
INSERT INTO `tb_opt` VALUES ('10485', '19', '10471', '罗田镇', '罗田镇', '70');
INSERT INTO `tb_opt` VALUES ('10486', '19', '10471', '孙家镇', '孙家镇', '75');
INSERT INTO `tb_opt` VALUES ('10487', '19', '10471', '太安镇', '太安镇', '80');
INSERT INTO `tb_opt` VALUES ('10488', '19', '10471', '太龙镇', '太龙镇', '85');
INSERT INTO `tb_opt` VALUES ('10489', '19', '10471', '天城镇', '天城镇', '90');
INSERT INTO `tb_opt` VALUES ('10490', '19', '10471', '武陵镇', '武陵镇', '95');
INSERT INTO `tb_opt` VALUES ('10491', '19', '10471', '响水镇', '响水镇', '100');
INSERT INTO `tb_opt` VALUES ('10492', '19', '10471', '小周镇', '小周镇', '105');
INSERT INTO `tb_opt` VALUES ('10493', '19', '10471', '新田镇', '新田镇', '110');
INSERT INTO `tb_opt` VALUES ('10494', '19', '10471', '新乡镇', '新乡镇', '115');
INSERT INTO `tb_opt` VALUES ('10495', '19', '10471', '熊家镇', '熊家镇', '120');
INSERT INTO `tb_opt` VALUES ('10496', '19', '10471', '余家镇', '余家镇', '125');
INSERT INTO `tb_opt` VALUES ('10497', '19', '10471', '长岭镇', '长岭镇', '130');
INSERT INTO `tb_opt` VALUES ('10498', '19', '10471', '长坪镇', '长坪镇', '135');
INSERT INTO `tb_opt` VALUES ('10499', '19', '10471', '长滩镇', '长滩镇', '140');
INSERT INTO `tb_opt` VALUES ('10500', '19', '10471', '走马镇', '走马镇', '145');
INSERT INTO `tb_opt` VALUES ('10501', '19', '10471', '瀼渡镇', '瀼渡镇', '150');
INSERT INTO `tb_opt` VALUES ('10502', '19', '10471', '茨竹乡', '茨竹乡', '155');
INSERT INTO `tb_opt` VALUES ('10503', '19', '10471', '柱山乡', '柱山乡', '160');
INSERT INTO `tb_opt` VALUES ('10504', '19', '10471', '燕山乡', '燕山乡', '165');
INSERT INTO `tb_opt` VALUES ('10505', '19', '10471', '溪口乡', '溪口乡', '170');
INSERT INTO `tb_opt` VALUES ('10506', '19', '10471', '普子乡', '普子乡', '175');
INSERT INTO `tb_opt` VALUES ('10507', '19', '10471', '地宝乡', '地宝乡', '180');
INSERT INTO `tb_opt` VALUES ('10508', '19', '10471', '铁峰乡', '铁峰乡', '185');
INSERT INTO `tb_opt` VALUES ('10509', '19', '10471', '黄柏乡', '黄柏乡', '190');
INSERT INTO `tb_opt` VALUES ('10510', '19', '10471', '九池乡', '九池乡', '195');
INSERT INTO `tb_opt` VALUES ('10511', '19', '10471', '梨树乡', '梨树乡', '200');
INSERT INTO `tb_opt` VALUES ('10512', '19', '10471', '郭村乡', '郭村乡', '205');
INSERT INTO `tb_opt` VALUES ('10513', '19', '10471', '恒合乡', '恒合乡', '210');
INSERT INTO `tb_opt` VALUES ('10514', '19', '10470', '涪陵区', '涪陵区', '10');
INSERT INTO `tb_opt` VALUES ('10515', '19', '10514', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('10516', '19', '10514', '李渡镇', '李渡镇', '10');
INSERT INTO `tb_opt` VALUES ('10517', '19', '10514', '白涛镇', '白涛镇', '15');
INSERT INTO `tb_opt` VALUES ('10518', '19', '10514', '百胜镇', '百胜镇', '20');
INSERT INTO `tb_opt` VALUES ('10519', '19', '10514', '堡子镇', '堡子镇', '25');
INSERT INTO `tb_opt` VALUES ('10520', '19', '10514', '焦石镇', '焦石镇', '30');
INSERT INTO `tb_opt` VALUES ('10521', '19', '10514', '蔺市镇', '蔺市镇', '35');
INSERT INTO `tb_opt` VALUES ('10522', '19', '10514', '龙桥镇', '龙桥镇', '40');
INSERT INTO `tb_opt` VALUES ('10523', '19', '10514', '龙潭镇', '龙潭镇', '45');
INSERT INTO `tb_opt` VALUES ('10524', '19', '10514', '马武镇', '马武镇', '50');
INSERT INTO `tb_opt` VALUES ('10525', '19', '10514', '南沱镇', '南沱镇', '55');
INSERT INTO `tb_opt` VALUES ('10526', '19', '10514', '青羊镇', '青羊镇', '60');
INSERT INTO `tb_opt` VALUES ('10527', '19', '10514', '清溪镇', '清溪镇', '65');
INSERT INTO `tb_opt` VALUES ('10528', '19', '10514', '石沱镇', '石沱镇', '70');
INSERT INTO `tb_opt` VALUES ('10529', '19', '10514', '新妙镇', '新妙镇', '75');
INSERT INTO `tb_opt` VALUES ('10530', '19', '10514', '义和镇', '义和镇', '80');
INSERT INTO `tb_opt` VALUES ('10531', '19', '10514', '增福乡', '增福乡', '85');
INSERT INTO `tb_opt` VALUES ('10532', '19', '10514', '珍溪镇', '珍溪镇', '90');
INSERT INTO `tb_opt` VALUES ('10533', '19', '10514', '镇安镇', '镇安镇', '95');
INSERT INTO `tb_opt` VALUES ('10534', '19', '10514', '致韩镇', '致韩镇', '100');
INSERT INTO `tb_opt` VALUES ('10535', '19', '10514', '土地坡乡', '土地坡乡', '105');
INSERT INTO `tb_opt` VALUES ('10536', '19', '10514', '武陵山乡', '武陵山乡', '110');
INSERT INTO `tb_opt` VALUES ('10537', '19', '10514', '中峰乡', '中峰乡', '115');
INSERT INTO `tb_opt` VALUES ('10538', '19', '10514', '梓里乡', '梓里乡', '120');
INSERT INTO `tb_opt` VALUES ('10539', '19', '10514', '丛林乡', '丛林乡', '125');
INSERT INTO `tb_opt` VALUES ('10540', '19', '10514', '大木乡', '大木乡', '130');
INSERT INTO `tb_opt` VALUES ('10541', '19', '10514', '惠民乡', '惠民乡', '135');
INSERT INTO `tb_opt` VALUES ('10542', '19', '10514', '酒店乡', '酒店乡', '140');
INSERT INTO `tb_opt` VALUES ('10543', '19', '10514', '聚宝乡', '聚宝乡', '145');
INSERT INTO `tb_opt` VALUES ('10544', '19', '10514', '卷洞乡', '卷洞乡', '150');
INSERT INTO `tb_opt` VALUES ('10545', '19', '10514', '两汇乡', '两汇乡', '155');
INSERT INTO `tb_opt` VALUES ('10546', '19', '10514', '罗云乡', '罗云乡', '160');
INSERT INTO `tb_opt` VALUES ('10547', '19', '10514', '明家乡', '明家乡', '165');
INSERT INTO `tb_opt` VALUES ('10548', '19', '10514', '仁义乡', '仁义乡', '170');
INSERT INTO `tb_opt` VALUES ('10549', '19', '10514', '山窝乡', '山窝乡', '175');
INSERT INTO `tb_opt` VALUES ('10550', '19', '10514', '石和乡', '石和乡', '180');
INSERT INTO `tb_opt` VALUES ('10551', '19', '10514', '石龙乡', '石龙乡', '185');
INSERT INTO `tb_opt` VALUES ('10552', '19', '10514', '太和乡', '太和乡', '190');
INSERT INTO `tb_opt` VALUES ('10553', '19', '10514', '天台乡', '天台乡', '195');
INSERT INTO `tb_opt` VALUES ('10554', '19', '10514', '同乐乡', '同乐乡', '200');
INSERT INTO `tb_opt` VALUES ('10555', '19', '10514', '新村乡', '新村乡', '205');
INSERT INTO `tb_opt` VALUES ('10556', '19', '10470', '梁平县', '梁平县', '15');
INSERT INTO `tb_opt` VALUES ('10557', '19', '10556', '县城内', '县城内', '5');
INSERT INTO `tb_opt` VALUES ('10558', '19', '10556', '梁山镇', '梁山镇', '10');
INSERT INTO `tb_opt` VALUES ('10559', '19', '10556', '柏家镇', '柏家镇', '15');
INSERT INTO `tb_opt` VALUES ('10560', '19', '10556', '碧山镇', '碧山镇', '20');
INSERT INTO `tb_opt` VALUES ('10561', '19', '10556', '大观镇', '大观镇', '25');
INSERT INTO `tb_opt` VALUES ('10562', '19', '10556', '福禄镇', '福禄镇', '30');
INSERT INTO `tb_opt` VALUES ('10563', '19', '10556', '合兴镇', '合兴镇', '35');
INSERT INTO `tb_opt` VALUES ('10564', '19', '10556', '和林镇', '和林镇', '40');
INSERT INTO `tb_opt` VALUES ('10565', '19', '10556', '虎城镇', '虎城镇', '45');
INSERT INTO `tb_opt` VALUES ('10566', '19', '10556', '回龙镇', '回龙镇', '50');
INSERT INTO `tb_opt` VALUES ('10567', '19', '10556', '金带镇', '金带镇', '55');
INSERT INTO `tb_opt` VALUES ('10568', '19', '10556', '聚奎镇', '聚奎镇', '60');
INSERT INTO `tb_opt` VALUES ('10569', '19', '10556', '礼让镇', '礼让镇', '65');
INSERT INTO `tb_opt` VALUES ('10570', '19', '10556', '龙门镇', '龙门镇', '70');
INSERT INTO `tb_opt` VALUES ('10571', '19', '10556', '明达镇', '明达镇', '75');
INSERT INTO `tb_opt` VALUES ('10572', '19', '10556', '蟠龙镇', '蟠龙镇', '80');
INSERT INTO `tb_opt` VALUES ('10573', '19', '10556', '屏锦镇', '屏锦镇', '85');
INSERT INTO `tb_opt` VALUES ('10574', '19', '10556', '仁贤镇', '仁贤镇', '90');
INSERT INTO `tb_opt` VALUES ('10575', '19', '10556', '石安镇', '石安镇', '95');
INSERT INTO `tb_opt` VALUES ('10576', '19', '10556', '文化镇', '文化镇', '100');
INSERT INTO `tb_opt` VALUES ('10577', '19', '10556', '新盛镇', '新盛镇', '105');
INSERT INTO `tb_opt` VALUES ('10578', '19', '10556', '荫平镇', '荫平镇', '110');
INSERT INTO `tb_opt` VALUES ('10579', '19', '10556', '袁驿镇', '袁驿镇', '115');
INSERT INTO `tb_opt` VALUES ('10580', '19', '10556', '云龙镇', '云龙镇', '120');
INSERT INTO `tb_opt` VALUES ('10581', '19', '10556', '竹山镇', '竹山镇', '125');
INSERT INTO `tb_opt` VALUES ('10582', '19', '10556', '安胜乡', '安胜乡', '130');
INSERT INTO `tb_opt` VALUES ('10583', '19', '10556', '铁门乡', '铁门乡', '135');
INSERT INTO `tb_opt` VALUES ('10584', '19', '10556', '紫照乡', '紫照乡', '140');
INSERT INTO `tb_opt` VALUES ('10585', '19', '10556', '曲水乡', '曲水乡', '145');
INSERT INTO `tb_opt` VALUES ('10586', '19', '10556', '龙胜乡', '龙胜乡', '150');
INSERT INTO `tb_opt` VALUES ('10587', '19', '10556', '城北乡', '城北乡', '155');
INSERT INTO `tb_opt` VALUES ('10588', '19', '10556', '城东乡', '城东乡', '160');
INSERT INTO `tb_opt` VALUES ('10589', '19', '10556', '复平乡', '复平乡', '165');
INSERT INTO `tb_opt` VALUES ('10590', '19', '10470', '南川区', '南川区', '20');
INSERT INTO `tb_opt` VALUES ('10591', '19', '10590', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('10592', '19', '10590', '头渡镇', '头渡镇', '10');
INSERT INTO `tb_opt` VALUES ('10593', '19', '10590', '兴隆镇', '兴隆镇', '15');
INSERT INTO `tb_opt` VALUES ('10594', '19', '10590', '冷水关乡', '冷水关乡', '20');
INSERT INTO `tb_opt` VALUES ('10595', '19', '10590', '德隆乡', '德隆乡', '25');
INSERT INTO `tb_opt` VALUES ('10596', '19', '10590', '峰岩乡', '峰岩乡', '30');
INSERT INTO `tb_opt` VALUES ('10597', '19', '10590', '福寿乡', '福寿乡', '35');
INSERT INTO `tb_opt` VALUES ('10598', '19', '10590', '古花乡', '古花乡', '40');
INSERT INTO `tb_opt` VALUES ('10599', '19', '10590', '河图乡', '河图乡', '45');
INSERT INTO `tb_opt` VALUES ('10600', '19', '10590', '民主乡', '民主乡', '50');
INSERT INTO `tb_opt` VALUES ('10601', '19', '10590', '木凉乡', '木凉乡', '55');
INSERT INTO `tb_opt` VALUES ('10602', '19', '10590', '乾丰乡', '乾丰乡', '60');
INSERT INTO `tb_opt` VALUES ('10603', '19', '10590', '庆元乡', '庆元乡', '65');
INSERT INTO `tb_opt` VALUES ('10604', '19', '10590', '石莲乡', '石莲乡', '70');
INSERT INTO `tb_opt` VALUES ('10605', '19', '10590', '石溪乡', '石溪乡', '75');
INSERT INTO `tb_opt` VALUES ('10606', '19', '10590', '铁村乡', '铁村乡', '80');
INSERT INTO `tb_opt` VALUES ('10607', '19', '10590', '土溪乡', '土溪乡', '85');
INSERT INTO `tb_opt` VALUES ('10608', '19', '10590', '鱼泉乡', '鱼泉乡', '90');
INSERT INTO `tb_opt` VALUES ('10609', '19', '10590', '中桥乡', '中桥乡', '95');
INSERT INTO `tb_opt` VALUES ('10610', '19', '10590', '太平场镇', '太平场镇', '100');
INSERT INTO `tb_opt` VALUES ('10611', '19', '10590', '大观镇', '大观镇', '105');
INSERT INTO `tb_opt` VALUES ('10612', '19', '10590', '大有镇', '大有镇', '110');
INSERT INTO `tb_opt` VALUES ('10613', '19', '10590', '合溪镇', '合溪镇', '115');
INSERT INTO `tb_opt` VALUES ('10614', '19', '10590', '金山镇', '金山镇', '120');
INSERT INTO `tb_opt` VALUES ('10615', '19', '10590', '鸣玉镇', '鸣玉镇', '125');
INSERT INTO `tb_opt` VALUES ('10616', '19', '10590', '南平镇', '南平镇', '130');
INSERT INTO `tb_opt` VALUES ('10617', '19', '10590', '三泉镇', '三泉镇', '135');
INSERT INTO `tb_opt` VALUES ('10618', '19', '10590', '神童镇', '神童镇', '140');
INSERT INTO `tb_opt` VALUES ('10619', '19', '10590', '石墙镇', '石墙镇', '145');
INSERT INTO `tb_opt` VALUES ('10620', '19', '10590', '水江镇', '水江镇', '150');
INSERT INTO `tb_opt` VALUES ('10621', '19', '10470', '潼南县', '潼南县', '25');
INSERT INTO `tb_opt` VALUES ('10622', '19', '10621', '县城内', '县城内', '5');
INSERT INTO `tb_opt` VALUES ('10623', '19', '10621', '柏梓镇', '柏梓镇', '10');
INSERT INTO `tb_opt` VALUES ('10624', '19', '10621', '宝龙镇', '宝龙镇', '15');
INSERT INTO `tb_opt` VALUES ('10625', '19', '10621', '崇龛镇', '崇龛镇', '20');
INSERT INTO `tb_opt` VALUES ('10626', '19', '10621', '古溪镇', '古溪镇', '25');
INSERT INTO `tb_opt` VALUES ('10627', '19', '10621', '龙形镇', '龙形镇', '30');
INSERT INTO `tb_opt` VALUES ('10628', '19', '10621', '米心镇', '米心镇', '35');
INSERT INTO `tb_opt` VALUES ('10629', '19', '10621', '群力镇', '群力镇', '40');
INSERT INTO `tb_opt` VALUES ('10630', '19', '10621', '上和镇', '上和镇', '45');
INSERT INTO `tb_opt` VALUES ('10631', '19', '10621', '双江镇', '双江镇', '50');
INSERT INTO `tb_opt` VALUES ('10632', '19', '10621', '太安镇', '太安镇', '55');
INSERT INTO `tb_opt` VALUES ('10633', '19', '10621', '塘坝镇', '塘坝镇', '60');
INSERT INTO `tb_opt` VALUES ('10634', '19', '10621', '卧佛镇', '卧佛镇', '65');
INSERT INTO `tb_opt` VALUES ('10635', '19', '10621', '五桂镇', '五桂镇', '70');
INSERT INTO `tb_opt` VALUES ('10636', '19', '10621', '小渡镇', '小渡镇', '75');
INSERT INTO `tb_opt` VALUES ('10637', '19', '10621', '新胜镇', '新胜镇', '80');
INSERT INTO `tb_opt` VALUES ('10638', '19', '10621', '玉溪镇', '玉溪镇', '85');
INSERT INTO `tb_opt` VALUES ('10639', '19', '10621', '别口乡', '别口乡', '90');
INSERT INTO `tb_opt` VALUES ('10640', '19', '10621', '田家乡', '田家乡', '95');
INSERT INTO `tb_opt` VALUES ('10641', '19', '10621', '寿桥乡', '寿桥乡', '100');
INSERT INTO `tb_opt` VALUES ('10642', '19', '10470', '大足区', '大足区', '30');
INSERT INTO `tb_opt` VALUES ('10643', '19', '10642', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('10644', '19', '10642', '龙滩子镇', '龙滩子镇', '10');
INSERT INTO `tb_opt` VALUES ('10645', '19', '10642', '龙水镇', '龙水镇', '15');
INSERT INTO `tb_opt` VALUES ('10646', '19', '10642', '智凤镇', '智凤镇', '20');
INSERT INTO `tb_opt` VALUES ('10647', '19', '10642', '宝顶镇', '宝顶镇', '25');
INSERT INTO `tb_opt` VALUES ('10648', '19', '10642', '中敖镇', '中敖镇', '30');
INSERT INTO `tb_opt` VALUES ('10649', '19', '10642', '三驱镇', '三驱镇', '35');
INSERT INTO `tb_opt` VALUES ('10650', '19', '10642', '宝兴镇', '宝兴镇', '40');
INSERT INTO `tb_opt` VALUES ('10651', '19', '10642', '玉龙镇', '玉龙镇', '45');
INSERT INTO `tb_opt` VALUES ('10652', '19', '10642', '石马镇', '石马镇', '50');
INSERT INTO `tb_opt` VALUES ('10653', '19', '10642', '拾万镇', '拾万镇', '55');
INSERT INTO `tb_opt` VALUES ('10654', '19', '10642', '回龙镇', '回龙镇', '60');
INSERT INTO `tb_opt` VALUES ('10655', '19', '10642', '金山镇', '金山镇', '65');
INSERT INTO `tb_opt` VALUES ('10656', '19', '10642', '万古镇', '万古镇', '70');
INSERT INTO `tb_opt` VALUES ('10657', '19', '10642', '国梁镇', '国梁镇', '75');
INSERT INTO `tb_opt` VALUES ('10658', '19', '10642', '雍溪镇', '雍溪镇', '80');
INSERT INTO `tb_opt` VALUES ('10659', '19', '10642', '珠溪镇', '珠溪镇', '85');
INSERT INTO `tb_opt` VALUES ('10660', '19', '10642', '龙石镇', '龙石镇', '90');
INSERT INTO `tb_opt` VALUES ('10661', '19', '10642', '邮亭镇', '邮亭镇', '95');
INSERT INTO `tb_opt` VALUES ('10662', '19', '10642', '铁山镇', '铁山镇', '100');
INSERT INTO `tb_opt` VALUES ('10663', '19', '10642', '高升镇', '高升镇', '105');
INSERT INTO `tb_opt` VALUES ('10664', '19', '10642', '季家镇', '季家镇', '110');
INSERT INTO `tb_opt` VALUES ('10665', '19', '10642', '古龙镇', '古龙镇', '115');
INSERT INTO `tb_opt` VALUES ('10666', '19', '10642', '高坪镇', '高坪镇', '120');
INSERT INTO `tb_opt` VALUES ('10667', '19', '10642', '双路镇', '双路镇', '125');
INSERT INTO `tb_opt` VALUES ('10668', '19', '10642', '通桥镇', '通桥镇', '130');
INSERT INTO `tb_opt` VALUES ('10669', '19', '10470', '黔江区', '黔江区', '35');
INSERT INTO `tb_opt` VALUES ('10670', '19', '10669', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('10671', '19', '10669', '正阳镇', '正阳镇', '10');
INSERT INTO `tb_opt` VALUES ('10672', '19', '10669', '舟白镇', '舟白镇', '15');
INSERT INTO `tb_opt` VALUES ('10673', '19', '10669', '阿蓬江镇', '阿蓬江镇', '20');
INSERT INTO `tb_opt` VALUES ('10674', '19', '10669', '小南海镇', '小南海镇', '25');
INSERT INTO `tb_opt` VALUES ('10675', '19', '10669', '鹅池镇', '鹅池镇', '30');
INSERT INTO `tb_opt` VALUES ('10676', '19', '10669', '冯家镇', '冯家镇', '35');
INSERT INTO `tb_opt` VALUES ('10677', '19', '10669', '黑溪镇', '黑溪镇', '40');
INSERT INTO `tb_opt` VALUES ('10678', '19', '10669', '黄溪镇', '黄溪镇', '45');
INSERT INTO `tb_opt` VALUES ('10679', '19', '10669', '金溪镇', '金溪镇', '50');
INSERT INTO `tb_opt` VALUES ('10680', '19', '10669', '黎水镇', '黎水镇', '55');
INSERT INTO `tb_opt` VALUES ('10681', '19', '10669', '邻鄂镇', '邻鄂镇', '60');
INSERT INTO `tb_opt` VALUES ('10682', '19', '10669', '马喇镇', '马喇镇', '65');
INSERT INTO `tb_opt` VALUES ('10683', '19', '10669', '石会镇', '石会镇', '70');
INSERT INTO `tb_opt` VALUES ('10684', '19', '10669', '石家镇', '石家镇', '75');
INSERT INTO `tb_opt` VALUES ('10685', '19', '10669', '濯水镇', '濯水镇', '80');
INSERT INTO `tb_opt` VALUES ('10686', '19', '10669', '白石乡', '白石乡', '85');
INSERT INTO `tb_opt` VALUES ('10687', '19', '10669', '白土乡', '白土乡', '90');
INSERT INTO `tb_opt` VALUES ('10688', '19', '10669', '金洞乡', '金洞乡', '95');
INSERT INTO `tb_opt` VALUES ('10689', '19', '10669', '蓬东乡', '蓬东乡', '100');
INSERT INTO `tb_opt` VALUES ('10690', '19', '10669', '沙坝乡', '沙坝乡', '105');
INSERT INTO `tb_opt` VALUES ('10691', '19', '10669', '杉岭乡', '杉岭乡', '110');
INSERT INTO `tb_opt` VALUES ('10692', '19', '10669', '水市乡', '水市乡', '115');
INSERT INTO `tb_opt` VALUES ('10693', '19', '10669', '水田乡', '水田乡', '120');
INSERT INTO `tb_opt` VALUES ('10694', '19', '10669', '太极乡', '太极乡', '125');
INSERT INTO `tb_opt` VALUES ('10695', '19', '10669', '五里乡', '五里乡', '130');
INSERT INTO `tb_opt` VALUES ('10696', '19', '10669', '新华乡', '新华乡', '135');
INSERT INTO `tb_opt` VALUES ('10697', '19', '10669', '中塘乡', '中塘乡', '140');
INSERT INTO `tb_opt` VALUES ('10698', '19', '10470', '武隆县', '武隆县', '40');
INSERT INTO `tb_opt` VALUES ('10699', '19', '10698', '县城内', '县城内', '5');
INSERT INTO `tb_opt` VALUES ('10700', '19', '10698', '仙女山镇', '仙女山镇', '10');
INSERT INTO `tb_opt` VALUES ('10701', '19', '10698', '巷口镇', '巷口镇', '15');
INSERT INTO `tb_opt` VALUES ('10702', '19', '10698', '白马镇', '白马镇', '20');
INSERT INTO `tb_opt` VALUES ('10703', '19', '10698', '火炉镇', '火炉镇', '25');
INSERT INTO `tb_opt` VALUES ('10704', '19', '10698', '江口镇', '江口镇', '30');
INSERT INTO `tb_opt` VALUES ('10705', '19', '10698', '平桥镇', '平桥镇', '35');
INSERT INTO `tb_opt` VALUES ('10706', '19', '10698', '桐梓镇', '桐梓镇', '40');
INSERT INTO `tb_opt` VALUES ('10707', '19', '10698', '土坎镇', '土坎镇', '45');
INSERT INTO `tb_opt` VALUES ('10708', '19', '10698', '鸭江镇', '鸭江镇', '50');
INSERT INTO `tb_opt` VALUES ('10709', '19', '10698', '羊角镇', '羊角镇', '55');
INSERT INTO `tb_opt` VALUES ('10710', '19', '10698', '长坝镇', '长坝镇', '60');
INSERT INTO `tb_opt` VALUES ('10711', '19', '10698', '白云乡', '白云乡', '65');
INSERT INTO `tb_opt` VALUES ('10712', '19', '10698', '沧沟乡', '沧沟乡', '70');
INSERT INTO `tb_opt` VALUES ('10713', '19', '10698', '凤来乡', '凤来乡', '75');
INSERT INTO `tb_opt` VALUES ('10714', '19', '10698', '浩口乡', '浩口乡', '80');
INSERT INTO `tb_opt` VALUES ('10715', '19', '10698', '和顺乡', '和顺乡', '85');
INSERT INTO `tb_opt` VALUES ('10716', '19', '10698', '后坪乡', '后坪乡', '90');
INSERT INTO `tb_opt` VALUES ('10717', '19', '10698', '黄莺乡', '黄莺乡', '95');
INSERT INTO `tb_opt` VALUES ('10718', '19', '10698', '接龙乡', '接龙乡', '100');
INSERT INTO `tb_opt` VALUES ('10719', '19', '10698', '庙垭乡', '庙垭乡', '105');
INSERT INTO `tb_opt` VALUES ('10720', '19', '10698', '石桥乡', '石桥乡', '110');
INSERT INTO `tb_opt` VALUES ('10721', '19', '10698', '双河乡', '双河乡', '115');
INSERT INTO `tb_opt` VALUES ('10722', '19', '10698', '铁矿乡', '铁矿乡', '120');
INSERT INTO `tb_opt` VALUES ('10723', '19', '10698', '土地乡', '土地乡', '125');
INSERT INTO `tb_opt` VALUES ('10724', '19', '10698', '文复乡', '文复乡', '130');
INSERT INTO `tb_opt` VALUES ('10725', '19', '10698', '赵家乡', '赵家乡', '135');
INSERT INTO `tb_opt` VALUES ('10726', '19', '10470', '丰都县', '丰都县', '45');
INSERT INTO `tb_opt` VALUES ('10727', '19', '10726', '县城内', '县城内', '5');
INSERT INTO `tb_opt` VALUES ('10728', '19', '10726', '南天湖镇', '南天湖镇', '10');
INSERT INTO `tb_opt` VALUES ('10729', '19', '10726', '许明寺镇', '许明寺镇', '15');
INSERT INTO `tb_opt` VALUES ('10730', '19', '10726', '包鸾镇', '包鸾镇', '20');
INSERT INTO `tb_opt` VALUES ('10731', '19', '10726', '董家镇', '董家镇', '25');
INSERT INTO `tb_opt` VALUES ('10732', '19', '10726', '高家镇', '高家镇', '30');
INSERT INTO `tb_opt` VALUES ('10733', '19', '10726', '虎威镇', '虎威镇', '35');
INSERT INTO `tb_opt` VALUES ('10734', '19', '10726', '江池镇', '江池镇', '40');
INSERT INTO `tb_opt` VALUES ('10735', '19', '10726', '龙河镇', '龙河镇', '45');
INSERT INTO `tb_opt` VALUES ('10736', '19', '10726', '名山镇', '名山镇', '50');
INSERT INTO `tb_opt` VALUES ('10737', '19', '10726', '三元镇', '三元镇', '55');
INSERT INTO `tb_opt` VALUES ('10738', '19', '10726', '社坛镇', '社坛镇', '60');
INSERT INTO `tb_opt` VALUES ('10739', '19', '10726', '十直镇', '十直镇', '65');
INSERT INTO `tb_opt` VALUES ('10740', '19', '10726', '树人镇', '树人镇', '70');
INSERT INTO `tb_opt` VALUES ('10741', '19', '10726', '双路镇', '双路镇', '75');
INSERT INTO `tb_opt` VALUES ('10742', '19', '10726', '武平镇', '武平镇', '80');
INSERT INTO `tb_opt` VALUES ('10743', '19', '10726', '兴义镇', '兴义镇', '85');
INSERT INTO `tb_opt` VALUES ('10744', '19', '10726', '湛普镇', '湛普镇', '90');
INSERT INTO `tb_opt` VALUES ('10745', '19', '10726', '镇江镇', '镇江镇', '95');
INSERT INTO `tb_opt` VALUES ('10746', '19', '10726', '太平坝乡', '太平坝乡', '100');
INSERT INTO `tb_opt` VALUES ('10747', '19', '10726', '双龙场乡', '双龙场乡', '105');
INSERT INTO `tb_opt` VALUES ('10748', '19', '10726', '保合乡', '保合乡', '110');
INSERT INTO `tb_opt` VALUES ('10749', '19', '10726', '崇兴乡', '崇兴乡', '115');
INSERT INTO `tb_opt` VALUES ('10750', '19', '10726', '都督乡', '都督乡', '120');
INSERT INTO `tb_opt` VALUES ('10751', '19', '10726', '暨龙乡', '暨龙乡', '125');
INSERT INTO `tb_opt` VALUES ('10752', '19', '10726', '栗子乡', '栗子乡', '130');
INSERT INTO `tb_opt` VALUES ('10753', '19', '10726', '龙孔乡', '龙孔乡', '135');
INSERT INTO `tb_opt` VALUES ('10754', '19', '10726', '青龙乡', '青龙乡', '140');
INSERT INTO `tb_opt` VALUES ('10755', '19', '10726', '仁沙乡', '仁沙乡', '145');
INSERT INTO `tb_opt` VALUES ('10756', '19', '10726', '三坝乡', '三坝乡', '150');
INSERT INTO `tb_opt` VALUES ('10757', '19', '10726', '三建乡', '三建乡', '155');
INSERT INTO `tb_opt` VALUES ('10758', '19', '10470', '奉节县', '奉节县', '50');
INSERT INTO `tb_opt` VALUES ('10759', '19', '10758', '永乐镇', '永乐镇', '5');
INSERT INTO `tb_opt` VALUES ('10760', '19', '10758', '县城内', '县城内', '10');
INSERT INTO `tb_opt` VALUES ('10761', '19', '10758', '永安镇', '永安镇', '15');
INSERT INTO `tb_opt` VALUES ('10762', '19', '10758', '白帝镇', '白帝镇', '20');
INSERT INTO `tb_opt` VALUES ('10763', '19', '10758', '草堂镇', '草堂镇', '25');
INSERT INTO `tb_opt` VALUES ('10764', '19', '10758', '大树镇', '大树镇', '30');
INSERT INTO `tb_opt` VALUES ('10765', '19', '10758', '汾河镇', '汾河镇', '35');
INSERT INTO `tb_opt` VALUES ('10766', '19', '10758', '公平镇', '公平镇', '40');
INSERT INTO `tb_opt` VALUES ('10767', '19', '10758', '甲高镇', '甲高镇', '45');
INSERT INTO `tb_opt` VALUES ('10768', '19', '10758', '康乐镇', '康乐镇', '50');
INSERT INTO `tb_opt` VALUES ('10769', '19', '10758', '青龙镇', '青龙镇', '55');
INSERT INTO `tb_opt` VALUES ('10770', '19', '10758', '吐祥镇', '吐祥镇', '60');
INSERT INTO `tb_opt` VALUES ('10771', '19', '10758', '新民镇', '新民镇', '65');
INSERT INTO `tb_opt` VALUES ('10772', '19', '10758', '兴隆镇', '兴隆镇', '70');
INSERT INTO `tb_opt` VALUES ('10773', '19', '10758', '羊市镇', '羊市镇', '75');
INSERT INTO `tb_opt` VALUES ('10774', '19', '10758', '朱衣镇', '朱衣镇', '80');
INSERT INTO `tb_opt` VALUES ('10775', '19', '10758', '竹园镇', '竹园镇', '85');
INSERT INTO `tb_opt` VALUES ('10776', '19', '10758', '安坪乡', '安坪乡', '90');
INSERT INTO `tb_opt` VALUES ('10777', '19', '10758', '冯坪乡', '冯坪乡', '95');
INSERT INTO `tb_opt` VALUES ('10778', '19', '10758', '鹤峰乡', '鹤峰乡', '100');
INSERT INTO `tb_opt` VALUES ('10779', '19', '10758', '红土乡', '红土乡', '105');
INSERT INTO `tb_opt` VALUES ('10780', '19', '10758', '康坪乡', '康坪乡', '110');
INSERT INTO `tb_opt` VALUES ('10781', '19', '10758', '龙桥乡', '龙桥乡', '115');
INSERT INTO `tb_opt` VALUES ('10782', '19', '10758', '平安乡', '平安乡', '120');
INSERT INTO `tb_opt` VALUES ('10783', '19', '10758', '石岗乡', '石岗乡', '125');
INSERT INTO `tb_opt` VALUES ('10784', '19', '10758', '太和乡', '太和乡', '130');
INSERT INTO `tb_opt` VALUES ('10785', '19', '10758', '五马乡', '五马乡', '135');
INSERT INTO `tb_opt` VALUES ('10786', '19', '10758', '新政乡', '新政乡', '140');
INSERT INTO `tb_opt` VALUES ('10787', '19', '10758', '岩湾乡', '岩湾乡', '145');
INSERT INTO `tb_opt` VALUES ('10788', '19', '10758', '云雾乡', '云雾乡', '150');
INSERT INTO `tb_opt` VALUES ('10789', '19', '10758', '长安乡', '长安乡', '155');
INSERT INTO `tb_opt` VALUES ('10790', '19', '10470', '开县', '开县', '55');
INSERT INTO `tb_opt` VALUES ('10791', '19', '10790', '白桥镇', '白桥镇', '5');
INSERT INTO `tb_opt` VALUES ('10792', '19', '10790', '大德镇', '大德镇', '10');
INSERT INTO `tb_opt` VALUES ('10793', '19', '10790', '金峰镇', '金峰镇', '15');
INSERT INTO `tb_opt` VALUES ('10794', '19', '10790', '谭家镇', '谭家镇', '20');
INSERT INTO `tb_opt` VALUES ('10795', '19', '10790', '天和镇', '天和镇', '25');
INSERT INTO `tb_opt` VALUES ('10796', '19', '10790', '白泉乡', '白泉乡', '30');
INSERT INTO `tb_opt` VALUES ('10797', '19', '10790', '县城内', '县城内', '35');
INSERT INTO `tb_opt` VALUES ('10798', '19', '10790', '九龙山镇', '九龙山镇', '40');
INSERT INTO `tb_opt` VALUES ('10799', '19', '10790', '大进镇', '大进镇', '45');
INSERT INTO `tb_opt` VALUES ('10800', '19', '10790', '敦好镇', '敦好镇', '50');
INSERT INTO `tb_opt` VALUES ('10801', '19', '10790', '高桥镇', '高桥镇', '55');
INSERT INTO `tb_opt` VALUES ('10802', '19', '10790', '郭家镇', '郭家镇', '60');
INSERT INTO `tb_opt` VALUES ('10803', '19', '10790', '和谦镇', '和谦镇', '65');
INSERT INTO `tb_opt` VALUES ('10804', '19', '10790', '河堰镇', '河堰镇', '70');
INSERT INTO `tb_opt` VALUES ('10805', '19', '10790', '厚坝镇', '厚坝镇', '75');
INSERT INTO `tb_opt` VALUES ('10806', '19', '10790', '临江镇', '临江镇', '80');
INSERT INTO `tb_opt` VALUES ('10807', '19', '10790', '南门镇', '南门镇', '85');
INSERT INTO `tb_opt` VALUES ('10808', '19', '10790', '南雅镇', '南雅镇', '90');
INSERT INTO `tb_opt` VALUES ('10809', '19', '10790', '渠口镇', '渠口镇', '95');
INSERT INTO `tb_opt` VALUES ('10810', '19', '10790', '铁桥镇', '铁桥镇', '100');
INSERT INTO `tb_opt` VALUES ('10811', '19', '10790', '岳溪镇', '岳溪镇', '105');
INSERT INTO `tb_opt` VALUES ('10812', '19', '10790', '温泉镇', '温泉镇', '110');
INSERT INTO `tb_opt` VALUES ('10813', '19', '10790', '义和镇', '义和镇', '115');
INSERT INTO `tb_opt` VALUES ('10814', '19', '10790', '长沙镇', '长沙镇', '120');
INSERT INTO `tb_opt` VALUES ('10815', '19', '10790', '赵家镇', '赵家镇', '125');
INSERT INTO `tb_opt` VALUES ('10816', '19', '10790', '镇安镇', '镇安镇', '130');
INSERT INTO `tb_opt` VALUES ('10817', '19', '10790', '中和镇', '中和镇', '135');
INSERT INTO `tb_opt` VALUES ('10818', '19', '10790', '竹溪镇', '竹溪镇', '140');
INSERT INTO `tb_opt` VALUES ('10819', '19', '10790', '三汇口乡', '三汇口乡', '145');
INSERT INTO `tb_opt` VALUES ('10820', '19', '10790', '白桥乡', '白桥乡', '150');
INSERT INTO `tb_opt` VALUES ('10821', '19', '10790', '大德乡', '大德乡', '155');
INSERT INTO `tb_opt` VALUES ('10822', '19', '10790', '关面乡', '关面乡', '160');
INSERT INTO `tb_opt` VALUES ('10823', '19', '10790', '金峰乡', '金峰乡', '165');
INSERT INTO `tb_opt` VALUES ('10824', '19', '10790', '麻柳乡', '麻柳乡', '170');
INSERT INTO `tb_opt` VALUES ('10825', '19', '10790', '满月乡', '满月乡', '175');
INSERT INTO `tb_opt` VALUES ('10826', '19', '10790', '谭家乡', '谭家乡', '180');
INSERT INTO `tb_opt` VALUES ('10827', '19', '10790', '天和乡', '天和乡', '185');
INSERT INTO `tb_opt` VALUES ('10828', '19', '10790', '巫山镇', '巫山镇', '190');
INSERT INTO `tb_opt` VALUES ('10829', '19', '10790', '五通乡', '五通乡', '195');
INSERT INTO `tb_opt` VALUES ('10830', '19', '10790', '紫水乡', '紫水乡', '200');
INSERT INTO `tb_opt` VALUES ('10831', '19', '10470', '云阳县', '云阳县', '60');
INSERT INTO `tb_opt` VALUES ('10832', '19', '10831', '县城内', '县城内', '5');
INSERT INTO `tb_opt` VALUES ('10833', '19', '10831', '云阳镇', '云阳镇', '10');
INSERT INTO `tb_opt` VALUES ('10834', '19', '10831', '巴阳镇', '巴阳镇', '15');
INSERT INTO `tb_opt` VALUES ('10835', '19', '10831', '凤鸣镇', '凤鸣镇', '20');
INSERT INTO `tb_opt` VALUES ('10836', '19', '10831', '高阳镇', '高阳镇', '25');
INSERT INTO `tb_opt` VALUES ('10837', '19', '10831', '故陵镇', '故陵镇', '30');
INSERT INTO `tb_opt` VALUES ('10838', '19', '10831', '红狮镇', '红狮镇', '35');
INSERT INTO `tb_opt` VALUES ('10839', '19', '10831', '黄石镇', '黄石镇', '40');
INSERT INTO `tb_opt` VALUES ('10840', '19', '10831', '江口镇', '江口镇', '45');
INSERT INTO `tb_opt` VALUES ('10841', '19', '10831', '龙角镇', '龙角镇', '50');
INSERT INTO `tb_opt` VALUES ('10842', '19', '10831', '路阳镇', '路阳镇', '55');
INSERT INTO `tb_opt` VALUES ('10843', '19', '10831', '南溪镇', '南溪镇', '60');
INSERT INTO `tb_opt` VALUES ('10844', '19', '10831', '农坝镇', '农坝镇', '65');
INSERT INTO `tb_opt` VALUES ('10845', '19', '10831', '盘龙镇', '盘龙镇', '70');
INSERT INTO `tb_opt` VALUES ('10846', '19', '10831', '平安镇', '平安镇', '75');
INSERT INTO `tb_opt` VALUES ('10847', '19', '10831', '渠马镇', '渠马镇', '80');
INSERT INTO `tb_opt` VALUES ('10848', '19', '10831', '人和镇', '人和镇', '85');
INSERT INTO `tb_opt` VALUES ('10849', '19', '10831', '桑坪镇', '桑坪镇', '90');
INSERT INTO `tb_opt` VALUES ('10850', '19', '10831', '沙市镇', '沙市镇', '95');
INSERT INTO `tb_opt` VALUES ('10851', '19', '10831', '双土镇', '双土镇', '100');
INSERT INTO `tb_opt` VALUES ('10852', '19', '10831', '鱼泉镇', '鱼泉镇', '105');
INSERT INTO `tb_opt` VALUES ('10853', '19', '10831', '云安镇', '云安镇', '110');
INSERT INTO `tb_opt` VALUES ('10854', '19', '10831', '洞鹿乡', '洞鹿乡', '115');
INSERT INTO `tb_opt` VALUES ('10855', '19', '10831', '后叶乡', '后叶乡', '120');
INSERT INTO `tb_opt` VALUES ('10856', '19', '10831', '龙洞乡', '龙洞乡', '125');
INSERT INTO `tb_opt` VALUES ('10857', '19', '10831', '毛坝乡', '毛坝乡', '130');
INSERT INTO `tb_opt` VALUES ('10858', '19', '10831', '泥溪乡', '泥溪乡', '135');
INSERT INTO `tb_opt` VALUES ('10859', '19', '10831', '票草乡', '票草乡', '140');
INSERT INTO `tb_opt` VALUES ('10860', '19', '10831', '普安乡', '普安乡', '145');
INSERT INTO `tb_opt` VALUES ('10861', '19', '10831', '栖霞乡', '栖霞乡', '150');
INSERT INTO `tb_opt` VALUES ('10862', '19', '10831', '清水乡', '清水乡', '155');
INSERT INTO `tb_opt` VALUES ('10863', '19', '10831', '上坝乡', '上坝乡', '160');
INSERT INTO `tb_opt` VALUES ('10864', '19', '10831', '石门乡', '石门乡', '165');
INSERT INTO `tb_opt` VALUES ('10865', '19', '10831', '双龙乡', '双龙乡', '170');
INSERT INTO `tb_opt` VALUES ('10866', '19', '10831', '水口乡', '水口乡', '175');
INSERT INTO `tb_opt` VALUES ('10867', '19', '10831', '外郎乡', '外郎乡', '180');
INSERT INTO `tb_opt` VALUES ('10868', '19', '10831', '新津乡', '新津乡', '185');
INSERT INTO `tb_opt` VALUES ('10869', '19', '10831', '堰坪乡', '堰坪乡', '190');
INSERT INTO `tb_opt` VALUES ('10870', '19', '10831', '养鹿乡', '养鹿乡', '195');
INSERT INTO `tb_opt` VALUES ('10871', '19', '10831', '耀灵乡', '耀灵乡', '200');
INSERT INTO `tb_opt` VALUES ('10872', '19', '10831', '云硐乡', '云硐乡', '205');
INSERT INTO `tb_opt` VALUES ('10873', '19', '10470', '忠县', '忠县', '65');
INSERT INTO `tb_opt` VALUES ('10874', '19', '10873', '县城内', '县城内', '5');
INSERT INTO `tb_opt` VALUES ('10875', '19', '10873', '忠州镇', '忠州镇', '10');
INSERT INTO `tb_opt` VALUES ('10876', '19', '10873', '拔山镇', '拔山镇', '15');
INSERT INTO `tb_opt` VALUES ('10877', '19', '10873', '白石镇', '白石镇', '20');
INSERT INTO `tb_opt` VALUES ('10878', '19', '10873', '东溪镇', '东溪镇', '25');
INSERT INTO `tb_opt` VALUES ('10879', '19', '10873', '复兴镇', '复兴镇', '30');
INSERT INTO `tb_opt` VALUES ('10880', '19', '10873', '官坝镇', '官坝镇', '35');
INSERT INTO `tb_opt` VALUES ('10881', '19', '10873', '花桥镇', '花桥镇', '40');
INSERT INTO `tb_opt` VALUES ('10882', '19', '10873', '黄金镇', '黄金镇', '45');
INSERT INTO `tb_opt` VALUES ('10883', '19', '10873', '金鸡镇', '金鸡镇', '50');
INSERT INTO `tb_opt` VALUES ('10884', '19', '10873', '马灌镇', '马灌镇', '55');
INSERT INTO `tb_opt` VALUES ('10885', '19', '10873', '任家镇', '任家镇', '60');
INSERT INTO `tb_opt` VALUES ('10886', '19', '10873', '汝溪镇', '汝溪镇', '65');
INSERT INTO `tb_opt` VALUES ('10887', '19', '10873', '三汇镇', '三汇镇', '70');
INSERT INTO `tb_opt` VALUES ('10888', '19', '10873', '石宝镇', '石宝镇', '75');
INSERT INTO `tb_opt` VALUES ('10889', '19', '10873', '石黄镇', '石黄镇', '80');
INSERT INTO `tb_opt` VALUES ('10890', '19', '10873', '双桂镇', '双桂镇', '85');
INSERT INTO `tb_opt` VALUES ('10891', '19', '10873', '乌杨镇', '乌杨镇', '90');
INSERT INTO `tb_opt` VALUES ('10892', '19', '10873', '新生镇', '新生镇', '95');
INSERT INTO `tb_opt` VALUES ('10893', '19', '10873', '洋渡镇', '洋渡镇', '100');
INSERT INTO `tb_opt` VALUES ('10894', '19', '10873', '野鹤镇', '野鹤镇', '105');
INSERT INTO `tb_opt` VALUES ('10895', '19', '10873', '永丰镇', '永丰镇', '110');
INSERT INTO `tb_opt` VALUES ('10896', '19', '10873', '金声乡', '金声乡', '115');
INSERT INTO `tb_opt` VALUES ('10897', '19', '10873', '磨子乡', '磨子乡', '120');
INSERT INTO `tb_opt` VALUES ('10898', '19', '10873', '善广乡', '善广乡', '125');
INSERT INTO `tb_opt` VALUES ('10899', '19', '10873', '石子乡', '石子乡', '130');
INSERT INTO `tb_opt` VALUES ('10900', '19', '10873', '涂井乡', '涂井乡', '135');
INSERT INTO `tb_opt` VALUES ('10901', '19', '10873', '兴峰乡', '兴峰乡', '140');
INSERT INTO `tb_opt` VALUES ('10902', '19', '10873', '新立镇', '新立镇', '145');
INSERT INTO `tb_opt` VALUES ('10903', '19', '10470', '巫溪县', '巫溪县', '70');
INSERT INTO `tb_opt` VALUES ('10904', '19', '10903', '县城内', '县城内', '5');
INSERT INTO `tb_opt` VALUES ('10905', '19', '10903', '城厢镇', '城厢镇', '10');
INSERT INTO `tb_opt` VALUES ('10906', '19', '10903', '凤凰镇', '凤凰镇', '15');
INSERT INTO `tb_opt` VALUES ('10907', '19', '10903', '古路镇', '古路镇', '20');
INSERT INTO `tb_opt` VALUES ('10908', '19', '10903', '尖山镇', '尖山镇', '25');
INSERT INTO `tb_opt` VALUES ('10909', '19', '10903', '宁厂镇', '宁厂镇', '30');
INSERT INTO `tb_opt` VALUES ('10910', '19', '10903', '上磺镇', '上磺镇', '35');
INSERT INTO `tb_opt` VALUES ('10911', '19', '10903', '文峰镇', '文峰镇', '40');
INSERT INTO `tb_opt` VALUES ('10912', '19', '10903', '下堡镇', '下堡镇', '45');
INSERT INTO `tb_opt` VALUES ('10913', '19', '10903', '徐家镇', '徐家镇', '50');
INSERT INTO `tb_opt` VALUES ('10914', '19', '10903', '朝阳洞乡', '朝阳洞乡', '55');
INSERT INTO `tb_opt` VALUES ('10915', '19', '10903', '大河乡', '大河乡', '60');
INSERT INTO `tb_opt` VALUES ('10916', '19', '10903', '峰灵乡', '峰灵乡', '65');
INSERT INTO `tb_opt` VALUES ('10917', '19', '10903', '花台乡', '花台乡', '70');
INSERT INTO `tb_opt` VALUES ('10918', '19', '10903', '兰英乡', '兰英乡', '75');
INSERT INTO `tb_opt` VALUES ('10919', '19', '10903', '菱角乡', '菱角乡', '80');
INSERT INTO `tb_opt` VALUES ('10920', '19', '10903', '蒲莲乡', '蒲莲乡', '85');
INSERT INTO `tb_opt` VALUES ('10921', '19', '10903', '胜利乡', '胜利乡', '90');
INSERT INTO `tb_opt` VALUES ('10922', '19', '10903', '双阳乡', '双阳乡', '95');
INSERT INTO `tb_opt` VALUES ('10923', '19', '10903', '塘坊乡', '塘坊乡', '100');
INSERT INTO `tb_opt` VALUES ('10924', '19', '10903', '天星乡', '天星乡', '105');
INSERT INTO `tb_opt` VALUES ('10925', '19', '10903', '天元乡', '天元乡', '110');
INSERT INTO `tb_opt` VALUES ('10926', '19', '10903', '田坝乡', '田坝乡', '115');
INSERT INTO `tb_opt` VALUES ('10927', '19', '10903', '通城乡', '通城乡', '120');
INSERT INTO `tb_opt` VALUES ('10928', '19', '10903', '土城乡', '土城乡', '125');
INSERT INTO `tb_opt` VALUES ('10929', '19', '10903', '乌龙乡', '乌龙乡', '130');
INSERT INTO `tb_opt` VALUES ('10930', '19', '10903', '鱼鳞乡', '鱼鳞乡', '135');
INSERT INTO `tb_opt` VALUES ('10931', '19', '10903', '长桂乡', '长桂乡', '140');
INSERT INTO `tb_opt` VALUES ('10932', '19', '10903', '中岗乡', '中岗乡', '145');
INSERT INTO `tb_opt` VALUES ('10933', '19', '10903', '中梁乡', '中梁乡', '150');
INSERT INTO `tb_opt` VALUES ('10934', '19', '10470', '巫山县', '巫山县', '75');
INSERT INTO `tb_opt` VALUES ('10935', '19', '10934', '县城内', '县城内', '5');
INSERT INTO `tb_opt` VALUES ('10936', '19', '10934', '巫峡镇', '巫峡镇', '10');
INSERT INTO `tb_opt` VALUES ('10937', '19', '10934', '大昌镇', '大昌镇', '15');
INSERT INTO `tb_opt` VALUES ('10938', '19', '10934', '福田镇', '福田镇', '20');
INSERT INTO `tb_opt` VALUES ('10939', '19', '10934', '官渡镇', '官渡镇', '25');
INSERT INTO `tb_opt` VALUES ('10940', '19', '10934', '官阳镇', '官阳镇', '30');
INSERT INTO `tb_opt` VALUES ('10941', '19', '10934', '龙溪镇', '龙溪镇', '35');
INSERT INTO `tb_opt` VALUES ('10942', '19', '10934', '骡坪镇', '骡坪镇', '40');
INSERT INTO `tb_opt` VALUES ('10943', '19', '10934', '庙堂乡', '庙堂乡', '45');
INSERT INTO `tb_opt` VALUES ('10944', '19', '10934', '庙宇镇', '庙宇镇', '50');
INSERT INTO `tb_opt` VALUES ('10945', '19', '10934', '双龙镇', '双龙镇', '55');
INSERT INTO `tb_opt` VALUES ('10946', '19', '10934', '铜鼓镇', '铜鼓镇', '60');
INSERT INTO `tb_opt` VALUES ('10947', '19', '10934', '抱龙镇', '抱龙镇', '65');
INSERT INTO `tb_opt` VALUES ('10948', '19', '10934', '大溪乡', '大溪乡', '70');
INSERT INTO `tb_opt` VALUES ('10949', '19', '10934', '当阳乡', '当阳乡', '75');
INSERT INTO `tb_opt` VALUES ('10950', '19', '10934', '邓家乡', '邓家乡', '80');
INSERT INTO `tb_opt` VALUES ('10951', '19', '10934', '笃坪乡', '笃坪乡', '85');
INSERT INTO `tb_opt` VALUES ('10952', '19', '10934', '红椿乡', '红椿乡', '90');
INSERT INTO `tb_opt` VALUES ('10953', '19', '10934', '建平乡', '建平乡', '95');
INSERT INTO `tb_opt` VALUES ('10954', '19', '10934', '金坪乡', '金坪乡', '100');
INSERT INTO `tb_opt` VALUES ('10955', '19', '10934', '两坪乡', '两坪乡', '105');
INSERT INTO `tb_opt` VALUES ('10956', '19', '10934', '龙井乡', '龙井乡', '110');
INSERT INTO `tb_opt` VALUES ('10957', '19', '10934', '培石乡', '培石乡', '115');
INSERT INTO `tb_opt` VALUES ('10958', '19', '10934', '平河乡', '平河乡', '120');
INSERT INTO `tb_opt` VALUES ('10959', '19', '10934', '曲尺乡', '曲尺乡', '125');
INSERT INTO `tb_opt` VALUES ('10960', '19', '10934', '三溪乡', '三溪乡', '130');
INSERT INTO `tb_opt` VALUES ('10961', '19', '10934', '竹贤乡', '竹贤乡', '135');
INSERT INTO `tb_opt` VALUES ('10962', '19', '10470', '石柱县', '石柱县', '80');
INSERT INTO `tb_opt` VALUES ('10963', '19', '10962', '王家乡', '王家乡', '5');
INSERT INTO `tb_opt` VALUES ('10964', '19', '10962', '洗新乡', '洗新乡', '10');
INSERT INTO `tb_opt` VALUES ('10965', '19', '10962', '新乐乡', '新乐乡', '15');
INSERT INTO `tb_opt` VALUES ('10966', '19', '10962', '中益乡', '中益乡', '20');
INSERT INTO `tb_opt` VALUES ('10967', '19', '10962', '县城内', '县城内', '25');
INSERT INTO `tb_opt` VALUES ('10968', '19', '10962', '南宾镇', '南宾镇', '30');
INSERT INTO `tb_opt` VALUES ('10969', '19', '10962', '黄水镇', '黄水镇', '35');
INSERT INTO `tb_opt` VALUES ('10970', '19', '10962', '临溪镇', '临溪镇', '40');
INSERT INTO `tb_opt` VALUES ('10971', '19', '10962', '龙沙镇', '龙沙镇', '45');
INSERT INTO `tb_opt` VALUES ('10972', '19', '10962', '马武镇', '马武镇', '50');
INSERT INTO `tb_opt` VALUES ('10973', '19', '10962', '沙子镇', '沙子镇', '55');
INSERT INTO `tb_opt` VALUES ('10974', '19', '10962', '王场镇', '王场镇', '60');
INSERT INTO `tb_opt` VALUES ('10975', '19', '10962', '西沱镇', '西沱镇', '65');
INSERT INTO `tb_opt` VALUES ('10976', '19', '10962', '下路镇', '下路镇', '70');
INSERT INTO `tb_opt` VALUES ('10977', '19', '10962', '沿溪镇', '沿溪镇', '75');
INSERT INTO `tb_opt` VALUES ('10978', '19', '10962', '渔池镇', '渔池镇', '80');
INSERT INTO `tb_opt` VALUES ('10979', '19', '10962', '悦崃镇', '悦崃镇', '85');
INSERT INTO `tb_opt` VALUES ('10980', '19', '10962', '大歇乡', '大歇乡', '90');
INSERT INTO `tb_opt` VALUES ('10981', '19', '10962', '枫木乡', '枫木乡', '95');
INSERT INTO `tb_opt` VALUES ('10982', '19', '10962', '河嘴乡', '河嘴乡', '100');
INSERT INTO `tb_opt` VALUES ('10983', '19', '10962', '黄鹤乡', '黄鹤乡', '105');
INSERT INTO `tb_opt` VALUES ('10984', '19', '10962', '金铃乡', '金铃乡', '110');
INSERT INTO `tb_opt` VALUES ('10985', '19', '10962', '金竹乡', '金竹乡', '115');
INSERT INTO `tb_opt` VALUES ('10986', '19', '10962', '冷水乡', '冷水乡', '120');
INSERT INTO `tb_opt` VALUES ('10987', '19', '10962', '黎场乡', '黎场乡', '125');
INSERT INTO `tb_opt` VALUES ('10988', '19', '10962', '六塘乡', '六塘乡', '130');
INSERT INTO `tb_opt` VALUES ('10989', '19', '10962', '龙潭乡', '龙潭乡', '135');
INSERT INTO `tb_opt` VALUES ('10990', '19', '10962', '桥头乡', '桥头乡', '140');
INSERT INTO `tb_opt` VALUES ('10991', '19', '10962', '三河乡', '三河乡', '145');
INSERT INTO `tb_opt` VALUES ('10992', '19', '10962', '三益乡', '三益乡', '150');
INSERT INTO `tb_opt` VALUES ('10993', '19', '10962', '石家乡', '石家乡', '155');
INSERT INTO `tb_opt` VALUES ('10994', '19', '10962', '万朝乡', '万朝乡', '160');
INSERT INTO `tb_opt` VALUES ('10995', '19', '10470', '彭水县', '彭水县', '85');
INSERT INTO `tb_opt` VALUES ('10996', '19', '10995', '保家镇', '保家镇', '5');
INSERT INTO `tb_opt` VALUES ('10997', '19', '10995', '高谷镇', '高谷镇', '10');
INSERT INTO `tb_opt` VALUES ('10998', '19', '10995', '黄家镇', '黄家镇', '15');
INSERT INTO `tb_opt` VALUES ('10999', '19', '10995', '连湖镇', '连湖镇', '20');
INSERT INTO `tb_opt` VALUES ('11000', '19', '10995', '龙射镇', '龙射镇', '25');
INSERT INTO `tb_opt` VALUES ('11001', '19', '10995', '鹿角镇', '鹿角镇', '30');
INSERT INTO `tb_opt` VALUES ('11002', '19', '10995', '普子镇', '普子镇', '35');
INSERT INTO `tb_opt` VALUES ('11003', '19', '10995', '桑柘镇', '桑柘镇', '40');
INSERT INTO `tb_opt` VALUES ('11004', '19', '10995', '万足镇', '万足镇', '45');
INSERT INTO `tb_opt` VALUES ('11005', '19', '10995', '郁山镇', '郁山镇', '50');
INSERT INTO `tb_opt` VALUES ('11006', '19', '10995', '梅子垭乡', '梅子垭乡', '55');
INSERT INTO `tb_opt` VALUES ('11007', '19', '10995', '鞍子乡', '鞍子乡', '60');
INSERT INTO `tb_opt` VALUES ('11008', '19', '10995', '大垭乡', '大垭乡', '65');
INSERT INTO `tb_opt` VALUES ('11009', '19', '10995', '棣棠乡', '棣棠乡', '70');
INSERT INTO `tb_opt` VALUES ('11010', '19', '10995', '靛水乡', '靛水乡', '75');
INSERT INTO `tb_opt` VALUES ('11011', '19', '10995', '朗溪乡', '朗溪乡', '80');
INSERT INTO `tb_opt` VALUES ('11012', '19', '10995', '联合乡', '联合乡', '85');
INSERT INTO `tb_opt` VALUES ('11013', '19', '10995', '龙塘乡', '龙塘乡', '90');
INSERT INTO `tb_opt` VALUES ('11014', '19', '10995', '龙溪乡', '龙溪乡', '95');
INSERT INTO `tb_opt` VALUES ('11015', '19', '10995', '芦塘乡', '芦塘乡', '100');
INSERT INTO `tb_opt` VALUES ('11016', '19', '10995', '鹿鸣乡', '鹿鸣乡', '105');
INSERT INTO `tb_opt` VALUES ('11017', '19', '10995', '平安乡', '平安乡', '110');
INSERT INTO `tb_opt` VALUES ('11018', '19', '10995', '迁乔乡', '迁乔乡', '115');
INSERT INTO `tb_opt` VALUES ('11019', '19', '10995', '乔梓乡', '乔梓乡', '120');
INSERT INTO `tb_opt` VALUES ('11020', '19', '10995', '润溪乡', '润溪乡', '125');
INSERT INTO `tb_opt` VALUES ('11021', '19', '10995', '三义乡', '三义乡', '130');
INSERT INTO `tb_opt` VALUES ('11022', '19', '10995', '善感乡', '善感乡', '135');
INSERT INTO `tb_opt` VALUES ('11023', '19', '10995', '县城内', '县城内', '140');
INSERT INTO `tb_opt` VALUES ('11024', '19', '10995', '石柳乡', '石柳乡', '145');
INSERT INTO `tb_opt` VALUES ('11025', '19', '10995', '石盘乡', '石盘乡', '150');
INSERT INTO `tb_opt` VALUES ('11026', '19', '10995', '双龙乡', '双龙乡', '155');
INSERT INTO `tb_opt` VALUES ('11027', '19', '10995', '太原乡', '太原乡', '160');
INSERT INTO `tb_opt` VALUES ('11028', '19', '10995', '桐楼乡', '桐楼乡', '165');
INSERT INTO `tb_opt` VALUES ('11029', '19', '10995', '小厂乡', '小厂乡', '170');
INSERT INTO `tb_opt` VALUES ('11030', '19', '10995', '新田乡', '新田乡', '175');
INSERT INTO `tb_opt` VALUES ('11031', '19', '10995', '岩东乡', '岩东乡', '180');
INSERT INTO `tb_opt` VALUES ('11032', '19', '10995', '长滩乡', '长滩乡', '185');
INSERT INTO `tb_opt` VALUES ('11033', '19', '10995', '诸佛乡', '诸佛乡', '190');
INSERT INTO `tb_opt` VALUES ('11034', '19', '10995', '走马乡', '走马乡', '195');
INSERT INTO `tb_opt` VALUES ('11035', '19', '10470', '垫江县', '垫江县', '90');
INSERT INTO `tb_opt` VALUES ('11036', '19', '11035', '县城内', '县城内', '5');
INSERT INTO `tb_opt` VALUES ('11037', '19', '11035', '桂溪镇', '桂溪镇', '10');
INSERT INTO `tb_opt` VALUES ('11038', '19', '11035', '澄溪镇', '澄溪镇', '15');
INSERT INTO `tb_opt` VALUES ('11039', '19', '11035', '高安镇', '高安镇', '20');
INSERT INTO `tb_opt` VALUES ('11040', '19', '11035', '高峰镇', '高峰镇', '25');
INSERT INTO `tb_opt` VALUES ('11041', '19', '11035', '鹤游镇', '鹤游镇', '30');
INSERT INTO `tb_opt` VALUES ('11042', '19', '11035', '普顺镇', '普顺镇', '35');
INSERT INTO `tb_opt` VALUES ('11043', '19', '11035', '沙坪镇', '沙坪镇', '40');
INSERT INTO `tb_opt` VALUES ('11044', '19', '11035', '太平镇', '太平镇', '45');
INSERT INTO `tb_opt` VALUES ('11045', '19', '11035', '五洞镇', '五洞镇', '50');
INSERT INTO `tb_opt` VALUES ('11046', '19', '11035', '新民镇', '新民镇', '55');
INSERT INTO `tb_opt` VALUES ('11047', '19', '11035', '砚台镇', '砚台镇', '60');
INSERT INTO `tb_opt` VALUES ('11048', '19', '11035', '永安镇', '永安镇', '65');
INSERT INTO `tb_opt` VALUES ('11049', '19', '11035', '周嘉镇', '周嘉镇', '70');
INSERT INTO `tb_opt` VALUES ('11050', '19', '11035', '白家乡', '白家乡', '75');
INSERT INTO `tb_opt` VALUES ('11051', '19', '11035', '包家乡', '包家乡', '80');
INSERT INTO `tb_opt` VALUES ('11052', '19', '11035', '曹回乡', '曹回乡', '85');
INSERT INTO `tb_opt` VALUES ('11053', '19', '11035', '大石乡', '大石乡', '90');
INSERT INTO `tb_opt` VALUES ('11054', '19', '11035', '杠家乡', '杠家乡', '95');
INSERT INTO `tb_opt` VALUES ('11055', '19', '11035', '坪山镇', '坪山镇', '100');
INSERT INTO `tb_opt` VALUES ('11056', '19', '11035', '黄沙乡', '黄沙乡', '105');
INSERT INTO `tb_opt` VALUES ('11057', '19', '11035', '裴兴乡', '裴兴乡', '110');
INSERT INTO `tb_opt` VALUES ('11058', '19', '11035', '三溪乡', '三溪乡', '115');
INSERT INTO `tb_opt` VALUES ('11059', '19', '11035', '沙河乡', '沙河乡', '120');
INSERT INTO `tb_opt` VALUES ('11060', '19', '11035', '永平乡', '永平乡', '125');
INSERT INTO `tb_opt` VALUES ('11061', '19', '11035', '长龙乡', '长龙乡', '130');
INSERT INTO `tb_opt` VALUES ('11062', '19', '10470', '酉阳县', '酉阳县', '95');
INSERT INTO `tb_opt` VALUES ('11063', '19', '11062', '县城内', '县城内', '5');
INSERT INTO `tb_opt` VALUES ('11064', '19', '11062', '钟多镇', '钟多镇', '10');
INSERT INTO `tb_opt` VALUES ('11065', '19', '11062', '苍岭镇', '苍岭镇', '15');
INSERT INTO `tb_opt` VALUES ('11066', '19', '11062', '车田乡', '车田乡', '20');
INSERT INTO `tb_opt` VALUES ('11067', '19', '11062', '大溪镇', '大溪镇', '25');
INSERT INTO `tb_opt` VALUES ('11068', '19', '11062', '丁市镇', '丁市镇', '30');
INSERT INTO `tb_opt` VALUES ('11069', '19', '11062', '泔溪镇', '泔溪镇', '35');
INSERT INTO `tb_opt` VALUES ('11070', '19', '11062', '龚滩镇', '龚滩镇', '40');
INSERT INTO `tb_opt` VALUES ('11071', '19', '11062', '黑水镇', '黑水镇', '45');
INSERT INTO `tb_opt` VALUES ('11072', '19', '11062', '后溪镇', '后溪镇', '50');
INSERT INTO `tb_opt` VALUES ('11073', '19', '11062', '李溪镇', '李溪镇', '55');
INSERT INTO `tb_opt` VALUES ('11074', '19', '11062', '龙潭镇', '龙潭镇', '60');
INSERT INTO `tb_opt` VALUES ('11075', '19', '11062', '麻旺镇', '麻旺镇', '65');
INSERT INTO `tb_opt` VALUES ('11076', '19', '11062', '小河镇', '小河镇', '70');
INSERT INTO `tb_opt` VALUES ('11077', '19', '11062', '兴隆镇', '兴隆镇', '75');
INSERT INTO `tb_opt` VALUES ('11078', '19', '11062', '酉酬镇', '酉酬镇', '80');
INSERT INTO `tb_opt` VALUES ('11079', '19', '11062', '南腰界乡', '南腰界乡', '85');
INSERT INTO `tb_opt` VALUES ('11080', '19', '11062', '后坪坝乡', '后坪坝乡', '90');
INSERT INTO `tb_opt` VALUES ('11081', '19', '11062', '板溪乡', '板溪乡', '95');
INSERT INTO `tb_opt` VALUES ('11082', '19', '11062', '官清乡', '官清乡', '100');
INSERT INTO `tb_opt` VALUES ('11083', '19', '11062', '花田乡', '花田乡', '105');
INSERT INTO `tb_opt` VALUES ('11084', '19', '11062', '江丰乡', '江丰乡', '110');
INSERT INTO `tb_opt` VALUES ('11085', '19', '11062', '可大乡', '可大乡', '115');
INSERT INTO `tb_opt` VALUES ('11086', '19', '11062', '浪坪乡', '浪坪乡', '120');
INSERT INTO `tb_opt` VALUES ('11087', '19', '11062', '两罾乡', '两罾乡', '125');
INSERT INTO `tb_opt` VALUES ('11088', '19', '11062', '毛坝乡', '毛坝乡', '130');
INSERT INTO `tb_opt` VALUES ('11089', '19', '11062', '庙溪乡', '庙溪乡', '135');
INSERT INTO `tb_opt` VALUES ('11090', '19', '11062', '木叶乡', '木叶乡', '140');
INSERT INTO `tb_opt` VALUES ('11091', '19', '11062', '楠木乡', '楠木乡', '145');
INSERT INTO `tb_opt` VALUES ('11092', '19', '11062', '偏柏乡', '偏柏乡', '150');
INSERT INTO `tb_opt` VALUES ('11093', '19', '11062', '清泉乡', '清泉乡', '155');
INSERT INTO `tb_opt` VALUES ('11094', '19', '11062', '双泉乡', '双泉乡', '160');
INSERT INTO `tb_opt` VALUES ('11095', '19', '11062', '天馆乡', '天馆乡', '165');
INSERT INTO `tb_opt` VALUES ('11096', '19', '11062', '铜鼓乡', '铜鼓乡', '170');
INSERT INTO `tb_opt` VALUES ('11097', '19', '11062', '涂市乡', '涂市乡', '175');
INSERT INTO `tb_opt` VALUES ('11098', '19', '11062', '万木乡', '万木乡', '180');
INSERT INTO `tb_opt` VALUES ('11099', '19', '11062', '五福乡', '五福乡', '185');
INSERT INTO `tb_opt` VALUES ('11100', '19', '11062', '宜居乡', '宜居乡', '190');
INSERT INTO `tb_opt` VALUES ('11101', '19', '11062', '腴地乡', '腴地乡', '195');
INSERT INTO `tb_opt` VALUES ('11102', '19', '11062', '板桥乡', '板桥乡', '200');
INSERT INTO `tb_opt` VALUES ('11103', '19', '10470', '秀山县', '秀山县', '100');
INSERT INTO `tb_opt` VALUES ('11104', '19', '11103', '县城内', '县城内', '5');
INSERT INTO `tb_opt` VALUES ('11105', '19', '11103', '清溪场镇', '清溪场镇', '10');
INSERT INTO `tb_opt` VALUES ('11106', '19', '11103', '中和镇', '中和镇', '15');
INSERT INTO `tb_opt` VALUES ('11107', '19', '11103', '隘口镇', '隘口镇', '20');
INSERT INTO `tb_opt` VALUES ('11108', '19', '11103', '峨溶镇', '峨溶镇', '25');
INSERT INTO `tb_opt` VALUES ('11109', '19', '11103', '官庄镇', '官庄镇', '30');
INSERT INTO `tb_opt` VALUES ('11110', '19', '11103', '洪安镇', '洪安镇', '35');
INSERT INTO `tb_opt` VALUES ('11111', '19', '11103', '兰桥镇', '兰桥镇', '40');
INSERT INTO `tb_opt` VALUES ('11112', '19', '11103', '龙池镇', '龙池镇', '45');
INSERT INTO `tb_opt` VALUES ('11113', '19', '11103', '梅江镇', '梅江镇', '50');
INSERT INTO `tb_opt` VALUES ('11114', '19', '11103', '平凯镇', '平凯镇', '55');
INSERT INTO `tb_opt` VALUES ('11115', '19', '11103', '溶溪镇', '溶溪镇', '60');
INSERT INTO `tb_opt` VALUES ('11116', '19', '11103', '石堤镇', '石堤镇', '65');
INSERT INTO `tb_opt` VALUES ('11117', '19', '11103', '石耶镇', '石耶镇', '70');
INSERT INTO `tb_opt` VALUES ('11118', '19', '11103', '雅江镇', '雅江镇', '75');
INSERT INTO `tb_opt` VALUES ('11119', '19', '11103', '巴家乡', '巴家乡', '80');
INSERT INTO `tb_opt` VALUES ('11120', '19', '11103', '保安乡', '保安乡', '85');
INSERT INTO `tb_opt` VALUES ('11121', '19', '11103', '岑溪乡', '岑溪乡', '90');
INSERT INTO `tb_opt` VALUES ('11122', '19', '11103', '大溪乡', '大溪乡', '95');
INSERT INTO `tb_opt` VALUES ('11123', '19', '11103', '干川乡', '干川乡', '100');
INSERT INTO `tb_opt` VALUES ('11124', '19', '11103', '膏田乡', '膏田乡', '105');
INSERT INTO `tb_opt` VALUES ('11125', '19', '11103', '官舟乡', '官舟乡', '110');
INSERT INTO `tb_opt` VALUES ('11126', '19', '11103', '海洋乡', '海洋乡', '115');
INSERT INTO `tb_opt` VALUES ('11127', '19', '11103', '里仁乡', '里仁乡', '120');
INSERT INTO `tb_opt` VALUES ('11128', '19', '11103', '妙泉乡', '妙泉乡', '125');
INSERT INTO `tb_opt` VALUES ('11129', '19', '11103', '平马乡', '平马乡', '130');
INSERT INTO `tb_opt` VALUES ('11130', '19', '11103', '宋农乡', '宋农乡', '135');
INSERT INTO `tb_opt` VALUES ('11131', '19', '11103', '溪口乡', '溪口乡', '140');
INSERT INTO `tb_opt` VALUES ('11132', '19', '11103', '孝溪乡', '孝溪乡', '145');
INSERT INTO `tb_opt` VALUES ('11133', '19', '11103', '涌洞乡', '涌洞乡', '150');
INSERT INTO `tb_opt` VALUES ('11134', '19', '11103', '中平乡', '中平乡', '155');
INSERT INTO `tb_opt` VALUES ('11135', '19', '11103', '钟灵乡', '钟灵乡', '160');
INSERT INTO `tb_opt` VALUES ('11136', '19', '10470', '城口县', '城口县', '105');
INSERT INTO `tb_opt` VALUES ('11137', '19', '11136', '县城内', '县城内', '5');
INSERT INTO `tb_opt` VALUES ('11138', '19', '11136', '葛城镇', '葛城镇', '10');
INSERT INTO `tb_opt` VALUES ('11139', '19', '11136', '巴山镇', '巴山镇', '15');
INSERT INTO `tb_opt` VALUES ('11140', '19', '11136', '高观镇', '高观镇', '20');
INSERT INTO `tb_opt` VALUES ('11141', '19', '11136', '庙坝镇', '庙坝镇', '25');
INSERT INTO `tb_opt` VALUES ('11142', '19', '11136', '明通镇', '明通镇', '30');
INSERT INTO `tb_opt` VALUES ('11143', '19', '11136', '坪坝镇', '坪坝镇', '35');
INSERT INTO `tb_opt` VALUES ('11144', '19', '11136', '修齐镇', '修齐镇', '40');
INSERT INTO `tb_opt` VALUES ('11145', '19', '11136', '北屏乡', '北屏乡', '45');
INSERT INTO `tb_opt` VALUES ('11146', '19', '11136', '东安乡', '东安乡', '50');
INSERT INTO `tb_opt` VALUES ('11147', '19', '11136', '高楠乡', '高楠乡', '55');
INSERT INTO `tb_opt` VALUES ('11148', '19', '11136', '高燕乡', '高燕乡', '60');
INSERT INTO `tb_opt` VALUES ('11149', '19', '11136', '河鱼乡', '河鱼乡', '65');
INSERT INTO `tb_opt` VALUES ('11150', '19', '11136', '厚坪乡', '厚坪乡', '70');
INSERT INTO `tb_opt` VALUES ('11151', '19', '11136', '鸡鸣乡', '鸡鸣乡', '75');
INSERT INTO `tb_opt` VALUES ('11152', '19', '11136', '岚天乡', '岚天乡', '80');
INSERT INTO `tb_opt` VALUES ('11153', '19', '11136', '蓼子乡', '蓼子乡', '85');
INSERT INTO `tb_opt` VALUES ('11154', '19', '11136', '龙田乡', '龙田乡', '90');
INSERT INTO `tb_opt` VALUES ('11155', '19', '11136', '明中乡', '明中乡', '95');
INSERT INTO `tb_opt` VALUES ('11156', '19', '11136', '双河乡', '双河乡', '100');
INSERT INTO `tb_opt` VALUES ('11157', '19', '11136', '咸宜乡', '咸宜乡', '105');
INSERT INTO `tb_opt` VALUES ('11158', '19', '11136', '沿河乡', '沿河乡', '110');
INSERT INTO `tb_opt` VALUES ('11159', '19', '11136', '治平乡', '治平乡', '115');
INSERT INTO `tb_opt` VALUES ('11160', '19', '11136', '周溪乡', '周溪乡', '120');
INSERT INTO `tb_opt` VALUES ('11161', '19', '11136', '左岚乡', '左岚乡', '125');
INSERT INTO `tb_opt` VALUES ('11162', '19', '10470', '璧山县', '璧山县', '110');
INSERT INTO `tb_opt` VALUES ('11163', '19', '11162', '县城内', '县城内', '5');
INSERT INTO `tb_opt` VALUES ('11164', '19', '11162', '青杠镇', '青杠镇', '10');
INSERT INTO `tb_opt` VALUES ('11165', '19', '11162', '来凤镇', '来凤镇', '15');
INSERT INTO `tb_opt` VALUES ('11166', '19', '11162', '丁家镇', '丁家镇', '20');
INSERT INTO `tb_opt` VALUES ('11167', '19', '11162', '大路镇', '大路镇', '25');
INSERT INTO `tb_opt` VALUES ('11168', '19', '11162', '八塘镇', '八塘镇', '30');
INSERT INTO `tb_opt` VALUES ('11169', '19', '11162', '七塘镇', '七塘镇', '35');
INSERT INTO `tb_opt` VALUES ('11170', '19', '11162', '河边镇', '河边镇', '40');
INSERT INTO `tb_opt` VALUES ('11171', '19', '11162', '福禄镇', '福禄镇', '45');
INSERT INTO `tb_opt` VALUES ('11172', '19', '11162', '大兴镇', '大兴镇', '50');
INSERT INTO `tb_opt` VALUES ('11173', '19', '11162', '正兴镇', '正兴镇', '55');
INSERT INTO `tb_opt` VALUES ('11174', '19', '11162', '广普镇', '广普镇', '60');
INSERT INTO `tb_opt` VALUES ('11175', '19', '11162', '三合镇', '三合镇', '65');
INSERT INTO `tb_opt` VALUES ('11176', '19', '11162', '健龙镇', '健龙镇', '70');
INSERT INTO `tb_opt` VALUES ('11177', '19', '10470', '荣昌县', '荣昌县', '115');
INSERT INTO `tb_opt` VALUES ('11178', '19', '11177', '县城内', '县城内', '5');
INSERT INTO `tb_opt` VALUES ('11179', '19', '11177', '广顺镇', '广顺镇', '10');
INSERT INTO `tb_opt` VALUES ('11180', '19', '11177', '安富镇', '安富镇', '15');
INSERT INTO `tb_opt` VALUES ('11181', '19', '11177', '峰高镇', '峰高镇', '20');
INSERT INTO `tb_opt` VALUES ('11182', '19', '11177', '双河镇', '双河镇', '25');
INSERT INTO `tb_opt` VALUES ('11183', '19', '11177', '直升镇', '直升镇', '30');
INSERT INTO `tb_opt` VALUES ('11184', '19', '11177', '路孔镇', '路孔镇', '35');
INSERT INTO `tb_opt` VALUES ('11185', '19', '11177', '清江镇', '清江镇', '40');
INSERT INTO `tb_opt` VALUES ('11186', '19', '11177', '仁义镇', '仁义镇', '45');
INSERT INTO `tb_opt` VALUES ('11187', '19', '11177', '河包镇', '河包镇', '50');
INSERT INTO `tb_opt` VALUES ('11188', '19', '11177', '古昌镇', '古昌镇', '55');
INSERT INTO `tb_opt` VALUES ('11189', '19', '11177', '吴家镇', '吴家镇', '60');
INSERT INTO `tb_opt` VALUES ('11190', '19', '11177', '观胜镇', '观胜镇', '65');
INSERT INTO `tb_opt` VALUES ('11191', '19', '11177', '铜鼓镇', '铜鼓镇', '70');
INSERT INTO `tb_opt` VALUES ('11192', '19', '11177', '清流镇', '清流镇', '75');
INSERT INTO `tb_opt` VALUES ('11193', '19', '11177', '盘龙镇', '盘龙镇', '80');
INSERT INTO `tb_opt` VALUES ('11194', '19', '11177', '远觉镇', '远觉镇', '85');
INSERT INTO `tb_opt` VALUES ('11195', '19', '11177', '清升镇', '清升镇', '90');
INSERT INTO `tb_opt` VALUES ('11196', '19', '11177', '荣隆镇', '荣隆镇', '95');
INSERT INTO `tb_opt` VALUES ('11197', '19', '11177', '龙集镇', '龙集镇', '100');
INSERT INTO `tb_opt` VALUES ('11198', '19', '10470', '铜梁县', '铜梁县', '120');
INSERT INTO `tb_opt` VALUES ('11199', '19', '11198', '县城内', '县城内', '5');
INSERT INTO `tb_opt` VALUES ('11200', '19', '11198', '土桥镇', '土桥镇', '10');
INSERT INTO `tb_opt` VALUES ('11201', '19', '11198', '二坪镇', '二坪镇', '15');
INSERT INTO `tb_opt` VALUES ('11202', '19', '11198', '水口镇', '水口镇', '20');
INSERT INTO `tb_opt` VALUES ('11203', '19', '11198', '安居镇', '安居镇', '25');
INSERT INTO `tb_opt` VALUES ('11204', '19', '11198', '白羊镇', '白羊镇', '30');
INSERT INTO `tb_opt` VALUES ('11205', '19', '11198', '平滩镇', '平滩镇', '35');
INSERT INTO `tb_opt` VALUES ('11206', '19', '11198', '石鱼镇', '石鱼镇', '40');
INSERT INTO `tb_opt` VALUES ('11207', '19', '11198', '福果镇', '福果镇', '45');
INSERT INTO `tb_opt` VALUES ('11208', '19', '11198', '维新镇', '维新镇', '50');
INSERT INTO `tb_opt` VALUES ('11209', '19', '11198', '高楼镇', '高楼镇', '55');
INSERT INTO `tb_opt` VALUES ('11210', '19', '11198', '大庙镇', '大庙镇', '60');
INSERT INTO `tb_opt` VALUES ('11211', '19', '11198', '围龙镇', '围龙镇', '65');
INSERT INTO `tb_opt` VALUES ('11212', '19', '11198', '华兴镇', '华兴镇', '70');
INSERT INTO `tb_opt` VALUES ('11213', '19', '11198', '永嘉镇', '永嘉镇', '75');
INSERT INTO `tb_opt` VALUES ('11214', '19', '11198', '安溪镇', '安溪镇', '80');
INSERT INTO `tb_opt` VALUES ('11215', '19', '11198', '西河镇', '西河镇', '85');
INSERT INTO `tb_opt` VALUES ('11216', '19', '11198', '太平镇', '太平镇', '90');
INSERT INTO `tb_opt` VALUES ('11217', '19', '11198', '旧县镇', '旧县镇', '95');
INSERT INTO `tb_opt` VALUES ('11218', '19', '11198', '虎峰镇', '虎峰镇', '100');
INSERT INTO `tb_opt` VALUES ('11219', '19', '11198', '少云镇', '少云镇', '105');
INSERT INTO `tb_opt` VALUES ('11220', '19', '11198', '蒲吕镇', '蒲吕镇', '110');
INSERT INTO `tb_opt` VALUES ('11221', '19', '11198', '侣俸镇', '侣俸镇', '115');
INSERT INTO `tb_opt` VALUES ('11222', '19', '11198', '小林乡', '小林乡', '120');
INSERT INTO `tb_opt` VALUES ('11223', '19', '11198', '双山乡', '双山乡', '125');
INSERT INTO `tb_opt` VALUES ('11224', '19', '11198', '庆隆乡', '庆隆乡', '130');
INSERT INTO `tb_opt` VALUES ('11225', '19', '10470', '合川区', '合川区', '125');
INSERT INTO `tb_opt` VALUES ('11226', '19', '11225', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('11227', '19', '11225', '草街镇', '草街镇', '10');
INSERT INTO `tb_opt` VALUES ('11228', '19', '11225', '盐井镇', '盐井镇', '15');
INSERT INTO `tb_opt` VALUES ('11229', '19', '11225', '云门镇', '云门镇', '20');
INSERT INTO `tb_opt` VALUES ('11230', '19', '11225', '大石镇', '大石镇', '25');
INSERT INTO `tb_opt` VALUES ('11231', '19', '11225', '沙鱼镇', '沙鱼镇', '30');
INSERT INTO `tb_opt` VALUES ('11232', '19', '11225', '官渡镇', '官渡镇', '35');
INSERT INTO `tb_opt` VALUES ('11233', '19', '11225', '涞滩镇', '涞滩镇', '40');
INSERT INTO `tb_opt` VALUES ('11234', '19', '11225', '肖家镇', '肖家镇', '45');
INSERT INTO `tb_opt` VALUES ('11235', '19', '11225', '古楼镇', '古楼镇', '50');
INSERT INTO `tb_opt` VALUES ('11236', '19', '11225', '三庙镇', '三庙镇', '55');
INSERT INTO `tb_opt` VALUES ('11237', '19', '11225', '二郎镇', '二郎镇', '60');
INSERT INTO `tb_opt` VALUES ('11238', '19', '11225', '龙凤镇', '龙凤镇', '65');
INSERT INTO `tb_opt` VALUES ('11239', '19', '11225', '隆兴镇', '隆兴镇', '70');
INSERT INTO `tb_opt` VALUES ('11240', '19', '11225', '铜溪镇', '铜溪镇', '75');
INSERT INTO `tb_opt` VALUES ('11241', '19', '11225', '双凤镇', '双凤镇', '80');
INSERT INTO `tb_opt` VALUES ('11242', '19', '11225', '狮滩镇', '狮滩镇', '85');
INSERT INTO `tb_opt` VALUES ('11243', '19', '11225', '清平镇', '清平镇', '90');
INSERT INTO `tb_opt` VALUES ('11244', '19', '11225', '土场镇', '土场镇', '95');
INSERT INTO `tb_opt` VALUES ('11245', '19', '11225', '小沔镇', '小沔镇', '100');
INSERT INTO `tb_opt` VALUES ('11246', '19', '11225', '三汇镇', '三汇镇', '105');
INSERT INTO `tb_opt` VALUES ('11247', '19', '11225', '香龙镇', '香龙镇', '110');
INSERT INTO `tb_opt` VALUES ('11248', '19', '11225', '钱塘镇', '钱塘镇', '115');
INSERT INTO `tb_opt` VALUES ('11249', '19', '11225', '龙市镇', '龙市镇', '120');
INSERT INTO `tb_opt` VALUES ('11250', '19', '11225', '燕窝镇', '燕窝镇', '125');
INSERT INTO `tb_opt` VALUES ('11251', '19', '11225', '太和镇', '太和镇', '130');
INSERT INTO `tb_opt` VALUES ('11252', '19', '11225', '渭沱镇', '渭沱镇', '135');
INSERT INTO `tb_opt` VALUES ('11253', '19', '11225', '双槐镇', '双槐镇', '140');
INSERT INTO `tb_opt` VALUES ('11254', '19', '10470', '巴南区', '巴南区', '130');
INSERT INTO `tb_opt` VALUES ('11255', '19', '11254', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('11256', '19', '11254', '南泉镇', '南泉镇', '10');
INSERT INTO `tb_opt` VALUES ('11257', '19', '11254', '一品镇', '一品镇', '15');
INSERT INTO `tb_opt` VALUES ('11258', '19', '11254', '南彭镇', '南彭镇', '20');
INSERT INTO `tb_opt` VALUES ('11259', '19', '11254', '惠民镇', '惠民镇', '25');
INSERT INTO `tb_opt` VALUES ('11260', '19', '11254', '麻柳嘴镇', '麻柳嘴镇', '30');
INSERT INTO `tb_opt` VALUES ('11261', '19', '11254', '天星寺镇', '天星寺镇', '35');
INSERT INTO `tb_opt` VALUES ('11262', '19', '11254', '双河口镇', '双河口镇', '40');
INSERT INTO `tb_opt` VALUES ('11263', '19', '11254', '界石镇', '界石镇', '45');
INSERT INTO `tb_opt` VALUES ('11264', '19', '11254', '安澜镇', '安澜镇', '50');
INSERT INTO `tb_opt` VALUES ('11265', '19', '11254', '跳石镇', '跳石镇', '55');
INSERT INTO `tb_opt` VALUES ('11266', '19', '11254', '木洞镇', '木洞镇', '60');
INSERT INTO `tb_opt` VALUES ('11267', '19', '11254', '丰盛镇', '丰盛镇', '65');
INSERT INTO `tb_opt` VALUES ('11268', '19', '11254', '二圣镇', '二圣镇', '70');
INSERT INTO `tb_opt` VALUES ('11269', '19', '11254', '东泉镇', '东泉镇', '75');
INSERT INTO `tb_opt` VALUES ('11270', '19', '11254', '姜家镇', '姜家镇', '80');
INSERT INTO `tb_opt` VALUES ('11271', '19', '11254', '接龙镇', '接龙镇', '85');
INSERT INTO `tb_opt` VALUES ('11272', '19', '11254', '石滩镇', '石滩镇', '90');
INSERT INTO `tb_opt` VALUES ('11273', '19', '11254', '石龙镇', '石龙镇', '95');
INSERT INTO `tb_opt` VALUES ('11274', '19', '10470', '北碚区', '北碚区', '135');
INSERT INTO `tb_opt` VALUES ('11275', '19', '11274', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('11276', '19', '11274', '东阳镇', '东阳镇', '10');
INSERT INTO `tb_opt` VALUES ('11277', '19', '11274', '蔡家岗镇', '蔡家岗镇', '15');
INSERT INTO `tb_opt` VALUES ('11278', '19', '11274', '童家溪镇', '童家溪镇', '20');
INSERT INTO `tb_opt` VALUES ('11279', '19', '11274', '施家梁镇', '施家梁镇', '25');
INSERT INTO `tb_opt` VALUES ('11280', '19', '11274', '金刀峡镇', '金刀峡镇', '30');
INSERT INTO `tb_opt` VALUES ('11281', '19', '11274', '澄江镇', '澄江镇', '35');
INSERT INTO `tb_opt` VALUES ('11282', '19', '11274', '水土镇', '水土镇', '40');
INSERT INTO `tb_opt` VALUES ('11283', '19', '11274', '歇马镇', '歇马镇', '45');
INSERT INTO `tb_opt` VALUES ('11284', '19', '11274', '天府镇', '天府镇', '50');
INSERT INTO `tb_opt` VALUES ('11285', '19', '11274', '复兴镇', '复兴镇', '55');
INSERT INTO `tb_opt` VALUES ('11286', '19', '11274', '静观镇', '静观镇', '60');
INSERT INTO `tb_opt` VALUES ('11287', '19', '11274', '柳荫镇', '柳荫镇', '65');
INSERT INTO `tb_opt` VALUES ('11288', '19', '11274', '三圣镇', '三圣镇', '70');
INSERT INTO `tb_opt` VALUES ('11289', '19', '10470', '江津区', '江津区', '140');
INSERT INTO `tb_opt` VALUES ('11290', '19', '11289', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('11291', '19', '11289', '四面山镇', '四面山镇', '10');
INSERT INTO `tb_opt` VALUES ('11292', '19', '11289', '支坪镇', '支坪镇', '15');
INSERT INTO `tb_opt` VALUES ('11293', '19', '11289', '白沙镇', '白沙镇', '20');
INSERT INTO `tb_opt` VALUES ('11294', '19', '11289', '珞璜镇', '珞璜镇', '25');
INSERT INTO `tb_opt` VALUES ('11295', '19', '11289', '柏林镇', '柏林镇', '30');
INSERT INTO `tb_opt` VALUES ('11296', '19', '11289', '蔡家镇', '蔡家镇', '35');
INSERT INTO `tb_opt` VALUES ('11297', '19', '11289', '慈云镇', '慈云镇', '40');
INSERT INTO `tb_opt` VALUES ('11298', '19', '11289', '杜市镇', '杜市镇', '45');
INSERT INTO `tb_opt` VALUES ('11299', '19', '11289', '广兴镇', '广兴镇', '50');
INSERT INTO `tb_opt` VALUES ('11300', '19', '11289', '嘉平镇', '嘉平镇', '55');
INSERT INTO `tb_opt` VALUES ('11301', '19', '11289', '贾嗣镇', '贾嗣镇', '60');
INSERT INTO `tb_opt` VALUES ('11302', '19', '11289', '李市镇', '李市镇', '65');
INSERT INTO `tb_opt` VALUES ('11303', '19', '11289', '龙华镇', '龙华镇', '70');
INSERT INTO `tb_opt` VALUES ('11304', '19', '11289', '石蟆镇', '石蟆镇', '75');
INSERT INTO `tb_opt` VALUES ('11305', '19', '11289', '石门镇', '石门镇', '80');
INSERT INTO `tb_opt` VALUES ('11306', '19', '11289', '塘河镇', '塘河镇', '85');
INSERT INTO `tb_opt` VALUES ('11307', '19', '11289', '吴滩镇', '吴滩镇', '90');
INSERT INTO `tb_opt` VALUES ('11308', '19', '11289', '西湖镇', '西湖镇', '95');
INSERT INTO `tb_opt` VALUES ('11309', '19', '11289', '夏坝镇', '夏坝镇', '100');
INSERT INTO `tb_opt` VALUES ('11310', '19', '11289', '先锋镇', '先锋镇', '105');
INSERT INTO `tb_opt` VALUES ('11311', '19', '11289', '永兴镇', '永兴镇', '110');
INSERT INTO `tb_opt` VALUES ('11312', '19', '11289', '油溪镇', '油溪镇', '115');
INSERT INTO `tb_opt` VALUES ('11313', '19', '11289', '中山镇', '中山镇', '120');
INSERT INTO `tb_opt` VALUES ('11314', '19', '11289', '朱杨镇', '朱杨镇', '125');
INSERT INTO `tb_opt` VALUES ('11315', '19', '10470', '渝北区', '渝北区', '145');
INSERT INTO `tb_opt` VALUES ('11316', '19', '11315', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('11317', '19', '11315', '礼嘉镇', '礼嘉镇', '10');
INSERT INTO `tb_opt` VALUES ('11318', '19', '11315', '两路镇', '两路镇', '15');
INSERT INTO `tb_opt` VALUES ('11319', '19', '11315', '王家镇', '王家镇', '20');
INSERT INTO `tb_opt` VALUES ('11320', '19', '11315', '悦来镇', '悦来镇', '25');
INSERT INTO `tb_opt` VALUES ('11321', '19', '11315', '玉峰山镇', '玉峰山镇', '30');
INSERT INTO `tb_opt` VALUES ('11322', '19', '11315', '茨竹镇', '茨竹镇', '35');
INSERT INTO `tb_opt` VALUES ('11323', '19', '11315', '大盛镇', '大盛镇', '40');
INSERT INTO `tb_opt` VALUES ('11324', '19', '11315', '大塆镇', '大塆镇', '45');
INSERT INTO `tb_opt` VALUES ('11325', '19', '11315', '古路镇', '古路镇', '50');
INSERT INTO `tb_opt` VALUES ('11326', '19', '11315', '龙兴镇', '龙兴镇', '55');
INSERT INTO `tb_opt` VALUES ('11327', '19', '11315', '洛碛镇', '洛碛镇', '60');
INSERT INTO `tb_opt` VALUES ('11328', '19', '11315', '木耳镇', '木耳镇', '65');
INSERT INTO `tb_opt` VALUES ('11329', '19', '11315', '石船镇', '石船镇', '70');
INSERT INTO `tb_opt` VALUES ('11330', '19', '11315', '统景镇', '统景镇', '75');
INSERT INTO `tb_opt` VALUES ('11331', '19', '11315', '兴隆镇', '兴隆镇', '80');
INSERT INTO `tb_opt` VALUES ('11332', '19', '10470', '长寿区', '长寿区', '150');
INSERT INTO `tb_opt` VALUES ('11333', '19', '11332', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('11334', '19', '11332', '长寿湖镇', '长寿湖镇', '10');
INSERT INTO `tb_opt` VALUES ('11335', '19', '11332', '邻封镇', '邻封镇', '15');
INSERT INTO `tb_opt` VALUES ('11336', '19', '11332', '但渡镇', '但渡镇', '20');
INSERT INTO `tb_opt` VALUES ('11337', '19', '11332', '云集镇', '云集镇', '25');
INSERT INTO `tb_opt` VALUES ('11338', '19', '11332', '双龙镇', '双龙镇', '30');
INSERT INTO `tb_opt` VALUES ('11339', '19', '11332', '龙河镇', '龙河镇', '35');
INSERT INTO `tb_opt` VALUES ('11340', '19', '11332', '石堰镇', '石堰镇', '40');
INSERT INTO `tb_opt` VALUES ('11341', '19', '11332', '云台镇', '云台镇', '45');
INSERT INTO `tb_opt` VALUES ('11342', '19', '11332', '海棠镇', '海棠镇', '50');
INSERT INTO `tb_opt` VALUES ('11343', '19', '11332', '葛兰镇', '葛兰镇', '55');
INSERT INTO `tb_opt` VALUES ('11344', '19', '11332', '新市镇', '新市镇', '60');
INSERT INTO `tb_opt` VALUES ('11345', '19', '11332', '八颗镇', '八颗镇', '65');
INSERT INTO `tb_opt` VALUES ('11346', '19', '11332', '洪湖镇', '洪湖镇', '70');
INSERT INTO `tb_opt` VALUES ('11347', '19', '11332', '万顺镇', '万顺镇', '75');
INSERT INTO `tb_opt` VALUES ('11348', '19', '10470', '永川区', '永川区', '155');
INSERT INTO `tb_opt` VALUES ('11349', '19', '11348', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('11350', '19', '11348', '双竹镇', '双竹镇', '10');
INSERT INTO `tb_opt` VALUES ('11351', '19', '11348', '三教镇', '三教镇', '15');
INSERT INTO `tb_opt` VALUES ('11352', '19', '11348', '大安镇', '大安镇', '20');
INSERT INTO `tb_opt` VALUES ('11353', '19', '11348', '陈食镇', '陈食镇', '25');
INSERT INTO `tb_opt` VALUES ('11354', '19', '11348', '板桥镇', '板桥镇', '30');
INSERT INTO `tb_opt` VALUES ('11355', '19', '11348', '宝峰镇', '宝峰镇', '35');
INSERT INTO `tb_opt` VALUES ('11356', '19', '11348', '临江镇', '临江镇', '40');
INSERT INTO `tb_opt` VALUES ('11357', '19', '11348', '红炉镇', '红炉镇', '45');
INSERT INTO `tb_opt` VALUES ('11358', '19', '11348', '吉安镇', '吉安镇', '50');
INSERT INTO `tb_opt` VALUES ('11359', '19', '11348', '金龙镇', '金龙镇', '55');
INSERT INTO `tb_opt` VALUES ('11360', '19', '11348', '来苏镇', '来苏镇', '60');
INSERT INTO `tb_opt` VALUES ('11361', '19', '11348', '青峰镇', '青峰镇', '65');
INSERT INTO `tb_opt` VALUES ('11362', '19', '11348', '三教镇', '三教镇', '70');
INSERT INTO `tb_opt` VALUES ('11363', '19', '11348', '双石镇', '双石镇', '75');
INSERT INTO `tb_opt` VALUES ('11364', '19', '11348', '松溉镇', '松溉镇', '80');
INSERT INTO `tb_opt` VALUES ('11365', '19', '11348', '五间镇', '五间镇', '85');
INSERT INTO `tb_opt` VALUES ('11366', '19', '11348', '仙龙镇', '仙龙镇', '90');
INSERT INTO `tb_opt` VALUES ('11367', '19', '11348', '永荣镇', '永荣镇', '95');
INSERT INTO `tb_opt` VALUES ('11368', '19', '11348', '朱沱镇', '朱沱镇', '100');
INSERT INTO `tb_opt` VALUES ('11369', '19', '11348', '何埂镇', '何埂镇', '105');
INSERT INTO `tb_opt` VALUES ('11370', '19', '10470', '江北区', '江北区', '160');
INSERT INTO `tb_opt` VALUES ('11371', '19', '11370', '内环以内', '内环以内', '5');
INSERT INTO `tb_opt` VALUES ('11372', '19', '11370', '寸滩镇', '寸滩镇', '10');
INSERT INTO `tb_opt` VALUES ('11373', '19', '11370', '郭家沱镇', '郭家沱镇', '15');
INSERT INTO `tb_opt` VALUES ('11374', '19', '11370', '铁山坪镇', '铁山坪镇', '20');
INSERT INTO `tb_opt` VALUES ('11375', '19', '11370', '鱼嘴镇', '鱼嘴镇', '25');
INSERT INTO `tb_opt` VALUES ('11376', '19', '11370', '复盛镇', '复盛镇', '30');
INSERT INTO `tb_opt` VALUES ('11377', '19', '11370', '五宝镇', '五宝镇', '35');
INSERT INTO `tb_opt` VALUES ('11378', '19', '11370', '大石坝镇', '大石坝镇', '40');
INSERT INTO `tb_opt` VALUES ('11379', '19', '10470', '南岸区', '南岸区', '165');
INSERT INTO `tb_opt` VALUES ('11380', '19', '11379', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('11381', '19', '11379', '内环以内', '内环以内', '10');
INSERT INTO `tb_opt` VALUES ('11382', '19', '11379', '茶园新区', '茶园新区', '15');
INSERT INTO `tb_opt` VALUES ('11383', '19', '11379', '鸡冠石镇', '鸡冠石镇', '20');
INSERT INTO `tb_opt` VALUES ('11384', '19', '11379', '长生桥镇', '长生桥镇', '25');
INSERT INTO `tb_opt` VALUES ('11385', '19', '11379', '峡口镇', '峡口镇', '30');
INSERT INTO `tb_opt` VALUES ('11386', '19', '11379', '广阳镇', '广阳镇', '35');
INSERT INTO `tb_opt` VALUES ('11387', '19', '11379', '迎龙镇', '迎龙镇', '40');
INSERT INTO `tb_opt` VALUES ('11388', '19', '10470', '九龙坡区', '九龙坡区', '170');
INSERT INTO `tb_opt` VALUES ('11389', '19', '11388', '内环以内', '内环以内', '5');
INSERT INTO `tb_opt` VALUES ('11390', '19', '11388', '白市驿镇', '白市驿镇', '10');
INSERT INTO `tb_opt` VALUES ('11391', '19', '11388', '铜罐驿镇', '铜罐驿镇', '15');
INSERT INTO `tb_opt` VALUES ('11392', '19', '11388', '华岩镇', '华岩镇', '20');
INSERT INTO `tb_opt` VALUES ('11393', '19', '11388', '巴福镇', '巴福镇', '25');
INSERT INTO `tb_opt` VALUES ('11394', '19', '11388', '含谷镇', '含谷镇', '30');
INSERT INTO `tb_opt` VALUES ('11395', '19', '11388', '金凤镇', '金凤镇', '35');
INSERT INTO `tb_opt` VALUES ('11396', '19', '11388', '石板镇', '石板镇', '40');
INSERT INTO `tb_opt` VALUES ('11397', '19', '11388', '陶家镇', '陶家镇', '45');
INSERT INTO `tb_opt` VALUES ('11398', '19', '11388', '西彭镇', '西彭镇', '50');
INSERT INTO `tb_opt` VALUES ('11399', '19', '11388', '走马镇', '走马镇', '55');
INSERT INTO `tb_opt` VALUES ('11400', '19', '10470', '沙坪坝区', '沙坪坝区', '175');
INSERT INTO `tb_opt` VALUES ('11401', '19', '11400', '内环以内', '内环以内', '5');
INSERT INTO `tb_opt` VALUES ('11402', '19', '11400', '陈家桥镇', '陈家桥镇', '10');
INSERT INTO `tb_opt` VALUES ('11403', '19', '11400', '歌乐山镇', '歌乐山镇', '15');
INSERT INTO `tb_opt` VALUES ('11404', '19', '11400', '青木关镇', '青木关镇', '20');
INSERT INTO `tb_opt` VALUES ('11405', '19', '11400', '回龙坝镇', '回龙坝镇', '25');
INSERT INTO `tb_opt` VALUES ('11406', '19', '11400', '大学城', '大学城', '30');
INSERT INTO `tb_opt` VALUES ('11407', '19', '11400', '虎溪镇', '虎溪镇', '35');
INSERT INTO `tb_opt` VALUES ('11408', '19', '11400', '西永镇', '西永镇', '40');
INSERT INTO `tb_opt` VALUES ('11409', '19', '11400', '土主镇', '土主镇', '45');
INSERT INTO `tb_opt` VALUES ('11410', '19', '11400', '井口镇', '井口镇', '50');
INSERT INTO `tb_opt` VALUES ('11411', '19', '11400', '曾家镇', '曾家镇', '55');
INSERT INTO `tb_opt` VALUES ('11412', '19', '11400', '凤凰镇', '凤凰镇', '60');
INSERT INTO `tb_opt` VALUES ('11413', '19', '11400', '中梁镇', '中梁镇', '65');
INSERT INTO `tb_opt` VALUES ('11414', '19', '10470', '大渡口区', '大渡口区', '180');
INSERT INTO `tb_opt` VALUES ('11415', '19', '11414', '茄子溪镇', '茄子溪镇', '5');
INSERT INTO `tb_opt` VALUES ('11416', '19', '11414', '建胜镇', '建胜镇', '10');
INSERT INTO `tb_opt` VALUES ('11417', '19', '11414', '跳磴镇', '跳磴镇', '15');
INSERT INTO `tb_opt` VALUES ('11418', '19', '11414', '内环以内', '内环以内', '20');
INSERT INTO `tb_opt` VALUES ('11419', '19', '10470', '綦江区', '綦江区', '185');
INSERT INTO `tb_opt` VALUES ('11420', '19', '11419', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('11421', '19', '11419', '三江镇', '三江镇', '10');
INSERT INTO `tb_opt` VALUES ('11422', '19', '11419', '安稳镇', '安稳镇', '15');
INSERT INTO `tb_opt` VALUES ('11423', '19', '11419', '打通镇', '打通镇', '20');
INSERT INTO `tb_opt` VALUES ('11424', '19', '11419', '丁山镇', '丁山镇', '25');
INSERT INTO `tb_opt` VALUES ('11425', '19', '11419', '东溪镇', '东溪镇', '30');
INSERT INTO `tb_opt` VALUES ('11426', '19', '11419', '扶欢镇', '扶欢镇', '35');
INSERT INTO `tb_opt` VALUES ('11427', '19', '11419', '赶水镇', '赶水镇', '40');
INSERT INTO `tb_opt` VALUES ('11428', '19', '11419', '郭扶镇', '郭扶镇', '45');
INSERT INTO `tb_opt` VALUES ('11429', '19', '11419', '横山镇', '横山镇', '50');
INSERT INTO `tb_opt` VALUES ('11430', '19', '11419', '隆盛镇', '隆盛镇', '55');
INSERT INTO `tb_opt` VALUES ('11431', '19', '11419', '三角镇', '三角镇', '60');
INSERT INTO `tb_opt` VALUES ('11432', '19', '11419', '石壕镇', '石壕镇', '65');
INSERT INTO `tb_opt` VALUES ('11433', '19', '11419', '石角镇', '石角镇', '70');
INSERT INTO `tb_opt` VALUES ('11434', '19', '11419', '新盛镇', '新盛镇', '75');
INSERT INTO `tb_opt` VALUES ('11435', '19', '11419', '永城镇', '永城镇', '80');
INSERT INTO `tb_opt` VALUES ('11436', '19', '11419', '永新镇', '永新镇', '85');
INSERT INTO `tb_opt` VALUES ('11437', '19', '11419', '中峰镇', '中峰镇', '90');
INSERT INTO `tb_opt` VALUES ('11438', '19', '11419', '篆塘镇', '篆塘镇', '95');
INSERT INTO `tb_opt` VALUES ('11439', '19', '11419', '丛林镇', '丛林镇', '100');
INSERT INTO `tb_opt` VALUES ('11440', '19', '11419', '关坝镇', '关坝镇', '105');
INSERT INTO `tb_opt` VALUES ('11441', '19', '11419', '黑山镇', '黑山镇', '110');
INSERT INTO `tb_opt` VALUES ('11442', '19', '11419', '金桥镇', '金桥镇', '115');
INSERT INTO `tb_opt` VALUES ('11443', '19', '11419', '南桐镇', '南桐镇', '120');
INSERT INTO `tb_opt` VALUES ('11444', '19', '11419', '青年镇', '青年镇', '125');
INSERT INTO `tb_opt` VALUES ('11445', '19', '11419', '石林镇', '石林镇', '130');
INSERT INTO `tb_opt` VALUES ('11446', '19', '11419', '万东镇', '万东镇', '135');
INSERT INTO `tb_opt` VALUES ('11447', '19', '10470', '渝中区', '渝中区', '190');
INSERT INTO `tb_opt` VALUES ('11448', '19', '10470', '高新区', '高新区', '195');
INSERT INTO `tb_opt` VALUES ('11449', '19', '10470', '北部新区', '北部新区', '200');
INSERT INTO `tb_opt` VALUES ('11450', '19', '0', '河北省', '河北省', '25');
INSERT INTO `tb_opt` VALUES ('11451', '19', '11450', '石家庄市', '石家庄市', '5');
INSERT INTO `tb_opt` VALUES ('11452', '19', '11451', '藁城市', '藁城市', '5');
INSERT INTO `tb_opt` VALUES ('11453', '19', '11451', '鹿泉市', '鹿泉市', '10');
INSERT INTO `tb_opt` VALUES ('11454', '19', '11451', '正定县', '正定县', '15');
INSERT INTO `tb_opt` VALUES ('11455', '19', '11451', '新华区', '新华区', '20');
INSERT INTO `tb_opt` VALUES ('11456', '19', '11451', '桥西区', '桥西区', '25');
INSERT INTO `tb_opt` VALUES ('11457', '19', '11451', '桥东区', '桥东区', '30');
INSERT INTO `tb_opt` VALUES ('11458', '19', '11451', '裕华区', '裕华区', '35');
INSERT INTO `tb_opt` VALUES ('11459', '19', '11451', '长安区', '长安区', '40');
INSERT INTO `tb_opt` VALUES ('11460', '19', '11451', '辛集市', '辛集市', '45');
INSERT INTO `tb_opt` VALUES ('11461', '19', '11451', '晋州市', '晋州市', '50');
INSERT INTO `tb_opt` VALUES ('11462', '19', '11451', '新乐市', '新乐市', '55');
INSERT INTO `tb_opt` VALUES ('11463', '19', '11451', '平山县', '平山县', '60');
INSERT INTO `tb_opt` VALUES ('11464', '19', '11451', '井陉矿区', '井陉矿区', '65');
INSERT INTO `tb_opt` VALUES ('11465', '19', '11451', '井陉县', '井陉县', '70');
INSERT INTO `tb_opt` VALUES ('11466', '19', '11451', '栾城县', '栾城县', '75');
INSERT INTO `tb_opt` VALUES ('11467', '19', '11451', '行唐县', '行唐县', '80');
INSERT INTO `tb_opt` VALUES ('11468', '19', '11451', '灵寿县', '灵寿县', '85');
INSERT INTO `tb_opt` VALUES ('11469', '19', '11451', '高邑县', '高邑县', '90');
INSERT INTO `tb_opt` VALUES ('11470', '19', '11451', '赵县', '赵县', '95');
INSERT INTO `tb_opt` VALUES ('11471', '19', '11451', '赞皇县', '赞皇县', '100');
INSERT INTO `tb_opt` VALUES ('11472', '19', '11451', '深泽县', '深泽县', '105');
INSERT INTO `tb_opt` VALUES ('11473', '19', '11451', '无极县', '无极县', '110');
INSERT INTO `tb_opt` VALUES ('11474', '19', '11451', '元氏县', '元氏县', '115');
INSERT INTO `tb_opt` VALUES ('11475', '19', '11450', '邯郸市', '邯郸市', '10');
INSERT INTO `tb_opt` VALUES ('11476', '19', '11475', '丛台区', '丛台区', '5');
INSERT INTO `tb_opt` VALUES ('11477', '19', '11475', '邯山区', '邯山区', '10');
INSERT INTO `tb_opt` VALUES ('11478', '19', '11475', '复兴区', '复兴区', '15');
INSERT INTO `tb_opt` VALUES ('11479', '19', '11475', '武安市', '武安市', '20');
INSERT INTO `tb_opt` VALUES ('11480', '19', '11475', '临漳县', '临漳县', '25');
INSERT INTO `tb_opt` VALUES ('11481', '19', '11475', '永年县', '永年县', '30');
INSERT INTO `tb_opt` VALUES ('11482', '19', '11475', '邯郸县', '邯郸县', '35');
INSERT INTO `tb_opt` VALUES ('11483', '19', '11475', '峰峰矿区', '峰峰矿区', '40');
INSERT INTO `tb_opt` VALUES ('11484', '19', '11475', '曲周县', '曲周县', '45');
INSERT INTO `tb_opt` VALUES ('11485', '19', '11475', '馆陶县', '馆陶县', '50');
INSERT INTO `tb_opt` VALUES ('11486', '19', '11475', '魏县', '魏县', '55');
INSERT INTO `tb_opt` VALUES ('11487', '19', '11475', '成安县', '成安县', '60');
INSERT INTO `tb_opt` VALUES ('11488', '19', '11475', '大名县', '大名县', '65');
INSERT INTO `tb_opt` VALUES ('11489', '19', '11475', '涉县', '涉县', '70');
INSERT INTO `tb_opt` VALUES ('11490', '19', '11475', '鸡泽县', '鸡泽县', '75');
INSERT INTO `tb_opt` VALUES ('11491', '19', '11475', '邱县', '邱县', '80');
INSERT INTO `tb_opt` VALUES ('11492', '19', '11475', '广平县', '广平县', '85');
INSERT INTO `tb_opt` VALUES ('11493', '19', '11475', '肥乡县', '肥乡县', '90');
INSERT INTO `tb_opt` VALUES ('11494', '19', '11475', '磁县', '磁县', '95');
INSERT INTO `tb_opt` VALUES ('11495', '19', '11450', '邢台市', '邢台市', '15');
INSERT INTO `tb_opt` VALUES ('11496', '19', '11495', '宁晋县', '宁晋县', '5');
INSERT INTO `tb_opt` VALUES ('11497', '19', '11495', '威县', '威县', '10');
INSERT INTO `tb_opt` VALUES ('11498', '19', '11495', '桥西区', '桥西区', '15');
INSERT INTO `tb_opt` VALUES ('11499', '19', '11495', '桥东区', '桥东区', '20');
INSERT INTO `tb_opt` VALUES ('11500', '19', '11495', '邢台县', '邢台县', '25');
INSERT INTO `tb_opt` VALUES ('11501', '19', '11495', '南宫市', '南宫市', '30');
INSERT INTO `tb_opt` VALUES ('11502', '19', '11495', '沙河市', '沙河市', '35');
INSERT INTO `tb_opt` VALUES ('11503', '19', '11495', '柏乡县', '柏乡县', '40');
INSERT INTO `tb_opt` VALUES ('11504', '19', '11495', '任县', '任县', '45');
INSERT INTO `tb_opt` VALUES ('11505', '19', '11495', '清河县', '清河县', '50');
INSERT INTO `tb_opt` VALUES ('11506', '19', '11495', '隆尧县', '隆尧县', '55');
INSERT INTO `tb_opt` VALUES ('11507', '19', '11495', '临城县', '临城县', '60');
INSERT INTO `tb_opt` VALUES ('11508', '19', '11495', '广宗县', '广宗县', '65');
INSERT INTO `tb_opt` VALUES ('11509', '19', '11495', '临西县', '临西县', '70');
INSERT INTO `tb_opt` VALUES ('11510', '19', '11495', '内丘县', '内丘县', '75');
INSERT INTO `tb_opt` VALUES ('11511', '19', '11495', '平乡县', '平乡县', '80');
INSERT INTO `tb_opt` VALUES ('11512', '19', '11495', '巨鹿县', '巨鹿县', '85');
INSERT INTO `tb_opt` VALUES ('11513', '19', '11495', '新河县', '新河县', '90');
INSERT INTO `tb_opt` VALUES ('11514', '19', '11495', '南和县', '南和县', '95');
INSERT INTO `tb_opt` VALUES ('11515', '19', '11450', '保定市', '保定市', '20');
INSERT INTO `tb_opt` VALUES ('11516', '19', '11515', '涿州市', '涿州市', '5');
INSERT INTO `tb_opt` VALUES ('11517', '19', '11515', '定州市', '定州市', '10');
INSERT INTO `tb_opt` VALUES ('11518', '19', '11515', '徐水县', '徐水县', '15');
INSERT INTO `tb_opt` VALUES ('11519', '19', '11515', '高碑店市', '高碑店市', '20');
INSERT INTO `tb_opt` VALUES ('11520', '19', '11515', '新市区', '新市区', '25');
INSERT INTO `tb_opt` VALUES ('11521', '19', '11515', '北市区', '北市区', '30');
INSERT INTO `tb_opt` VALUES ('11522', '19', '11515', '南市区', '南市区', '35');
INSERT INTO `tb_opt` VALUES ('11523', '19', '11515', '安国市', '安国市', '40');
INSERT INTO `tb_opt` VALUES ('11524', '19', '11515', '安新县', '安新县', '45');
INSERT INTO `tb_opt` VALUES ('11525', '19', '11515', '满城县', '满城县', '50');
INSERT INTO `tb_opt` VALUES ('11526', '19', '11515', '清苑县', '清苑县', '55');
INSERT INTO `tb_opt` VALUES ('11527', '19', '11515', '涞水县', '涞水县', '60');
INSERT INTO `tb_opt` VALUES ('11528', '19', '11515', '阜平县', '阜平县', '65');
INSERT INTO `tb_opt` VALUES ('11529', '19', '11515', '定兴县', '定兴县', '70');
INSERT INTO `tb_opt` VALUES ('11530', '19', '11515', '唐县', '唐县', '75');
INSERT INTO `tb_opt` VALUES ('11531', '19', '11515', '高阳县', '高阳县', '80');
INSERT INTO `tb_opt` VALUES ('11532', '19', '11515', '容城县', '容城县', '85');
INSERT INTO `tb_opt` VALUES ('11533', '19', '11515', '涞源县', '涞源县', '90');
INSERT INTO `tb_opt` VALUES ('11534', '19', '11515', '望都县', '望都县', '95');
INSERT INTO `tb_opt` VALUES ('11535', '19', '11515', '易县', '易县', '100');
INSERT INTO `tb_opt` VALUES ('11536', '19', '11515', '曲阳县', '曲阳县', '105');
INSERT INTO `tb_opt` VALUES ('11537', '19', '11515', '蠡县', '蠡县', '110');
INSERT INTO `tb_opt` VALUES ('11538', '19', '11515', '顺平县', '顺平县', '115');
INSERT INTO `tb_opt` VALUES ('11539', '19', '11515', '博野县', '博野县', '120');
INSERT INTO `tb_opt` VALUES ('11540', '19', '11515', '雄县', '雄县', '125');
INSERT INTO `tb_opt` VALUES ('11541', '19', '11450', '张家口市', '张家口市', '25');
INSERT INTO `tb_opt` VALUES ('11542', '19', '11541', '怀安县', '怀安县', '5');
INSERT INTO `tb_opt` VALUES ('11543', '19', '11541', '沽源县', '沽源县', '10');
INSERT INTO `tb_opt` VALUES ('11544', '19', '11541', '宣化区', '宣化区', '15');
INSERT INTO `tb_opt` VALUES ('11545', '19', '11541', '宣化县', '宣化县', '20');
INSERT INTO `tb_opt` VALUES ('11546', '19', '11541', '康保县', '康保县', '25');
INSERT INTO `tb_opt` VALUES ('11547', '19', '11541', '张北县', '张北县', '30');
INSERT INTO `tb_opt` VALUES ('11548', '19', '11541', '阳原县', '阳原县', '35');
INSERT INTO `tb_opt` VALUES ('11549', '19', '11541', '赤城县', '赤城县', '40');
INSERT INTO `tb_opt` VALUES ('11550', '19', '11541', '崇礼县', '崇礼县', '45');
INSERT INTO `tb_opt` VALUES ('11551', '19', '11541', '尚义县', '尚义县', '50');
INSERT INTO `tb_opt` VALUES ('11552', '19', '11541', '蔚县', '蔚县', '55');
INSERT INTO `tb_opt` VALUES ('11553', '19', '11541', '涿鹿县', '涿鹿县', '60');
INSERT INTO `tb_opt` VALUES ('11554', '19', '11541', '万全县', '万全县', '65');
INSERT INTO `tb_opt` VALUES ('11555', '19', '11541', '下花园区', '下花园区', '70');
INSERT INTO `tb_opt` VALUES ('11556', '19', '11541', '桥西区', '桥西区', '75');
INSERT INTO `tb_opt` VALUES ('11557', '19', '11541', '桥东区', '桥东区', '80');
INSERT INTO `tb_opt` VALUES ('11558', '19', '11541', '怀来县', '怀来县', '85');
INSERT INTO `tb_opt` VALUES ('11559', '19', '11450', '承德市', '承德市', '30');
INSERT INTO `tb_opt` VALUES ('11560', '19', '11559', '双滦区', '双滦区', '5');
INSERT INTO `tb_opt` VALUES ('11561', '19', '11559', '鹰手营子矿区', '鹰手营子矿区', '10');
INSERT INTO `tb_opt` VALUES ('11562', '19', '11559', '隆化县', '隆化县', '15');
INSERT INTO `tb_opt` VALUES ('11563', '19', '11559', '兴隆县', '兴隆县', '20');
INSERT INTO `tb_opt` VALUES ('11564', '19', '11559', '平泉县', '平泉县', '25');
INSERT INTO `tb_opt` VALUES ('11565', '19', '11559', '滦平县', '滦平县', '30');
INSERT INTO `tb_opt` VALUES ('11566', '19', '11559', '丰宁县', '丰宁县', '35');
INSERT INTO `tb_opt` VALUES ('11567', '19', '11559', '围场县', '围场县', '40');
INSERT INTO `tb_opt` VALUES ('11568', '19', '11559', '宽城县', '宽城县', '45');
INSERT INTO `tb_opt` VALUES ('11569', '19', '11559', '双桥区', '双桥区', '50');
INSERT INTO `tb_opt` VALUES ('11570', '19', '11559', '承德县', '承德县', '55');
INSERT INTO `tb_opt` VALUES ('11571', '19', '11450', '秦皇岛市', '秦皇岛市', '35');
INSERT INTO `tb_opt` VALUES ('11572', '19', '11571', '卢龙县', '卢龙县', '5');
INSERT INTO `tb_opt` VALUES ('11573', '19', '11571', '青龙县', '青龙县', '10');
INSERT INTO `tb_opt` VALUES ('11574', '19', '11571', '昌黎县', '昌黎县', '15');
INSERT INTO `tb_opt` VALUES ('11575', '19', '11571', '北戴河区', '北戴河区', '20');
INSERT INTO `tb_opt` VALUES ('11576', '19', '11571', '海港区', '海港区', '25');
INSERT INTO `tb_opt` VALUES ('11577', '19', '11571', '山海关区', '山海关区', '30');
INSERT INTO `tb_opt` VALUES ('11578', '19', '11571', '抚宁县', '抚宁县', '35');
INSERT INTO `tb_opt` VALUES ('11579', '19', '11450', '唐山市', '唐山市', '40');
INSERT INTO `tb_opt` VALUES ('11580', '19', '11579', '路北区', '路北区', '5');
INSERT INTO `tb_opt` VALUES ('11581', '19', '11579', '路南区', '路南区', '10');
INSERT INTO `tb_opt` VALUES ('11582', '19', '11579', '迁安市', '迁安市', '15');
INSERT INTO `tb_opt` VALUES ('11583', '19', '11579', '丰润区', '丰润区', '20');
INSERT INTO `tb_opt` VALUES ('11584', '19', '11579', '古冶区', '古冶区', '25');
INSERT INTO `tb_opt` VALUES ('11585', '19', '11579', '开平区', '开平区', '30');
INSERT INTO `tb_opt` VALUES ('11586', '19', '11579', '遵化市', '遵化市', '35');
INSERT INTO `tb_opt` VALUES ('11587', '19', '11579', '丰南区', '丰南区', '40');
INSERT INTO `tb_opt` VALUES ('11588', '19', '11579', '迁西县', '迁西县', '45');
INSERT INTO `tb_opt` VALUES ('11589', '19', '11579', '滦南县', '滦南县', '50');
INSERT INTO `tb_opt` VALUES ('11590', '19', '11579', '玉田县', '玉田县', '55');
INSERT INTO `tb_opt` VALUES ('11591', '19', '11579', '曹妃甸区', '曹妃甸区', '60');
INSERT INTO `tb_opt` VALUES ('11592', '19', '11579', '乐亭县', '乐亭县', '65');
INSERT INTO `tb_opt` VALUES ('11593', '19', '11579', '滦县', '滦县', '70');
INSERT INTO `tb_opt` VALUES ('11594', '19', '11450', '沧州市', '沧州市', '45');
INSERT INTO `tb_opt` VALUES ('11595', '19', '11594', '沧县', '沧县', '5');
INSERT INTO `tb_opt` VALUES ('11596', '19', '11594', '泊头市', '泊头市', '10');
INSERT INTO `tb_opt` VALUES ('11597', '19', '11594', '河间市', '河间市', '15');
INSERT INTO `tb_opt` VALUES ('11598', '19', '11594', '献县', '献县', '20');
INSERT INTO `tb_opt` VALUES ('11599', '19', '11594', '肃宁县', '肃宁县', '25');
INSERT INTO `tb_opt` VALUES ('11600', '19', '11594', '青县', '青县', '30');
INSERT INTO `tb_opt` VALUES ('11601', '19', '11594', '东光县', '东光县', '35');
INSERT INTO `tb_opt` VALUES ('11602', '19', '11594', '吴桥县', '吴桥县', '40');
INSERT INTO `tb_opt` VALUES ('11603', '19', '11594', '南皮县', '南皮县', '45');
INSERT INTO `tb_opt` VALUES ('11604', '19', '11594', '盐山县', '盐山县', '50');
INSERT INTO `tb_opt` VALUES ('11605', '19', '11594', '海兴县', '海兴县', '55');
INSERT INTO `tb_opt` VALUES ('11606', '19', '11594', '孟村县', '孟村县', '60');
INSERT INTO `tb_opt` VALUES ('11607', '19', '11594', '运河区', '运河区', '65');
INSERT INTO `tb_opt` VALUES ('11608', '19', '11594', '新华区', '新华区', '70');
INSERT INTO `tb_opt` VALUES ('11609', '19', '11594', '任丘市', '任丘市', '75');
INSERT INTO `tb_opt` VALUES ('11610', '19', '11594', '黄骅市', '黄骅市', '80');
INSERT INTO `tb_opt` VALUES ('11611', '19', '11450', '廊坊市', '廊坊市', '50');
INSERT INTO `tb_opt` VALUES ('11612', '19', '11611', '三河市', '三河市', '5');
INSERT INTO `tb_opt` VALUES ('11613', '19', '11611', '广阳区', '广阳区', '10');
INSERT INTO `tb_opt` VALUES ('11614', '19', '11611', '开发区', '开发区', '15');
INSERT INTO `tb_opt` VALUES ('11615', '19', '11611', '固安县', '固安县', '20');
INSERT INTO `tb_opt` VALUES ('11616', '19', '11611', '安次区', '安次区', '25');
INSERT INTO `tb_opt` VALUES ('11617', '19', '11611', '永清县', '永清县', '30');
INSERT INTO `tb_opt` VALUES ('11618', '19', '11611', '香河县', '香河县', '35');
INSERT INTO `tb_opt` VALUES ('11619', '19', '11611', '大城县', '大城县', '40');
INSERT INTO `tb_opt` VALUES ('11620', '19', '11611', '文安县', '文安县', '45');
INSERT INTO `tb_opt` VALUES ('11621', '19', '11611', '大厂县', '大厂县', '50');
INSERT INTO `tb_opt` VALUES ('11622', '19', '11611', '霸州市', '霸州市', '55');
INSERT INTO `tb_opt` VALUES ('11623', '19', '11450', '衡水市', '衡水市', '55');
INSERT INTO `tb_opt` VALUES ('11624', '19', '11623', '冀州市', '冀州市', '5');
INSERT INTO `tb_opt` VALUES ('11625', '19', '11623', '深州市', '深州市', '10');
INSERT INTO `tb_opt` VALUES ('11626', '19', '11623', '饶阳县', '饶阳县', '15');
INSERT INTO `tb_opt` VALUES ('11627', '19', '11623', '枣强县', '枣强县', '20');
INSERT INTO `tb_opt` VALUES ('11628', '19', '11623', '桃城区', '桃城区', '25');
INSERT INTO `tb_opt` VALUES ('11629', '19', '11623', '故城县', '故城县', '30');
INSERT INTO `tb_opt` VALUES ('11630', '19', '11623', '阜城县', '阜城县', '35');
INSERT INTO `tb_opt` VALUES ('11631', '19', '11623', '安平县', '安平县', '40');
INSERT INTO `tb_opt` VALUES ('11632', '19', '11623', '武邑县', '武邑县', '45');
INSERT INTO `tb_opt` VALUES ('11633', '19', '11623', '景县', '景县', '50');
INSERT INTO `tb_opt` VALUES ('11634', '19', '11623', '武强县', '武强县', '55');
INSERT INTO `tb_opt` VALUES ('11635', '19', '0', '山西省', '山西省', '30');
INSERT INTO `tb_opt` VALUES ('11636', '19', '11635', '太原市', '太原市', '5');
INSERT INTO `tb_opt` VALUES ('11637', '19', '11636', '小店区', '小店区', '5');
INSERT INTO `tb_opt` VALUES ('11638', '19', '11636', '迎泽区', '迎泽区', '10');
INSERT INTO `tb_opt` VALUES ('11639', '19', '11636', '晋源区', '晋源区', '15');
INSERT INTO `tb_opt` VALUES ('11640', '19', '11636', '万柏林区', '万柏林区', '20');
INSERT INTO `tb_opt` VALUES ('11641', '19', '11636', '尖草坪区', '尖草坪区', '25');
INSERT INTO `tb_opt` VALUES ('11642', '19', '11636', '杏花岭区', '杏花岭区', '30');
INSERT INTO `tb_opt` VALUES ('11643', '19', '11636', '古交市', '古交市', '35');
INSERT INTO `tb_opt` VALUES ('11644', '19', '11636', '阳曲县', '阳曲县', '40');
INSERT INTO `tb_opt` VALUES ('11645', '19', '11636', '娄烦县', '娄烦县', '45');
INSERT INTO `tb_opt` VALUES ('11646', '19', '11636', '清徐县', '清徐县', '50');
INSERT INTO `tb_opt` VALUES ('11647', '19', '11635', '大同市', '大同市', '10');
INSERT INTO `tb_opt` VALUES ('11648', '19', '11647', '大同县', '大同县', '5');
INSERT INTO `tb_opt` VALUES ('11649', '19', '11647', '天镇县', '天镇县', '10');
INSERT INTO `tb_opt` VALUES ('11650', '19', '11647', '灵丘县', '灵丘县', '15');
INSERT INTO `tb_opt` VALUES ('11651', '19', '11647', '阳高县', '阳高县', '20');
INSERT INTO `tb_opt` VALUES ('11652', '19', '11647', '左云县', '左云县', '25');
INSERT INTO `tb_opt` VALUES ('11653', '19', '11647', '浑源县', '浑源县', '30');
INSERT INTO `tb_opt` VALUES ('11654', '19', '11647', '广灵县', '广灵县', '35');
INSERT INTO `tb_opt` VALUES ('11655', '19', '11647', '城区', '城区', '40');
INSERT INTO `tb_opt` VALUES ('11656', '19', '11647', '新荣区', '新荣区', '45');
INSERT INTO `tb_opt` VALUES ('11657', '19', '11647', '南郊区', '南郊区', '50');
INSERT INTO `tb_opt` VALUES ('11658', '19', '11647', '矿区', '矿区', '55');
INSERT INTO `tb_opt` VALUES ('11659', '19', '11635', '阳泉市', '阳泉市', '15');
INSERT INTO `tb_opt` VALUES ('11660', '19', '11659', '盂县', '盂县', '5');
INSERT INTO `tb_opt` VALUES ('11661', '19', '11659', '平定县', '平定县', '10');
INSERT INTO `tb_opt` VALUES ('11662', '19', '11659', '郊区', '郊区', '15');
INSERT INTO `tb_opt` VALUES ('11663', '19', '11659', '城区', '城区', '20');
INSERT INTO `tb_opt` VALUES ('11664', '19', '11659', '矿区', '矿区', '25');
INSERT INTO `tb_opt` VALUES ('11665', '19', '11635', '晋城市', '晋城市', '20');
INSERT INTO `tb_opt` VALUES ('11666', '19', '11665', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('11667', '19', '11665', '高平市', '高平市', '10');
INSERT INTO `tb_opt` VALUES ('11668', '19', '11665', '阳城县', '阳城县', '15');
INSERT INTO `tb_opt` VALUES ('11669', '19', '11665', '沁水县', '沁水县', '20');
INSERT INTO `tb_opt` VALUES ('11670', '19', '11665', '陵川县', '陵川县', '25');
INSERT INTO `tb_opt` VALUES ('11671', '19', '11665', '泽州县', '泽州县', '30');
INSERT INTO `tb_opt` VALUES ('11672', '19', '11635', '朔州市', '朔州市', '25');
INSERT INTO `tb_opt` VALUES ('11673', '19', '11672', '平鲁区', '平鲁区', '5');
INSERT INTO `tb_opt` VALUES ('11674', '19', '11672', '山阴县', '山阴县', '10');
INSERT INTO `tb_opt` VALUES ('11675', '19', '11672', '右玉县', '右玉县', '15');
INSERT INTO `tb_opt` VALUES ('11676', '19', '11672', '应县', '应县', '20');
INSERT INTO `tb_opt` VALUES ('11677', '19', '11672', '怀仁县', '怀仁县', '25');
INSERT INTO `tb_opt` VALUES ('11678', '19', '11672', '朔城区', '朔城区', '30');
INSERT INTO `tb_opt` VALUES ('11679', '19', '11635', '晋中市', '晋中市', '30');
INSERT INTO `tb_opt` VALUES ('11680', '19', '11679', '介休市', '介休市', '5');
INSERT INTO `tb_opt` VALUES ('11681', '19', '11679', '昔阳县', '昔阳县', '10');
INSERT INTO `tb_opt` VALUES ('11682', '19', '11679', '祁县', '祁县', '15');
INSERT INTO `tb_opt` VALUES ('11683', '19', '11679', '左权县', '左权县', '20');
INSERT INTO `tb_opt` VALUES ('11684', '19', '11679', '寿阳县', '寿阳县', '25');
INSERT INTO `tb_opt` VALUES ('11685', '19', '11679', '太谷县', '太谷县', '30');
INSERT INTO `tb_opt` VALUES ('11686', '19', '11679', '和顺县', '和顺县', '35');
INSERT INTO `tb_opt` VALUES ('11687', '19', '11679', '灵石县', '灵石县', '40');
INSERT INTO `tb_opt` VALUES ('11688', '19', '11679', '平遥县', '平遥县', '45');
INSERT INTO `tb_opt` VALUES ('11689', '19', '11679', '榆社县', '榆社县', '50');
INSERT INTO `tb_opt` VALUES ('11690', '19', '11679', '榆次区', '榆次区', '55');
INSERT INTO `tb_opt` VALUES ('11691', '19', '11635', '忻州市', '忻州市', '35');
INSERT INTO `tb_opt` VALUES ('11692', '19', '11691', '原平市', '原平市', '5');
INSERT INTO `tb_opt` VALUES ('11693', '19', '11691', '代县', '代县', '10');
INSERT INTO `tb_opt` VALUES ('11694', '19', '11691', '神池县', '神池县', '15');
INSERT INTO `tb_opt` VALUES ('11695', '19', '11691', '五寨县', '五寨县', '20');
INSERT INTO `tb_opt` VALUES ('11696', '19', '11691', '五台县', '五台县', '25');
INSERT INTO `tb_opt` VALUES ('11697', '19', '11691', '偏关县', '偏关县', '30');
INSERT INTO `tb_opt` VALUES ('11698', '19', '11691', '宁武县', '宁武县', '35');
INSERT INTO `tb_opt` VALUES ('11699', '19', '11691', '静乐县', '静乐县', '40');
INSERT INTO `tb_opt` VALUES ('11700', '19', '11691', '繁峙县', '繁峙县', '45');
INSERT INTO `tb_opt` VALUES ('11701', '19', '11691', '河曲县', '河曲县', '50');
INSERT INTO `tb_opt` VALUES ('11702', '19', '11691', '保德县', '保德县', '55');
INSERT INTO `tb_opt` VALUES ('11703', '19', '11691', '定襄县', '定襄县', '60');
INSERT INTO `tb_opt` VALUES ('11704', '19', '11691', '忻府区', '忻府区', '65');
INSERT INTO `tb_opt` VALUES ('11705', '19', '11691', '岢岚县', '岢岚县', '70');
INSERT INTO `tb_opt` VALUES ('11706', '19', '11635', '吕梁市', '吕梁市', '40');
INSERT INTO `tb_opt` VALUES ('11707', '19', '11706', '离石区', '离石区', '5');
INSERT INTO `tb_opt` VALUES ('11708', '19', '11706', '孝义市', '孝义市', '10');
INSERT INTO `tb_opt` VALUES ('11709', '19', '11706', '汾阳市', '汾阳市', '15');
INSERT INTO `tb_opt` VALUES ('11710', '19', '11706', '文水县', '文水县', '20');
INSERT INTO `tb_opt` VALUES ('11711', '19', '11706', '中阳县', '中阳县', '25');
INSERT INTO `tb_opt` VALUES ('11712', '19', '11706', '兴县', '兴县', '30');
INSERT INTO `tb_opt` VALUES ('11713', '19', '11706', '临县', '临县', '35');
INSERT INTO `tb_opt` VALUES ('11714', '19', '11706', '方山县', '方山县', '40');
INSERT INTO `tb_opt` VALUES ('11715', '19', '11706', '柳林县', '柳林县', '45');
INSERT INTO `tb_opt` VALUES ('11716', '19', '11706', '岚县', '岚县', '50');
INSERT INTO `tb_opt` VALUES ('11717', '19', '11706', '交口县', '交口县', '55');
INSERT INTO `tb_opt` VALUES ('11718', '19', '11706', '交城县', '交城县', '60');
INSERT INTO `tb_opt` VALUES ('11719', '19', '11706', '石楼县', '石楼县', '65');
INSERT INTO `tb_opt` VALUES ('11720', '19', '11635', '临汾市', '临汾市', '45');
INSERT INTO `tb_opt` VALUES ('11721', '19', '11720', '曲沃县', '曲沃县', '5');
INSERT INTO `tb_opt` VALUES ('11722', '19', '11720', '侯马市', '侯马市', '10');
INSERT INTO `tb_opt` VALUES ('11723', '19', '11720', '霍州市', '霍州市', '15');
INSERT INTO `tb_opt` VALUES ('11724', '19', '11720', '汾西县', '汾西县', '20');
INSERT INTO `tb_opt` VALUES ('11725', '19', '11720', '吉县', '吉县', '25');
INSERT INTO `tb_opt` VALUES ('11726', '19', '11720', '安泽县', '安泽县', '30');
INSERT INTO `tb_opt` VALUES ('11727', '19', '11720', '浮山县', '浮山县', '35');
INSERT INTO `tb_opt` VALUES ('11728', '19', '11720', '大宁县', '大宁县', '40');
INSERT INTO `tb_opt` VALUES ('11729', '19', '11720', '古县', '古县', '45');
INSERT INTO `tb_opt` VALUES ('11730', '19', '11720', '隰县', '隰县', '50');
INSERT INTO `tb_opt` VALUES ('11731', '19', '11720', '襄汾县', '襄汾县', '55');
INSERT INTO `tb_opt` VALUES ('11732', '19', '11720', '翼城县', '翼城县', '60');
INSERT INTO `tb_opt` VALUES ('11733', '19', '11720', '永和县', '永和县', '65');
INSERT INTO `tb_opt` VALUES ('11734', '19', '11720', '乡宁县', '乡宁县', '70');
INSERT INTO `tb_opt` VALUES ('11735', '19', '11720', '洪洞县', '洪洞县', '75');
INSERT INTO `tb_opt` VALUES ('11736', '19', '11720', '蒲县', '蒲县', '80');
INSERT INTO `tb_opt` VALUES ('11737', '19', '11720', '尧都区', '尧都区', '85');
INSERT INTO `tb_opt` VALUES ('11738', '19', '11635', '运城市', '运城市', '50');
INSERT INTO `tb_opt` VALUES ('11739', '19', '11738', '盐湖区', '盐湖区', '5');
INSERT INTO `tb_opt` VALUES ('11740', '19', '11738', '河津市', '河津市', '10');
INSERT INTO `tb_opt` VALUES ('11741', '19', '11738', '永济市', '永济市', '15');
INSERT INTO `tb_opt` VALUES ('11742', '19', '11738', '新绛县', '新绛县', '20');
INSERT INTO `tb_opt` VALUES ('11743', '19', '11738', '平陆县', '平陆县', '25');
INSERT INTO `tb_opt` VALUES ('11744', '19', '11738', '垣曲县', '垣曲县', '30');
INSERT INTO `tb_opt` VALUES ('11745', '19', '11738', '绛县', '绛县', '35');
INSERT INTO `tb_opt` VALUES ('11746', '19', '11738', '稷山县', '稷山县', '40');
INSERT INTO `tb_opt` VALUES ('11747', '19', '11738', '芮城县', '芮城县', '45');
INSERT INTO `tb_opt` VALUES ('11748', '19', '11738', '夏县', '夏县', '50');
INSERT INTO `tb_opt` VALUES ('11749', '19', '11738', '临猗县', '临猗县', '55');
INSERT INTO `tb_opt` VALUES ('11750', '19', '11738', '万荣县', '万荣县', '60');
INSERT INTO `tb_opt` VALUES ('11751', '19', '11738', '闻喜县', '闻喜县', '65');
INSERT INTO `tb_opt` VALUES ('11752', '19', '11635', '长治市', '长治市', '55');
INSERT INTO `tb_opt` VALUES ('11753', '19', '11752', '长治县', '长治县', '5');
INSERT INTO `tb_opt` VALUES ('11754', '19', '11752', '潞城市', '潞城市', '10');
INSERT INTO `tb_opt` VALUES ('11755', '19', '11752', '郊区', '郊区', '15');
INSERT INTO `tb_opt` VALUES ('11756', '19', '11752', '襄垣县', '襄垣县', '20');
INSERT INTO `tb_opt` VALUES ('11757', '19', '11752', '屯留县', '屯留县', '25');
INSERT INTO `tb_opt` VALUES ('11758', '19', '11752', '平顺县', '平顺县', '30');
INSERT INTO `tb_opt` VALUES ('11759', '19', '11752', '黎城县', '黎城县', '35');
INSERT INTO `tb_opt` VALUES ('11760', '19', '11752', '壶关县', '壶关县', '40');
INSERT INTO `tb_opt` VALUES ('11761', '19', '11752', '长子县', '长子县', '45');
INSERT INTO `tb_opt` VALUES ('11762', '19', '11752', '武乡县', '武乡县', '50');
INSERT INTO `tb_opt` VALUES ('11763', '19', '11752', '沁县', '沁县', '55');
INSERT INTO `tb_opt` VALUES ('11764', '19', '11752', '沁源县', '沁源县', '60');
INSERT INTO `tb_opt` VALUES ('11765', '19', '11752', '城区', '城区', '65');
INSERT INTO `tb_opt` VALUES ('11766', '19', '0', '河南省', '河南省', '35');
INSERT INTO `tb_opt` VALUES ('11767', '19', '11766', '郑州市', '郑州市', '5');
INSERT INTO `tb_opt` VALUES ('11768', '19', '11767', '二七区', '二七区', '5');
INSERT INTO `tb_opt` VALUES ('11769', '19', '11767', '中原区', '中原区', '10');
INSERT INTO `tb_opt` VALUES ('11770', '19', '11767', '郑东新区', '郑东新区', '15');
INSERT INTO `tb_opt` VALUES ('11771', '19', '11767', '管城区', '管城区', '20');
INSERT INTO `tb_opt` VALUES ('11772', '19', '11767', '金水区', '金水区', '25');
INSERT INTO `tb_opt` VALUES ('11773', '19', '11767', '经济开发区', '经济开发区', '30');
INSERT INTO `tb_opt` VALUES ('11774', '19', '11767', '高新技术开发区', '高新技术开发区', '35');
INSERT INTO `tb_opt` VALUES ('11775', '19', '11767', '新郑市', '新郑市', '40');
INSERT INTO `tb_opt` VALUES ('11776', '19', '11767', '巩义市', '巩义市', '45');
INSERT INTO `tb_opt` VALUES ('11777', '19', '11767', '荥阳市', '荥阳市', '50');
INSERT INTO `tb_opt` VALUES ('11778', '19', '11767', '中牟县', '中牟县', '55');
INSERT INTO `tb_opt` VALUES ('11779', '19', '11767', '新密市', '新密市', '60');
INSERT INTO `tb_opt` VALUES ('11780', '19', '11767', '登封市', '登封市', '65');
INSERT INTO `tb_opt` VALUES ('11781', '19', '11767', '惠济区', '惠济区', '70');
INSERT INTO `tb_opt` VALUES ('11782', '19', '11767', '上街区', '上街区', '75');
INSERT INTO `tb_opt` VALUES ('11783', '19', '11766', '开封市', '开封市', '10');
INSERT INTO `tb_opt` VALUES ('11784', '19', '11783', '金明区', '金明区', '5');
INSERT INTO `tb_opt` VALUES ('11785', '19', '11783', '龙亭区', '龙亭区', '10');
INSERT INTO `tb_opt` VALUES ('11786', '19', '11783', '顺河区', '顺河区', '15');
INSERT INTO `tb_opt` VALUES ('11787', '19', '11783', '鼓楼区', '鼓楼区', '20');
INSERT INTO `tb_opt` VALUES ('11788', '19', '11783', '禹王台区', '禹王台区', '25');
INSERT INTO `tb_opt` VALUES ('11789', '19', '11783', '通许县', '通许县', '30');
INSERT INTO `tb_opt` VALUES ('11790', '19', '11783', '开封县', '开封县', '35');
INSERT INTO `tb_opt` VALUES ('11791', '19', '11783', '杞县', '杞县', '40');
INSERT INTO `tb_opt` VALUES ('11792', '19', '11783', '兰考县', '兰考县', '45');
INSERT INTO `tb_opt` VALUES ('11793', '19', '11783', '尉氏县', '尉氏县', '50');
INSERT INTO `tb_opt` VALUES ('11794', '19', '11766', '洛阳市', '洛阳市', '15');
INSERT INTO `tb_opt` VALUES ('11795', '19', '11794', '涧西区', '涧西区', '5');
INSERT INTO `tb_opt` VALUES ('11796', '19', '11794', '西工区', '西工区', '10');
INSERT INTO `tb_opt` VALUES ('11797', '19', '11794', '洛龙区', '洛龙区', '15');
INSERT INTO `tb_opt` VALUES ('11798', '19', '11794', '嵩县', '嵩县', '20');
INSERT INTO `tb_opt` VALUES ('11799', '19', '11794', '偃师市', '偃师市', '25');
INSERT INTO `tb_opt` VALUES ('11800', '19', '11794', '孟津县', '孟津县', '30');
INSERT INTO `tb_opt` VALUES ('11801', '19', '11794', '汝阳县', '汝阳县', '35');
INSERT INTO `tb_opt` VALUES ('11802', '19', '11794', '伊川县', '伊川县', '40');
INSERT INTO `tb_opt` VALUES ('11803', '19', '11794', '洛宁县', '洛宁县', '45');
INSERT INTO `tb_opt` VALUES ('11804', '19', '11794', '宜阳县', '宜阳县', '50');
INSERT INTO `tb_opt` VALUES ('11805', '19', '11794', '栾川县', '栾川县', '55');
INSERT INTO `tb_opt` VALUES ('11806', '19', '11794', '新安县', '新安县', '60');
INSERT INTO `tb_opt` VALUES ('11807', '19', '11794', '伊滨区', '伊滨区', '65');
INSERT INTO `tb_opt` VALUES ('11808', '19', '11794', '吉利区', '吉利区', '70');
INSERT INTO `tb_opt` VALUES ('11809', '19', '11794', '瀍河区', '瀍河区', '75');
INSERT INTO `tb_opt` VALUES ('11810', '19', '11794', '老城区', '老城区', '80');
INSERT INTO `tb_opt` VALUES ('11811', '19', '11766', '平顶山市', '平顶山市', '20');
INSERT INTO `tb_opt` VALUES ('11812', '19', '11811', '湛河区', '湛河区', '5');
INSERT INTO `tb_opt` VALUES ('11813', '19', '11811', '卫东区', '卫东区', '10');
INSERT INTO `tb_opt` VALUES ('11814', '19', '11811', '新华区', '新华区', '15');
INSERT INTO `tb_opt` VALUES ('11815', '19', '11811', '汝州市', '汝州市', '20');
INSERT INTO `tb_opt` VALUES ('11816', '19', '11811', '舞钢市', '舞钢市', '25');
INSERT INTO `tb_opt` VALUES ('11817', '19', '11811', '郏县', '郏县', '30');
INSERT INTO `tb_opt` VALUES ('11818', '19', '11811', '叶县', '叶县', '35');
INSERT INTO `tb_opt` VALUES ('11819', '19', '11811', '鲁山县', '鲁山县', '40');
INSERT INTO `tb_opt` VALUES ('11820', '19', '11811', '宝丰县', '宝丰县', '45');
INSERT INTO `tb_opt` VALUES ('11821', '19', '11811', '石龙区', '石龙区', '50');
INSERT INTO `tb_opt` VALUES ('11822', '19', '11766', '焦作市', '焦作市', '25');
INSERT INTO `tb_opt` VALUES ('11823', '19', '11822', '沁阳市', '沁阳市', '5');
INSERT INTO `tb_opt` VALUES ('11824', '19', '11822', '孟州市', '孟州市', '10');
INSERT INTO `tb_opt` VALUES ('11825', '19', '11822', '修武县', '修武县', '15');
INSERT INTO `tb_opt` VALUES ('11826', '19', '11822', '温县', '温县', '20');
INSERT INTO `tb_opt` VALUES ('11827', '19', '11822', '武陟县', '武陟县', '25');
INSERT INTO `tb_opt` VALUES ('11828', '19', '11822', '博爱县', '博爱县', '30');
INSERT INTO `tb_opt` VALUES ('11829', '19', '11822', '山阳区', '山阳区', '35');
INSERT INTO `tb_opt` VALUES ('11830', '19', '11822', '解放区', '解放区', '40');
INSERT INTO `tb_opt` VALUES ('11831', '19', '11822', '马村区', '马村区', '45');
INSERT INTO `tb_opt` VALUES ('11832', '19', '11822', '中站区', '中站区', '50');
INSERT INTO `tb_opt` VALUES ('11833', '19', '11766', '鹤壁市', '鹤壁市', '30');
INSERT INTO `tb_opt` VALUES ('11834', '19', '11833', '淇滨区', '淇滨区', '5');
INSERT INTO `tb_opt` VALUES ('11835', '19', '11833', '浚县', '浚县', '10');
INSERT INTO `tb_opt` VALUES ('11836', '19', '11833', '淇县', '淇县', '15');
INSERT INTO `tb_opt` VALUES ('11837', '19', '11833', '鹤山区', '鹤山区', '20');
INSERT INTO `tb_opt` VALUES ('11838', '19', '11833', '山城区', '山城区', '25');
INSERT INTO `tb_opt` VALUES ('11839', '19', '11766', '新乡市', '新乡市', '35');
INSERT INTO `tb_opt` VALUES ('11840', '19', '11839', '牧野区', '牧野区', '5');
INSERT INTO `tb_opt` VALUES ('11841', '19', '11839', '红旗区', '红旗区', '10');
INSERT INTO `tb_opt` VALUES ('11842', '19', '11839', '卫滨区', '卫滨区', '15');
INSERT INTO `tb_opt` VALUES ('11843', '19', '11839', '卫辉市', '卫辉市', '20');
INSERT INTO `tb_opt` VALUES ('11844', '19', '11839', '辉县市', '辉县市', '25');
INSERT INTO `tb_opt` VALUES ('11845', '19', '11839', '新乡县', '新乡县', '30');
INSERT INTO `tb_opt` VALUES ('11846', '19', '11839', '获嘉县', '获嘉县', '35');
INSERT INTO `tb_opt` VALUES ('11847', '19', '11839', '原阳县', '原阳县', '40');
INSERT INTO `tb_opt` VALUES ('11848', '19', '11839', '长垣县', '长垣县', '45');
INSERT INTO `tb_opt` VALUES ('11849', '19', '11839', '延津县', '延津县', '50');
INSERT INTO `tb_opt` VALUES ('11850', '19', '11839', '封丘县', '封丘县', '55');
INSERT INTO `tb_opt` VALUES ('11851', '19', '11839', '凤泉区', '凤泉区', '60');
INSERT INTO `tb_opt` VALUES ('11852', '19', '11766', '安阳市', '安阳市', '40');
INSERT INTO `tb_opt` VALUES ('11853', '19', '11852', '龙安区', '龙安区', '5');
INSERT INTO `tb_opt` VALUES ('11854', '19', '11852', '殷都区', '殷都区', '10');
INSERT INTO `tb_opt` VALUES ('11855', '19', '11852', '文峰区', '文峰区', '15');
INSERT INTO `tb_opt` VALUES ('11856', '19', '11852', '开发区', '开发区', '20');
INSERT INTO `tb_opt` VALUES ('11857', '19', '11852', '北关区', '北关区', '25');
INSERT INTO `tb_opt` VALUES ('11858', '19', '11852', '林州市', '林州市', '30');
INSERT INTO `tb_opt` VALUES ('11859', '19', '11852', '安阳县', '安阳县', '35');
INSERT INTO `tb_opt` VALUES ('11860', '19', '11852', '滑县', '滑县', '40');
INSERT INTO `tb_opt` VALUES ('11861', '19', '11852', '汤阴县', '汤阴县', '45');
INSERT INTO `tb_opt` VALUES ('11862', '19', '11852', '内黄县', '内黄县', '50');
INSERT INTO `tb_opt` VALUES ('11863', '19', '11766', '濮阳市', '濮阳市', '45');
INSERT INTO `tb_opt` VALUES ('11864', '19', '11863', '濮阳县', '濮阳县', '5');
INSERT INTO `tb_opt` VALUES ('11865', '19', '11863', '南乐县', '南乐县', '10');
INSERT INTO `tb_opt` VALUES ('11866', '19', '11863', '台前县', '台前县', '15');
INSERT INTO `tb_opt` VALUES ('11867', '19', '11863', '清丰县', '清丰县', '20');
INSERT INTO `tb_opt` VALUES ('11868', '19', '11863', '范县', '范县', '25');
INSERT INTO `tb_opt` VALUES ('11869', '19', '11863', '华龙区', '华龙区', '30');
INSERT INTO `tb_opt` VALUES ('11870', '19', '11766', '许昌市', '许昌市', '50');
INSERT INTO `tb_opt` VALUES ('11871', '19', '11870', '魏都区', '魏都区', '5');
INSERT INTO `tb_opt` VALUES ('11872', '19', '11870', '禹州市', '禹州市', '10');
INSERT INTO `tb_opt` VALUES ('11873', '19', '11870', '长葛市', '长葛市', '15');
INSERT INTO `tb_opt` VALUES ('11874', '19', '11870', '许昌县', '许昌县', '20');
INSERT INTO `tb_opt` VALUES ('11875', '19', '11870', '鄢陵县', '鄢陵县', '25');
INSERT INTO `tb_opt` VALUES ('11876', '19', '11870', '襄城县', '襄城县', '30');
INSERT INTO `tb_opt` VALUES ('11877', '19', '11766', '漯河市', '漯河市', '55');
INSERT INTO `tb_opt` VALUES ('11878', '19', '11877', '郾城区', '郾城区', '5');
INSERT INTO `tb_opt` VALUES ('11879', '19', '11877', '临颍县', '临颍县', '10');
INSERT INTO `tb_opt` VALUES ('11880', '19', '11877', '召陵区', '召陵区', '15');
INSERT INTO `tb_opt` VALUES ('11881', '19', '11877', '舞阳县', '舞阳县', '20');
INSERT INTO `tb_opt` VALUES ('11882', '19', '11877', '源汇区', '源汇区', '25');
INSERT INTO `tb_opt` VALUES ('11883', '19', '11766', '三门峡市', '三门峡市', '60');
INSERT INTO `tb_opt` VALUES ('11884', '19', '11883', '渑池县', '渑池县', '5');
INSERT INTO `tb_opt` VALUES ('11885', '19', '11883', '湖滨区', '湖滨区', '10');
INSERT INTO `tb_opt` VALUES ('11886', '19', '11883', '义马市', '义马市', '15');
INSERT INTO `tb_opt` VALUES ('11887', '19', '11883', '灵宝市', '灵宝市', '20');
INSERT INTO `tb_opt` VALUES ('11888', '19', '11883', '陕县', '陕县', '25');
INSERT INTO `tb_opt` VALUES ('11889', '19', '11883', '卢氏县', '卢氏县', '30');
INSERT INTO `tb_opt` VALUES ('11890', '19', '11766', '南阳市', '南阳市', '65');
INSERT INTO `tb_opt` VALUES ('11891', '19', '11890', '社旗县', '社旗县', '5');
INSERT INTO `tb_opt` VALUES ('11892', '19', '11890', '西峡县', '西峡县', '10');
INSERT INTO `tb_opt` VALUES ('11893', '19', '11890', '卧龙区', '卧龙区', '15');
INSERT INTO `tb_opt` VALUES ('11894', '19', '11890', '宛城区', '宛城区', '20');
INSERT INTO `tb_opt` VALUES ('11895', '19', '11890', '邓州市', '邓州市', '25');
INSERT INTO `tb_opt` VALUES ('11896', '19', '11890', '桐柏县', '桐柏县', '30');
INSERT INTO `tb_opt` VALUES ('11897', '19', '11890', '方城县', '方城县', '35');
INSERT INTO `tb_opt` VALUES ('11898', '19', '11890', '淅川县', '淅川县', '40');
INSERT INTO `tb_opt` VALUES ('11899', '19', '11890', '镇平县', '镇平县', '45');
INSERT INTO `tb_opt` VALUES ('11900', '19', '11890', '唐河县', '唐河县', '50');
INSERT INTO `tb_opt` VALUES ('11901', '19', '11890', '南召县', '南召县', '55');
INSERT INTO `tb_opt` VALUES ('11902', '19', '11890', '内乡县', '内乡县', '60');
INSERT INTO `tb_opt` VALUES ('11903', '19', '11890', '新野县', '新野县', '65');
INSERT INTO `tb_opt` VALUES ('11904', '19', '11766', '商丘市', '商丘市', '70');
INSERT INTO `tb_opt` VALUES ('11905', '19', '11904', '永城市', '永城市', '5');
INSERT INTO `tb_opt` VALUES ('11906', '19', '11904', '宁陵县', '宁陵县', '10');
INSERT INTO `tb_opt` VALUES ('11907', '19', '11904', '虞城县', '虞城县', '15');
INSERT INTO `tb_opt` VALUES ('11908', '19', '11904', '民权县', '民权县', '20');
INSERT INTO `tb_opt` VALUES ('11909', '19', '11904', '夏邑县', '夏邑县', '25');
INSERT INTO `tb_opt` VALUES ('11910', '19', '11904', '柘城县', '柘城县', '30');
INSERT INTO `tb_opt` VALUES ('11911', '19', '11904', '睢县', '睢县', '35');
INSERT INTO `tb_opt` VALUES ('11912', '19', '11904', '睢阳区', '睢阳区', '40');
INSERT INTO `tb_opt` VALUES ('11913', '19', '11904', '梁园区', '梁园区', '45');
INSERT INTO `tb_opt` VALUES ('11914', '19', '11766', '周口市', '周口市', '75');
INSERT INTO `tb_opt` VALUES ('11915', '19', '11914', '项城市', '项城市', '5');
INSERT INTO `tb_opt` VALUES ('11916', '19', '11914', '商水县', '商水县', '10');
INSERT INTO `tb_opt` VALUES ('11917', '19', '11914', '淮阳县', '淮阳县', '15');
INSERT INTO `tb_opt` VALUES ('11918', '19', '11914', '太康县', '太康县', '20');
INSERT INTO `tb_opt` VALUES ('11919', '19', '11914', '鹿邑县', '鹿邑县', '25');
INSERT INTO `tb_opt` VALUES ('11920', '19', '11914', '西华县', '西华县', '30');
INSERT INTO `tb_opt` VALUES ('11921', '19', '11914', '扶沟县', '扶沟县', '35');
INSERT INTO `tb_opt` VALUES ('11922', '19', '11914', '沈丘县', '沈丘县', '40');
INSERT INTO `tb_opt` VALUES ('11923', '19', '11914', '郸城县', '郸城县', '45');
INSERT INTO `tb_opt` VALUES ('11924', '19', '11914', '川汇区', '川汇区', '50');
INSERT INTO `tb_opt` VALUES ('11925', '19', '11914', '东新区', '东新区', '55');
INSERT INTO `tb_opt` VALUES ('11926', '19', '11914', '经济开发区', '经济开发区', '60');
INSERT INTO `tb_opt` VALUES ('11927', '19', '11766', '驻马店市', '驻马店市', '80');
INSERT INTO `tb_opt` VALUES ('11928', '19', '11927', '确山县', '确山县', '5');
INSERT INTO `tb_opt` VALUES ('11929', '19', '11927', '新蔡县', '新蔡县', '10');
INSERT INTO `tb_opt` VALUES ('11930', '19', '11927', '上蔡县', '上蔡县', '15');
INSERT INTO `tb_opt` VALUES ('11931', '19', '11927', '泌阳县', '泌阳县', '20');
INSERT INTO `tb_opt` VALUES ('11932', '19', '11927', '西平县', '西平县', '25');
INSERT INTO `tb_opt` VALUES ('11933', '19', '11927', '遂平县', '遂平县', '30');
INSERT INTO `tb_opt` VALUES ('11934', '19', '11927', '汝南县', '汝南县', '35');
INSERT INTO `tb_opt` VALUES ('11935', '19', '11927', '平舆县', '平舆县', '40');
INSERT INTO `tb_opt` VALUES ('11936', '19', '11927', '正阳县', '正阳县', '45');
INSERT INTO `tb_opt` VALUES ('11937', '19', '11927', '驿城区', '驿城区', '50');
INSERT INTO `tb_opt` VALUES ('11938', '19', '11766', '信阳市', '信阳市', '85');
INSERT INTO `tb_opt` VALUES ('11939', '19', '11938', '潢川县', '潢川县', '5');
INSERT INTO `tb_opt` VALUES ('11940', '19', '11938', '淮滨县', '淮滨县', '10');
INSERT INTO `tb_opt` VALUES ('11941', '19', '11938', '息县', '息县', '15');
INSERT INTO `tb_opt` VALUES ('11942', '19', '11938', '新县', '新县', '20');
INSERT INTO `tb_opt` VALUES ('11943', '19', '11938', '固始县', '固始县', '25');
INSERT INTO `tb_opt` VALUES ('11944', '19', '11938', '罗山县', '罗山县', '30');
INSERT INTO `tb_opt` VALUES ('11945', '19', '11938', '光山县', '光山县', '35');
INSERT INTO `tb_opt` VALUES ('11946', '19', '11938', '商城县', '商城县', '40');
INSERT INTO `tb_opt` VALUES ('11947', '19', '11938', '平桥区', '平桥区', '45');
INSERT INTO `tb_opt` VALUES ('11948', '19', '11938', '浉河区', '浉河区', '50');
INSERT INTO `tb_opt` VALUES ('11949', '19', '11766', '济源市', '济源市', '90');
INSERT INTO `tb_opt` VALUES ('11950', '19', '11949', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('11951', '19', '11949', '五龙口镇', '五龙口镇', '10');
INSERT INTO `tb_opt` VALUES ('11952', '19', '11949', '下冶镇', '下冶镇', '15');
INSERT INTO `tb_opt` VALUES ('11953', '19', '11949', '轵城镇', '轵城镇', '20');
INSERT INTO `tb_opt` VALUES ('11954', '19', '11949', '王屋镇', '王屋镇', '25');
INSERT INTO `tb_opt` VALUES ('11955', '19', '11949', '思礼镇', '思礼镇', '30');
INSERT INTO `tb_opt` VALUES ('11956', '19', '11949', '邵原镇', '邵原镇', '35');
INSERT INTO `tb_opt` VALUES ('11957', '19', '11949', '坡头镇', '坡头镇', '40');
INSERT INTO `tb_opt` VALUES ('11958', '19', '11949', '梨林镇', '梨林镇', '45');
INSERT INTO `tb_opt` VALUES ('11959', '19', '11949', '克井镇', '克井镇', '50');
INSERT INTO `tb_opt` VALUES ('11960', '19', '11949', '大峪镇', '大峪镇', '55');
INSERT INTO `tb_opt` VALUES ('11961', '19', '11949', '承留镇', '承留镇', '60');
INSERT INTO `tb_opt` VALUES ('11962', '19', '0', '辽宁省', '辽宁省', '40');
INSERT INTO `tb_opt` VALUES ('11963', '19', '11962', '沈阳市', '沈阳市', '5');
INSERT INTO `tb_opt` VALUES ('11964', '19', '11963', '苏家屯区', '苏家屯区', '5');
INSERT INTO `tb_opt` VALUES ('11965', '19', '11963', '新民市', '新民市', '10');
INSERT INTO `tb_opt` VALUES ('11966', '19', '11963', '法库县', '法库县', '15');
INSERT INTO `tb_opt` VALUES ('11967', '19', '11963', '辽中县', '辽中县', '20');
INSERT INTO `tb_opt` VALUES ('11968', '19', '11963', '康平县', '康平县', '25');
INSERT INTO `tb_opt` VALUES ('11969', '19', '11963', '皇姑区', '皇姑区', '30');
INSERT INTO `tb_opt` VALUES ('11970', '19', '11963', '铁西区', '铁西区', '35');
INSERT INTO `tb_opt` VALUES ('11971', '19', '11963', '大东区', '大东区', '40');
INSERT INTO `tb_opt` VALUES ('11972', '19', '11963', '沈河区', '沈河区', '45');
INSERT INTO `tb_opt` VALUES ('11973', '19', '11963', '东陵区', '东陵区', '50');
INSERT INTO `tb_opt` VALUES ('11974', '19', '11963', '于洪区', '于洪区', '55');
INSERT INTO `tb_opt` VALUES ('11975', '19', '11963', '和平区', '和平区', '60');
INSERT INTO `tb_opt` VALUES ('11976', '19', '11963', '浑南新区', '浑南新区', '65');
INSERT INTO `tb_opt` VALUES ('11977', '19', '11963', '沈北新区', '沈北新区', '70');
INSERT INTO `tb_opt` VALUES ('11978', '19', '11962', '大连市', '大连市', '10');
INSERT INTO `tb_opt` VALUES ('11979', '19', '11978', '中山区', '中山区', '5');
INSERT INTO `tb_opt` VALUES ('11980', '19', '11978', '沙河口区', '沙河口区', '10');
INSERT INTO `tb_opt` VALUES ('11981', '19', '11978', '西岗区', '西岗区', '15');
INSERT INTO `tb_opt` VALUES ('11982', '19', '11978', '甘井子区', '甘井子区', '20');
INSERT INTO `tb_opt` VALUES ('11983', '19', '11978', '高新园区', '高新园区', '25');
INSERT INTO `tb_opt` VALUES ('11984', '19', '11978', '大连开发区', '大连开发区', '30');
INSERT INTO `tb_opt` VALUES ('11985', '19', '11978', '金州区', '金州区', '35');
INSERT INTO `tb_opt` VALUES ('11986', '19', '11978', '旅顺口区', '旅顺口区', '40');
INSERT INTO `tb_opt` VALUES ('11987', '19', '11978', '普兰店市', '普兰店市', '45');
INSERT INTO `tb_opt` VALUES ('11988', '19', '11978', '瓦房店市', '瓦房店市', '50');
INSERT INTO `tb_opt` VALUES ('11989', '19', '11978', '庄河市', '庄河市', '55');
INSERT INTO `tb_opt` VALUES ('11990', '19', '11978', '长海县', '长海县', '60');
INSERT INTO `tb_opt` VALUES ('11991', '19', '11962', '鞍山市', '鞍山市', '15');
INSERT INTO `tb_opt` VALUES ('11992', '19', '11991', '铁东区', '铁东区', '5');
INSERT INTO `tb_opt` VALUES ('11993', '19', '11991', '立山区', '立山区', '10');
INSERT INTO `tb_opt` VALUES ('11994', '19', '11991', '台安县', '台安县', '15');
INSERT INTO `tb_opt` VALUES ('11995', '19', '11991', '海城市', '海城市', '20');
INSERT INTO `tb_opt` VALUES ('11996', '19', '11991', '岫岩县', '岫岩县', '25');
INSERT INTO `tb_opt` VALUES ('11997', '19', '11991', '铁西区', '铁西区', '30');
INSERT INTO `tb_opt` VALUES ('11998', '19', '11991', '千山区', '千山区', '35');
INSERT INTO `tb_opt` VALUES ('11999', '19', '11962', '抚顺市', '抚顺市', '20');
INSERT INTO `tb_opt` VALUES ('12000', '19', '11999', '望花区', '望花区', '5');
INSERT INTO `tb_opt` VALUES ('12001', '19', '11999', '东洲区', '东洲区', '10');
INSERT INTO `tb_opt` VALUES ('12002', '19', '11999', '新抚区', '新抚区', '15');
INSERT INTO `tb_opt` VALUES ('12003', '19', '11999', '顺城区', '顺城区', '20');
INSERT INTO `tb_opt` VALUES ('12004', '19', '11999', '抚顺县', '抚顺县', '25');
INSERT INTO `tb_opt` VALUES ('12005', '19', '11999', '新宾县', '新宾县', '30');
INSERT INTO `tb_opt` VALUES ('12006', '19', '11999', '清原县', '清原县', '35');
INSERT INTO `tb_opt` VALUES ('12007', '19', '11962', '本溪市', '本溪市', '25');
INSERT INTO `tb_opt` VALUES ('12008', '19', '12007', '桓仁县', '桓仁县', '5');
INSERT INTO `tb_opt` VALUES ('12009', '19', '12007', '本溪县', '本溪县', '10');
INSERT INTO `tb_opt` VALUES ('12010', '19', '12007', '平山区', '平山区', '15');
INSERT INTO `tb_opt` VALUES ('12011', '19', '12007', '溪湖区', '溪湖区', '20');
INSERT INTO `tb_opt` VALUES ('12012', '19', '12007', '明山区', '明山区', '25');
INSERT INTO `tb_opt` VALUES ('12013', '19', '12007', '南芬区', '南芬区', '30');
INSERT INTO `tb_opt` VALUES ('12014', '19', '11962', '丹东市', '丹东市', '30');
INSERT INTO `tb_opt` VALUES ('12015', '19', '12014', '元宝区', '元宝区', '5');
INSERT INTO `tb_opt` VALUES ('12016', '19', '12014', '振兴区', '振兴区', '10');
INSERT INTO `tb_opt` VALUES ('12017', '19', '12014', '振安区', '振安区', '15');
INSERT INTO `tb_opt` VALUES ('12018', '19', '12014', '东港市', '东港市', '20');
INSERT INTO `tb_opt` VALUES ('12019', '19', '12014', '凤城市', '凤城市', '25');
INSERT INTO `tb_opt` VALUES ('12020', '19', '12014', '宽甸县', '宽甸县', '30');
INSERT INTO `tb_opt` VALUES ('12021', '19', '11962', '锦州市', '锦州市', '35');
INSERT INTO `tb_opt` VALUES ('12022', '19', '12021', '凌河区', '凌河区', '5');
INSERT INTO `tb_opt` VALUES ('12023', '19', '12021', '古塔区', '古塔区', '10');
INSERT INTO `tb_opt` VALUES ('12024', '19', '12021', '太和区', '太和区', '15');
INSERT INTO `tb_opt` VALUES ('12025', '19', '12021', '义县', '义县', '20');
INSERT INTO `tb_opt` VALUES ('12026', '19', '12021', '凌海市', '凌海市', '25');
INSERT INTO `tb_opt` VALUES ('12027', '19', '12021', '北镇市', '北镇市', '30');
INSERT INTO `tb_opt` VALUES ('12028', '19', '12021', '黑山县', '黑山县', '35');
INSERT INTO `tb_opt` VALUES ('12029', '19', '12021', '经济技术开发区', '经济技术开发区', '40');
INSERT INTO `tb_opt` VALUES ('12030', '19', '11962', '葫芦岛市', '葫芦岛市', '40');
INSERT INTO `tb_opt` VALUES ('12031', '19', '12030', '龙港区', '龙港区', '5');
INSERT INTO `tb_opt` VALUES ('12032', '19', '12030', '连山区', '连山区', '10');
INSERT INTO `tb_opt` VALUES ('12033', '19', '12030', '兴城市', '兴城市', '15');
INSERT INTO `tb_opt` VALUES ('12034', '19', '12030', '绥中县', '绥中县', '20');
INSERT INTO `tb_opt` VALUES ('12035', '19', '12030', '建昌县', '建昌县', '25');
INSERT INTO `tb_opt` VALUES ('12036', '19', '12030', '南票区', '南票区', '30');
INSERT INTO `tb_opt` VALUES ('12037', '19', '11962', '营口市', '营口市', '45');
INSERT INTO `tb_opt` VALUES ('12038', '19', '12037', '西市区', '西市区', '5');
INSERT INTO `tb_opt` VALUES ('12039', '19', '12037', '站前区', '站前区', '10');
INSERT INTO `tb_opt` VALUES ('12040', '19', '12037', '大石桥市', '大石桥市', '15');
INSERT INTO `tb_opt` VALUES ('12041', '19', '12037', '盖州市', '盖州市', '20');
INSERT INTO `tb_opt` VALUES ('12042', '19', '12037', '老边区', '老边区', '25');
INSERT INTO `tb_opt` VALUES ('12043', '19', '12037', '鲅鱼圈区', '鲅鱼圈区', '30');
INSERT INTO `tb_opt` VALUES ('12044', '19', '11962', '盘锦市', '盘锦市', '50');
INSERT INTO `tb_opt` VALUES ('12045', '19', '12044', '盘山县', '盘山县', '5');
INSERT INTO `tb_opt` VALUES ('12046', '19', '12044', '大洼县', '大洼县', '10');
INSERT INTO `tb_opt` VALUES ('12047', '19', '12044', '兴隆台区', '兴隆台区', '15');
INSERT INTO `tb_opt` VALUES ('12048', '19', '12044', '双台子区', '双台子区', '20');
INSERT INTO `tb_opt` VALUES ('12049', '19', '11962', '阜新市', '阜新市', '55');
INSERT INTO `tb_opt` VALUES ('12050', '19', '12049', '阜新县', '阜新县', '5');
INSERT INTO `tb_opt` VALUES ('12051', '19', '12049', '彰武县', '彰武县', '10');
INSERT INTO `tb_opt` VALUES ('12052', '19', '12049', '海州区', '海州区', '15');
INSERT INTO `tb_opt` VALUES ('12053', '19', '12049', '太平区', '太平区', '20');
INSERT INTO `tb_opt` VALUES ('12054', '19', '12049', '细河区', '细河区', '25');
INSERT INTO `tb_opt` VALUES ('12055', '19', '12049', '清河门区', '清河门区', '30');
INSERT INTO `tb_opt` VALUES ('12056', '19', '12049', '新邱区', '新邱区', '35');
INSERT INTO `tb_opt` VALUES ('12057', '19', '11962', '辽阳市', '辽阳市', '60');
INSERT INTO `tb_opt` VALUES ('12058', '19', '12057', '辽阳县', '辽阳县', '5');
INSERT INTO `tb_opt` VALUES ('12059', '19', '12057', '白塔区', '白塔区', '10');
INSERT INTO `tb_opt` VALUES ('12060', '19', '12057', '文圣区', '文圣区', '15');
INSERT INTO `tb_opt` VALUES ('12061', '19', '12057', '灯塔市', '灯塔市', '20');
INSERT INTO `tb_opt` VALUES ('12062', '19', '12057', '太子河区', '太子河区', '25');
INSERT INTO `tb_opt` VALUES ('12063', '19', '12057', '弓长岭区', '弓长岭区', '30');
INSERT INTO `tb_opt` VALUES ('12064', '19', '12057', '宏伟区', '宏伟区', '35');
INSERT INTO `tb_opt` VALUES ('12065', '19', '11962', '朝阳市', '朝阳市', '65');
INSERT INTO `tb_opt` VALUES ('12066', '19', '12065', '凌源市', '凌源市', '5');
INSERT INTO `tb_opt` VALUES ('12067', '19', '12065', '北票市', '北票市', '10');
INSERT INTO `tb_opt` VALUES ('12068', '19', '12065', '喀喇沁左翼县', '喀喇沁左翼县', '15');
INSERT INTO `tb_opt` VALUES ('12069', '19', '12065', '朝阳县', '朝阳县', '20');
INSERT INTO `tb_opt` VALUES ('12070', '19', '12065', '双塔区', '双塔区', '25');
INSERT INTO `tb_opt` VALUES ('12071', '19', '12065', '建平县', '建平县', '30');
INSERT INTO `tb_opt` VALUES ('12072', '19', '12065', '龙城区', '龙城区', '35');
INSERT INTO `tb_opt` VALUES ('12073', '19', '11962', '铁岭市', '铁岭市', '70');
INSERT INTO `tb_opt` VALUES ('12074', '19', '12073', '银州区', '银州区', '5');
INSERT INTO `tb_opt` VALUES ('12075', '19', '12073', '清河区', '清河区', '10');
INSERT INTO `tb_opt` VALUES ('12076', '19', '12073', '开原市', '开原市', '15');
INSERT INTO `tb_opt` VALUES ('12077', '19', '12073', '铁岭县', '铁岭县', '20');
INSERT INTO `tb_opt` VALUES ('12078', '19', '12073', '西丰县', '西丰县', '25');
INSERT INTO `tb_opt` VALUES ('12079', '19', '12073', '昌图县', '昌图县', '30');
INSERT INTO `tb_opt` VALUES ('12080', '19', '12073', '调兵山市', '调兵山市', '35');
INSERT INTO `tb_opt` VALUES ('12081', '19', '0', '吉林省', '吉林省', '45');
INSERT INTO `tb_opt` VALUES ('12082', '19', '12081', '长春市', '长春市', '5');
INSERT INTO `tb_opt` VALUES ('12083', '19', '12082', '德惠市', '德惠市', '5');
INSERT INTO `tb_opt` VALUES ('12084', '19', '12082', '榆树市', '榆树市', '10');
INSERT INTO `tb_opt` VALUES ('12085', '19', '12082', '九台市', '九台市', '15');
INSERT INTO `tb_opt` VALUES ('12086', '19', '12082', '农安县', '农安县', '20');
INSERT INTO `tb_opt` VALUES ('12087', '19', '12082', '朝阳区', '朝阳区', '25');
INSERT INTO `tb_opt` VALUES ('12088', '19', '12082', '南关区', '南关区', '30');
INSERT INTO `tb_opt` VALUES ('12089', '19', '12082', '宽城区', '宽城区', '35');
INSERT INTO `tb_opt` VALUES ('12090', '19', '12082', '二道区', '二道区', '40');
INSERT INTO `tb_opt` VALUES ('12091', '19', '12082', '双阳区', '双阳区', '45');
INSERT INTO `tb_opt` VALUES ('12092', '19', '12082', '绿园区', '绿园区', '50');
INSERT INTO `tb_opt` VALUES ('12093', '19', '12082', '净月区', '净月区', '55');
INSERT INTO `tb_opt` VALUES ('12094', '19', '12082', '汽车产业开发区', '汽车产业开发区', '60');
INSERT INTO `tb_opt` VALUES ('12095', '19', '12082', '高新技术开发区', '高新技术开发区', '65');
INSERT INTO `tb_opt` VALUES ('12096', '19', '12082', '经济技术开发区', '经济技术开发区', '70');
INSERT INTO `tb_opt` VALUES ('12097', '19', '12081', '吉林市', '吉林市', '10');
INSERT INTO `tb_opt` VALUES ('12098', '19', '12097', '昌邑区', '昌邑区', '5');
INSERT INTO `tb_opt` VALUES ('12099', '19', '12097', '龙潭区', '龙潭区', '10');
INSERT INTO `tb_opt` VALUES ('12100', '19', '12097', '船营区', '船营区', '15');
INSERT INTO `tb_opt` VALUES ('12101', '19', '12097', '丰满区', '丰满区', '20');
INSERT INTO `tb_opt` VALUES ('12102', '19', '12097', '舒兰市', '舒兰市', '25');
INSERT INTO `tb_opt` VALUES ('12103', '19', '12097', '桦甸市', '桦甸市', '30');
INSERT INTO `tb_opt` VALUES ('12104', '19', '12097', '蛟河市', '蛟河市', '35');
INSERT INTO `tb_opt` VALUES ('12105', '19', '12097', '磐石市', '磐石市', '40');
INSERT INTO `tb_opt` VALUES ('12106', '19', '12097', '永吉县', '永吉县', '45');
INSERT INTO `tb_opt` VALUES ('12107', '19', '12081', '四平市', '四平市', '15');
INSERT INTO `tb_opt` VALUES ('12108', '19', '12107', '铁东区', '铁东区', '5');
INSERT INTO `tb_opt` VALUES ('12109', '19', '12107', '铁西区', '铁西区', '10');
INSERT INTO `tb_opt` VALUES ('12110', '19', '12107', '公主岭市', '公主岭市', '15');
INSERT INTO `tb_opt` VALUES ('12111', '19', '12107', '双辽市', '双辽市', '20');
INSERT INTO `tb_opt` VALUES ('12112', '19', '12107', '梨树县', '梨树县', '25');
INSERT INTO `tb_opt` VALUES ('12113', '19', '12107', '伊通县', '伊通县', '30');
INSERT INTO `tb_opt` VALUES ('12114', '19', '12081', '通化市', '通化市', '20');
INSERT INTO `tb_opt` VALUES ('12115', '19', '12114', '东昌区', '东昌区', '5');
INSERT INTO `tb_opt` VALUES ('12116', '19', '12114', '梅河口市', '梅河口市', '10');
INSERT INTO `tb_opt` VALUES ('12117', '19', '12114', '集安市', '集安市', '15');
INSERT INTO `tb_opt` VALUES ('12118', '19', '12114', '通化县', '通化县', '20');
INSERT INTO `tb_opt` VALUES ('12119', '19', '12114', '辉南县', '辉南县', '25');
INSERT INTO `tb_opt` VALUES ('12120', '19', '12114', '柳河县', '柳河县', '30');
INSERT INTO `tb_opt` VALUES ('12121', '19', '12114', '二道江区', '二道江区', '35');
INSERT INTO `tb_opt` VALUES ('12122', '19', '12081', '白山市', '白山市', '25');
INSERT INTO `tb_opt` VALUES ('12123', '19', '12122', '浑江区', '浑江区', '5');
INSERT INTO `tb_opt` VALUES ('12124', '19', '12122', '临江市', '临江市', '10');
INSERT INTO `tb_opt` VALUES ('12125', '19', '12122', '江源区', '江源区', '15');
INSERT INTO `tb_opt` VALUES ('12126', '19', '12122', '靖宇县', '靖宇县', '20');
INSERT INTO `tb_opt` VALUES ('12127', '19', '12122', '抚松县', '抚松县', '25');
INSERT INTO `tb_opt` VALUES ('12128', '19', '12122', '长白县', '长白县', '30');
INSERT INTO `tb_opt` VALUES ('12129', '19', '12081', '松原市', '松原市', '30');
INSERT INTO `tb_opt` VALUES ('12130', '19', '12129', '宁江区', '宁江区', '5');
INSERT INTO `tb_opt` VALUES ('12131', '19', '12129', '前郭县', '前郭县', '10');
INSERT INTO `tb_opt` VALUES ('12132', '19', '12129', '乾安县', '乾安县', '15');
INSERT INTO `tb_opt` VALUES ('12133', '19', '12129', '长岭县', '长岭县', '20');
INSERT INTO `tb_opt` VALUES ('12134', '19', '12129', '扶余县', '扶余县', '25');
INSERT INTO `tb_opt` VALUES ('12135', '19', '12081', '白城市', '白城市', '35');
INSERT INTO `tb_opt` VALUES ('12136', '19', '12135', '大安市', '大安市', '5');
INSERT INTO `tb_opt` VALUES ('12137', '19', '12135', '洮南市', '洮南市', '10');
INSERT INTO `tb_opt` VALUES ('12138', '19', '12135', '通榆县', '通榆县', '15');
INSERT INTO `tb_opt` VALUES ('12139', '19', '12135', '镇赉县', '镇赉县', '20');
INSERT INTO `tb_opt` VALUES ('12140', '19', '12135', '洮北区', '洮北区', '25');
INSERT INTO `tb_opt` VALUES ('12141', '19', '12081', '延边州', '延边州', '40');
INSERT INTO `tb_opt` VALUES ('12142', '19', '12141', '延吉市', '延吉市', '5');
INSERT INTO `tb_opt` VALUES ('12143', '19', '12141', '图们市', '图们市', '10');
INSERT INTO `tb_opt` VALUES ('12144', '19', '12141', '敦化市', '敦化市', '15');
INSERT INTO `tb_opt` VALUES ('12145', '19', '12141', '珲春市', '珲春市', '20');
INSERT INTO `tb_opt` VALUES ('12146', '19', '12141', '龙井市', '龙井市', '25');
INSERT INTO `tb_opt` VALUES ('12147', '19', '12141', '和龙市', '和龙市', '30');
INSERT INTO `tb_opt` VALUES ('12148', '19', '12141', '汪清县', '汪清县', '35');
INSERT INTO `tb_opt` VALUES ('12149', '19', '12141', '安图县', '安图县', '40');
INSERT INTO `tb_opt` VALUES ('12150', '19', '12081', '辽源市', '辽源市', '45');
INSERT INTO `tb_opt` VALUES ('12151', '19', '12150', '龙山区', '龙山区', '5');
INSERT INTO `tb_opt` VALUES ('12152', '19', '12150', '西安区', '西安区', '10');
INSERT INTO `tb_opt` VALUES ('12153', '19', '12150', '东丰县', '东丰县', '15');
INSERT INTO `tb_opt` VALUES ('12154', '19', '12150', '东辽县', '东辽县', '20');
INSERT INTO `tb_opt` VALUES ('12155', '19', '0', '黑龙江省', '黑龙江省', '50');
INSERT INTO `tb_opt` VALUES ('12156', '19', '12155', '哈尔滨市', '哈尔滨市', '5');
INSERT INTO `tb_opt` VALUES ('12157', '19', '12156', '阿城区', '阿城区', '5');
INSERT INTO `tb_opt` VALUES ('12158', '19', '12156', '尚志市', '尚志市', '10');
INSERT INTO `tb_opt` VALUES ('12159', '19', '12156', '双城市', '双城市', '15');
INSERT INTO `tb_opt` VALUES ('12160', '19', '12156', '五常市', '五常市', '20');
INSERT INTO `tb_opt` VALUES ('12161', '19', '12156', '方正县', '方正县', '25');
INSERT INTO `tb_opt` VALUES ('12162', '19', '12156', '宾县', '宾县', '30');
INSERT INTO `tb_opt` VALUES ('12163', '19', '12156', '依兰县', '依兰县', '35');
INSERT INTO `tb_opt` VALUES ('12164', '19', '12156', '巴彦县', '巴彦县', '40');
INSERT INTO `tb_opt` VALUES ('12165', '19', '12156', '通河县', '通河县', '45');
INSERT INTO `tb_opt` VALUES ('12166', '19', '12156', '木兰县', '木兰县', '50');
INSERT INTO `tb_opt` VALUES ('12167', '19', '12156', '延寿县', '延寿县', '55');
INSERT INTO `tb_opt` VALUES ('12168', '19', '12156', '呼兰区', '呼兰区', '60');
INSERT INTO `tb_opt` VALUES ('12169', '19', '12156', '松北区', '松北区', '65');
INSERT INTO `tb_opt` VALUES ('12170', '19', '12156', '道里区', '道里区', '70');
INSERT INTO `tb_opt` VALUES ('12171', '19', '12156', '南岗区', '南岗区', '75');
INSERT INTO `tb_opt` VALUES ('12172', '19', '12156', '道外区', '道外区', '80');
INSERT INTO `tb_opt` VALUES ('12173', '19', '12156', '香坊区', '香坊区', '85');
INSERT INTO `tb_opt` VALUES ('12174', '19', '12156', '平房区', '平房区', '90');
INSERT INTO `tb_opt` VALUES ('12175', '19', '12155', '齐齐哈尔市', '齐齐哈尔市', '10');
INSERT INTO `tb_opt` VALUES ('12176', '19', '12175', '建华区', '建华区', '5');
INSERT INTO `tb_opt` VALUES ('12177', '19', '12175', '龙沙区', '龙沙区', '10');
INSERT INTO `tb_opt` VALUES ('12178', '19', '12175', '铁锋区', '铁锋区', '15');
INSERT INTO `tb_opt` VALUES ('12179', '19', '12175', '梅里斯区', '梅里斯区', '20');
INSERT INTO `tb_opt` VALUES ('12180', '19', '12175', '昂昂溪区', '昂昂溪区', '25');
INSERT INTO `tb_opt` VALUES ('12181', '19', '12175', '富拉尔基区', '富拉尔基区', '30');
INSERT INTO `tb_opt` VALUES ('12182', '19', '12175', '碾子山区', '碾子山区', '35');
INSERT INTO `tb_opt` VALUES ('12183', '19', '12175', '讷河市', '讷河市', '40');
INSERT INTO `tb_opt` VALUES ('12184', '19', '12175', '富裕县', '富裕县', '45');
INSERT INTO `tb_opt` VALUES ('12185', '19', '12175', '拜泉县', '拜泉县', '50');
INSERT INTO `tb_opt` VALUES ('12186', '19', '12175', '甘南县', '甘南县', '55');
INSERT INTO `tb_opt` VALUES ('12187', '19', '12175', '依安县', '依安县', '60');
INSERT INTO `tb_opt` VALUES ('12188', '19', '12175', '克山县', '克山县', '65');
INSERT INTO `tb_opt` VALUES ('12189', '19', '12175', '龙江县', '龙江县', '70');
INSERT INTO `tb_opt` VALUES ('12190', '19', '12175', '克东县', '克东县', '75');
INSERT INTO `tb_opt` VALUES ('12191', '19', '12175', '泰来县', '泰来县', '80');
INSERT INTO `tb_opt` VALUES ('12192', '19', '12155', '鹤岗市', '鹤岗市', '15');
INSERT INTO `tb_opt` VALUES ('12193', '19', '12192', '兴山区', '兴山区', '5');
INSERT INTO `tb_opt` VALUES ('12194', '19', '12192', '向阳区', '向阳区', '10');
INSERT INTO `tb_opt` VALUES ('12195', '19', '12192', '工农区', '工农区', '15');
INSERT INTO `tb_opt` VALUES ('12196', '19', '12192', '南山区', '南山区', '20');
INSERT INTO `tb_opt` VALUES ('12197', '19', '12192', '兴安区', '兴安区', '25');
INSERT INTO `tb_opt` VALUES ('12198', '19', '12192', '东山区', '东山区', '30');
INSERT INTO `tb_opt` VALUES ('12199', '19', '12192', '萝北县', '萝北县', '35');
INSERT INTO `tb_opt` VALUES ('12200', '19', '12192', '绥滨县', '绥滨县', '40');
INSERT INTO `tb_opt` VALUES ('12201', '19', '12155', '双鸭山市', '双鸭山市', '20');
INSERT INTO `tb_opt` VALUES ('12202', '19', '12201', '尖山区', '尖山区', '5');
INSERT INTO `tb_opt` VALUES ('12203', '19', '12201', '岭东区', '岭东区', '10');
INSERT INTO `tb_opt` VALUES ('12204', '19', '12201', '四方台区', '四方台区', '15');
INSERT INTO `tb_opt` VALUES ('12205', '19', '12201', '宝山区', '宝山区', '20');
INSERT INTO `tb_opt` VALUES ('12206', '19', '12201', '集贤县', '集贤县', '25');
INSERT INTO `tb_opt` VALUES ('12207', '19', '12201', '宝清县', '宝清县', '30');
INSERT INTO `tb_opt` VALUES ('12208', '19', '12201', '友谊县', '友谊县', '35');
INSERT INTO `tb_opt` VALUES ('12209', '19', '12201', '饶河县', '饶河县', '40');
INSERT INTO `tb_opt` VALUES ('12210', '19', '12155', '鸡西市', '鸡西市', '25');
INSERT INTO `tb_opt` VALUES ('12211', '19', '12210', '恒山区', '恒山区', '5');
INSERT INTO `tb_opt` VALUES ('12212', '19', '12210', '滴道区', '滴道区', '10');
INSERT INTO `tb_opt` VALUES ('12213', '19', '12210', '梨树区', '梨树区', '15');
INSERT INTO `tb_opt` VALUES ('12214', '19', '12210', '城子河区', '城子河区', '20');
INSERT INTO `tb_opt` VALUES ('12215', '19', '12210', '麻山区', '麻山区', '25');
INSERT INTO `tb_opt` VALUES ('12216', '19', '12210', '鸡冠区', '鸡冠区', '30');
INSERT INTO `tb_opt` VALUES ('12217', '19', '12210', '密山市', '密山市', '35');
INSERT INTO `tb_opt` VALUES ('12218', '19', '12210', '虎林市', '虎林市', '40');
INSERT INTO `tb_opt` VALUES ('12219', '19', '12210', '鸡东县', '鸡东县', '45');
INSERT INTO `tb_opt` VALUES ('12220', '19', '12155', '大庆市', '大庆市', '30');
INSERT INTO `tb_opt` VALUES ('12221', '19', '12220', '萨尔图区', '萨尔图区', '5');
INSERT INTO `tb_opt` VALUES ('12222', '19', '12220', '龙凤区', '龙凤区', '10');
INSERT INTO `tb_opt` VALUES ('12223', '19', '12220', '让胡路区', '让胡路区', '15');
INSERT INTO `tb_opt` VALUES ('12224', '19', '12220', '红岗区', '红岗区', '20');
INSERT INTO `tb_opt` VALUES ('12225', '19', '12220', '大同区', '大同区', '25');
INSERT INTO `tb_opt` VALUES ('12226', '19', '12220', '林甸县', '林甸县', '30');
INSERT INTO `tb_opt` VALUES ('12227', '19', '12220', '肇州县', '肇州县', '35');
INSERT INTO `tb_opt` VALUES ('12228', '19', '12220', '肇源县', '肇源县', '40');
INSERT INTO `tb_opt` VALUES ('12229', '19', '12220', '杜尔伯特县', '杜尔伯特县', '45');
INSERT INTO `tb_opt` VALUES ('12230', '19', '12155', '伊春市', '伊春市', '35');
INSERT INTO `tb_opt` VALUES ('12231', '19', '12230', '伊春区', '伊春区', '5');
INSERT INTO `tb_opt` VALUES ('12232', '19', '12230', '南岔区', '南岔区', '10');
INSERT INTO `tb_opt` VALUES ('12233', '19', '12230', '友好区', '友好区', '15');
INSERT INTO `tb_opt` VALUES ('12234', '19', '12230', '西林区', '西林区', '20');
INSERT INTO `tb_opt` VALUES ('12235', '19', '12230', '翠峦区', '翠峦区', '25');
INSERT INTO `tb_opt` VALUES ('12236', '19', '12230', '新青区', '新青区', '30');
INSERT INTO `tb_opt` VALUES ('12237', '19', '12230', '美溪区', '美溪区', '35');
INSERT INTO `tb_opt` VALUES ('12238', '19', '12230', '金山屯区', '金山屯区', '40');
INSERT INTO `tb_opt` VALUES ('12239', '19', '12230', '五营区', '五营区', '45');
INSERT INTO `tb_opt` VALUES ('12240', '19', '12230', '乌马河区', '乌马河区', '50');
INSERT INTO `tb_opt` VALUES ('12241', '19', '12230', '汤旺河区', '汤旺河区', '55');
INSERT INTO `tb_opt` VALUES ('12242', '19', '12230', '带岭区', '带岭区', '60');
INSERT INTO `tb_opt` VALUES ('12243', '19', '12230', '乌伊岭区', '乌伊岭区', '65');
INSERT INTO `tb_opt` VALUES ('12244', '19', '12230', '红星区', '红星区', '70');
INSERT INTO `tb_opt` VALUES ('12245', '19', '12230', '上甘岭区', '上甘岭区', '75');
INSERT INTO `tb_opt` VALUES ('12246', '19', '12230', '铁力市', '铁力市', '80');
INSERT INTO `tb_opt` VALUES ('12247', '19', '12230', '嘉荫县', '嘉荫县', '85');
INSERT INTO `tb_opt` VALUES ('12248', '19', '12155', '牡丹江市', '牡丹江市', '40');
INSERT INTO `tb_opt` VALUES ('12249', '19', '12248', '爱民区', '爱民区', '5');
INSERT INTO `tb_opt` VALUES ('12250', '19', '12248', '东安区', '东安区', '10');
INSERT INTO `tb_opt` VALUES ('12251', '19', '12248', '阳明区', '阳明区', '15');
INSERT INTO `tb_opt` VALUES ('12252', '19', '12248', '西安区', '西安区', '20');
INSERT INTO `tb_opt` VALUES ('12253', '19', '12248', '绥芬河市', '绥芬河市', '25');
INSERT INTO `tb_opt` VALUES ('12254', '19', '12248', '海林市', '海林市', '30');
INSERT INTO `tb_opt` VALUES ('12255', '19', '12248', '宁安市', '宁安市', '35');
INSERT INTO `tb_opt` VALUES ('12256', '19', '12248', '穆棱市', '穆棱市', '40');
INSERT INTO `tb_opt` VALUES ('12257', '19', '12248', '林口县', '林口县', '45');
INSERT INTO `tb_opt` VALUES ('12258', '19', '12248', '东宁县', '东宁县', '50');
INSERT INTO `tb_opt` VALUES ('12259', '19', '12155', '佳木斯市', '佳木斯市', '45');
INSERT INTO `tb_opt` VALUES ('12260', '19', '12259', '桦川县', '桦川县', '5');
INSERT INTO `tb_opt` VALUES ('12261', '19', '12259', '抚远县', '抚远县', '10');
INSERT INTO `tb_opt` VALUES ('12262', '19', '12259', '桦南县', '桦南县', '15');
INSERT INTO `tb_opt` VALUES ('12263', '19', '12259', '汤原县', '汤原县', '20');
INSERT INTO `tb_opt` VALUES ('12264', '19', '12259', '前进区', '前进区', '25');
INSERT INTO `tb_opt` VALUES ('12265', '19', '12259', '向阳区', '向阳区', '30');
INSERT INTO `tb_opt` VALUES ('12266', '19', '12259', '东风区', '东风区', '35');
INSERT INTO `tb_opt` VALUES ('12267', '19', '12259', '郊区', '郊区', '40');
INSERT INTO `tb_opt` VALUES ('12268', '19', '12259', '同江市', '同江市', '45');
INSERT INTO `tb_opt` VALUES ('12269', '19', '12259', '富锦市', '富锦市', '50');
INSERT INTO `tb_opt` VALUES ('12270', '19', '12155', '七台河市', '七台河市', '50');
INSERT INTO `tb_opt` VALUES ('12271', '19', '12270', '勃利县', '勃利县', '5');
INSERT INTO `tb_opt` VALUES ('12272', '19', '12270', '桃山区', '桃山区', '10');
INSERT INTO `tb_opt` VALUES ('12273', '19', '12270', '新兴区', '新兴区', '15');
INSERT INTO `tb_opt` VALUES ('12274', '19', '12270', '茄子河区', '茄子河区', '20');
INSERT INTO `tb_opt` VALUES ('12275', '19', '12155', '黑河市', '黑河市', '55');
INSERT INTO `tb_opt` VALUES ('12276', '19', '12275', '北安市', '北安市', '5');
INSERT INTO `tb_opt` VALUES ('12277', '19', '12275', '五大连池市', '五大连池市', '10');
INSERT INTO `tb_opt` VALUES ('12278', '19', '12275', '逊克县', '逊克县', '15');
INSERT INTO `tb_opt` VALUES ('12279', '19', '12275', '孙吴县', '孙吴县', '20');
INSERT INTO `tb_opt` VALUES ('12280', '19', '12275', '嫩江县', '嫩江县', '25');
INSERT INTO `tb_opt` VALUES ('12281', '19', '12275', '爱辉区', '爱辉区', '30');
INSERT INTO `tb_opt` VALUES ('12282', '19', '12155', '绥化市', '绥化市', '60');
INSERT INTO `tb_opt` VALUES ('12283', '19', '12282', '北林区', '北林区', '5');
INSERT INTO `tb_opt` VALUES ('12284', '19', '12282', '安达市', '安达市', '10');
INSERT INTO `tb_opt` VALUES ('12285', '19', '12282', '肇东市', '肇东市', '15');
INSERT INTO `tb_opt` VALUES ('12286', '19', '12282', '海伦市', '海伦市', '20');
INSERT INTO `tb_opt` VALUES ('12287', '19', '12282', '绥棱县', '绥棱县', '25');
INSERT INTO `tb_opt` VALUES ('12288', '19', '12282', '兰西县', '兰西县', '30');
INSERT INTO `tb_opt` VALUES ('12289', '19', '12282', '明水县', '明水县', '35');
INSERT INTO `tb_opt` VALUES ('12290', '19', '12282', '青冈县', '青冈县', '40');
INSERT INTO `tb_opt` VALUES ('12291', '19', '12282', '庆安县', '庆安县', '45');
INSERT INTO `tb_opt` VALUES ('12292', '19', '12282', '望奎县', '望奎县', '50');
INSERT INTO `tb_opt` VALUES ('12293', '19', '12155', '大兴安岭地区', '大兴安岭地区', '65');
INSERT INTO `tb_opt` VALUES ('12294', '19', '12293', '加格达奇区', '加格达奇区', '5');
INSERT INTO `tb_opt` VALUES ('12295', '19', '12293', '松岭区', '松岭区', '10');
INSERT INTO `tb_opt` VALUES ('12296', '19', '12293', '呼中区', '呼中区', '15');
INSERT INTO `tb_opt` VALUES ('12297', '19', '12293', '呼玛县', '呼玛县', '20');
INSERT INTO `tb_opt` VALUES ('12298', '19', '12293', '塔河县', '塔河县', '25');
INSERT INTO `tb_opt` VALUES ('12299', '19', '12293', '漠河县', '漠河县', '30');
INSERT INTO `tb_opt` VALUES ('12300', '19', '12293', '新林区', '新林区', '35');
INSERT INTO `tb_opt` VALUES ('12301', '19', '0', '内蒙古自治区', '内蒙古自治区', '55');
INSERT INTO `tb_opt` VALUES ('12302', '19', '12301', '呼和浩特市', '呼和浩特市', '5');
INSERT INTO `tb_opt` VALUES ('12303', '19', '12302', '玉泉区', '玉泉区', '5');
INSERT INTO `tb_opt` VALUES ('12304', '19', '12302', '赛罕区', '赛罕区', '10');
INSERT INTO `tb_opt` VALUES ('12305', '19', '12302', '土默特左旗', '土默特左旗', '15');
INSERT INTO `tb_opt` VALUES ('12306', '19', '12302', '和林格尔县', '和林格尔县', '20');
INSERT INTO `tb_opt` VALUES ('12307', '19', '12302', '武川县', '武川县', '25');
INSERT INTO `tb_opt` VALUES ('12308', '19', '12302', '托克托县', '托克托县', '30');
INSERT INTO `tb_opt` VALUES ('12309', '19', '12302', '清水河县', '清水河县', '35');
INSERT INTO `tb_opt` VALUES ('12310', '19', '12302', '回民区', '回民区', '40');
INSERT INTO `tb_opt` VALUES ('12311', '19', '12302', '新城区', '新城区', '45');
INSERT INTO `tb_opt` VALUES ('12312', '19', '12301', '包头市', '包头市', '10');
INSERT INTO `tb_opt` VALUES ('12313', '19', '12312', '固阳县', '固阳县', '5');
INSERT INTO `tb_opt` VALUES ('12314', '19', '12312', '土默特右旗', '土默特右旗', '10');
INSERT INTO `tb_opt` VALUES ('12315', '19', '12312', '达茂联合旗', '达茂联合旗', '15');
INSERT INTO `tb_opt` VALUES ('12316', '19', '12312', '东河区', '东河区', '20');
INSERT INTO `tb_opt` VALUES ('12317', '19', '12312', '九原区', '九原区', '25');
INSERT INTO `tb_opt` VALUES ('12318', '19', '12312', '青山区', '青山区', '30');
INSERT INTO `tb_opt` VALUES ('12319', '19', '12312', '昆都仑区', '昆都仑区', '35');
INSERT INTO `tb_opt` VALUES ('12320', '19', '12312', '石拐区', '石拐区', '40');
INSERT INTO `tb_opt` VALUES ('12321', '19', '12312', '白云矿区', '白云矿区', '45');
INSERT INTO `tb_opt` VALUES ('12322', '19', '12301', '乌海市', '乌海市', '15');
INSERT INTO `tb_opt` VALUES ('12323', '19', '12322', '海勃湾区', '海勃湾区', '5');
INSERT INTO `tb_opt` VALUES ('12324', '19', '12322', '海南区', '海南区', '10');
INSERT INTO `tb_opt` VALUES ('12325', '19', '12322', '乌达区', '乌达区', '15');
INSERT INTO `tb_opt` VALUES ('12326', '19', '12301', '赤峰市', '赤峰市', '20');
INSERT INTO `tb_opt` VALUES ('12327', '19', '12326', '宁城县', '宁城县', '5');
INSERT INTO `tb_opt` VALUES ('12328', '19', '12326', '敖汉旗', '敖汉旗', '10');
INSERT INTO `tb_opt` VALUES ('12329', '19', '12326', '喀喇沁旗', '喀喇沁旗', '15');
INSERT INTO `tb_opt` VALUES ('12330', '19', '12326', '翁牛特旗', '翁牛特旗', '20');
INSERT INTO `tb_opt` VALUES ('12331', '19', '12326', '巴林右旗', '巴林右旗', '25');
INSERT INTO `tb_opt` VALUES ('12332', '19', '12326', '林西县', '林西县', '30');
INSERT INTO `tb_opt` VALUES ('12333', '19', '12326', '克什克腾旗', '克什克腾旗', '35');
INSERT INTO `tb_opt` VALUES ('12334', '19', '12326', '巴林左旗', '巴林左旗', '40');
INSERT INTO `tb_opt` VALUES ('12335', '19', '12326', '阿鲁科尔沁旗', '阿鲁科尔沁旗', '45');
INSERT INTO `tb_opt` VALUES ('12336', '19', '12326', '元宝山区', '元宝山区', '50');
INSERT INTO `tb_opt` VALUES ('12337', '19', '12326', '红山区', '红山区', '55');
INSERT INTO `tb_opt` VALUES ('12338', '19', '12326', '松山区', '松山区', '60');
INSERT INTO `tb_opt` VALUES ('12339', '19', '12301', '乌兰察布市', '乌兰察布市', '25');
INSERT INTO `tb_opt` VALUES ('12340', '19', '12339', '集宁区', '集宁区', '5');
INSERT INTO `tb_opt` VALUES ('12341', '19', '12339', '丰镇市', '丰镇市', '10');
INSERT INTO `tb_opt` VALUES ('12342', '19', '12339', '兴和县', '兴和县', '15');
INSERT INTO `tb_opt` VALUES ('12343', '19', '12339', '卓资县', '卓资县', '20');
INSERT INTO `tb_opt` VALUES ('12344', '19', '12339', '商都县', '商都县', '25');
INSERT INTO `tb_opt` VALUES ('12345', '19', '12339', '凉城县', '凉城县', '30');
INSERT INTO `tb_opt` VALUES ('12346', '19', '12339', '化德县', '化德县', '35');
INSERT INTO `tb_opt` VALUES ('12347', '19', '12339', '察哈尔右翼前旗', '察哈尔右翼前旗', '40');
INSERT INTO `tb_opt` VALUES ('12348', '19', '12339', '察哈尔右翼中旗', '察哈尔右翼中旗', '45');
INSERT INTO `tb_opt` VALUES ('12349', '19', '12339', '察哈尔右翼后旗', '察哈尔右翼后旗', '50');
INSERT INTO `tb_opt` VALUES ('12350', '19', '12339', '四子王旗', '四子王旗', '55');
INSERT INTO `tb_opt` VALUES ('12351', '19', '12301', '锡林郭勒盟', '锡林郭勒盟', '30');
INSERT INTO `tb_opt` VALUES ('12352', '19', '12351', '锡林浩特市', '锡林浩特市', '5');
INSERT INTO `tb_opt` VALUES ('12353', '19', '12351', '二连浩特市', '二连浩特市', '10');
INSERT INTO `tb_opt` VALUES ('12354', '19', '12351', '多伦县', '多伦县', '15');
INSERT INTO `tb_opt` VALUES ('12355', '19', '12351', '阿巴嘎旗', '阿巴嘎旗', '20');
INSERT INTO `tb_opt` VALUES ('12356', '19', '12351', '西乌珠穆沁旗', '西乌珠穆沁旗', '25');
INSERT INTO `tb_opt` VALUES ('12357', '19', '12351', '东乌珠穆沁旗', '东乌珠穆沁旗', '30');
INSERT INTO `tb_opt` VALUES ('12358', '19', '12351', '苏尼特右旗', '苏尼特右旗', '35');
INSERT INTO `tb_opt` VALUES ('12359', '19', '12351', '苏尼特左旗', '苏尼特左旗', '40');
INSERT INTO `tb_opt` VALUES ('12360', '19', '12351', '太仆寺旗', '太仆寺旗', '45');
INSERT INTO `tb_opt` VALUES ('12361', '19', '12351', '正镶白旗', '正镶白旗', '50');
INSERT INTO `tb_opt` VALUES ('12362', '19', '12351', '正蓝旗', '正蓝旗', '55');
INSERT INTO `tb_opt` VALUES ('12363', '19', '12351', '镶黄旗', '镶黄旗', '60');
INSERT INTO `tb_opt` VALUES ('12364', '19', '12301', '呼伦贝尔市', '呼伦贝尔市', '35');
INSERT INTO `tb_opt` VALUES ('12365', '19', '12364', '海拉尔区', '海拉尔区', '5');
INSERT INTO `tb_opt` VALUES ('12366', '19', '12364', '满洲里市', '满洲里市', '10');
INSERT INTO `tb_opt` VALUES ('12367', '19', '12364', '牙克石市', '牙克石市', '15');
INSERT INTO `tb_opt` VALUES ('12368', '19', '12364', '扎兰屯市', '扎兰屯市', '20');
INSERT INTO `tb_opt` VALUES ('12369', '19', '12364', '根河市', '根河市', '25');
INSERT INTO `tb_opt` VALUES ('12370', '19', '12364', '额尔古纳市', '额尔古纳市', '30');
INSERT INTO `tb_opt` VALUES ('12371', '19', '12364', '陈巴尔虎旗', '陈巴尔虎旗', '35');
INSERT INTO `tb_opt` VALUES ('12372', '19', '12364', '阿荣旗', '阿荣旗', '40');
INSERT INTO `tb_opt` VALUES ('12373', '19', '12364', '新巴尔虎左旗', '新巴尔虎左旗', '45');
INSERT INTO `tb_opt` VALUES ('12374', '19', '12364', '新巴尔虎右旗', '新巴尔虎右旗', '50');
INSERT INTO `tb_opt` VALUES ('12375', '19', '12364', '鄂伦春旗', '鄂伦春旗', '55');
INSERT INTO `tb_opt` VALUES ('12376', '19', '12364', '莫力达瓦旗', '莫力达瓦旗', '60');
INSERT INTO `tb_opt` VALUES ('12377', '19', '12364', '鄂温克族旗', '鄂温克族旗', '65');
INSERT INTO `tb_opt` VALUES ('12378', '19', '12301', '鄂尔多斯市', '鄂尔多斯市', '40');
INSERT INTO `tb_opt` VALUES ('12379', '19', '12378', '东胜区', '东胜区', '5');
INSERT INTO `tb_opt` VALUES ('12380', '19', '12378', '准格尔旗', '准格尔旗', '10');
INSERT INTO `tb_opt` VALUES ('12381', '19', '12378', '伊金霍洛旗', '伊金霍洛旗', '15');
INSERT INTO `tb_opt` VALUES ('12382', '19', '12378', '乌审旗', '乌审旗', '20');
INSERT INTO `tb_opt` VALUES ('12383', '19', '12378', '杭锦旗', '杭锦旗', '25');
INSERT INTO `tb_opt` VALUES ('12384', '19', '12378', '鄂托克旗', '鄂托克旗', '30');
INSERT INTO `tb_opt` VALUES ('12385', '19', '12378', '鄂托克前旗', '鄂托克前旗', '35');
INSERT INTO `tb_opt` VALUES ('12386', '19', '12378', '达拉特旗', '达拉特旗', '40');
INSERT INTO `tb_opt` VALUES ('12387', '19', '12378', '康巴什新区', '康巴什新区', '45');
INSERT INTO `tb_opt` VALUES ('12388', '19', '12301', '巴彦淖尔市', '巴彦淖尔市', '45');
INSERT INTO `tb_opt` VALUES ('12389', '19', '12388', '临河区', '临河区', '5');
INSERT INTO `tb_opt` VALUES ('12390', '19', '12388', '五原县', '五原县', '10');
INSERT INTO `tb_opt` VALUES ('12391', '19', '12388', '磴口县', '磴口县', '15');
INSERT INTO `tb_opt` VALUES ('12392', '19', '12388', '杭锦后旗', '杭锦后旗', '20');
INSERT INTO `tb_opt` VALUES ('12393', '19', '12388', '乌拉特中旗', '乌拉特中旗', '25');
INSERT INTO `tb_opt` VALUES ('12394', '19', '12388', '乌拉特后旗 ', '乌拉特后旗 ', '30');
INSERT INTO `tb_opt` VALUES ('12395', '19', '12388', '乌拉特前旗', '乌拉特前旗', '35');
INSERT INTO `tb_opt` VALUES ('12396', '19', '12301', '阿拉善盟', '阿拉善盟', '50');
INSERT INTO `tb_opt` VALUES ('12397', '19', '12396', '阿拉善右旗', '阿拉善右旗', '5');
INSERT INTO `tb_opt` VALUES ('12398', '19', '12396', '阿拉善左旗', '阿拉善左旗', '10');
INSERT INTO `tb_opt` VALUES ('12399', '19', '12396', '额济纳旗', '额济纳旗', '15');
INSERT INTO `tb_opt` VALUES ('12400', '19', '12301', '兴安盟', '兴安盟', '55');
INSERT INTO `tb_opt` VALUES ('12401', '19', '12400', '乌兰浩特市', '乌兰浩特市', '5');
INSERT INTO `tb_opt` VALUES ('12402', '19', '12400', '阿尔山市', '阿尔山市', '10');
INSERT INTO `tb_opt` VALUES ('12403', '19', '12400', '突泉县', '突泉县', '15');
INSERT INTO `tb_opt` VALUES ('12404', '19', '12400', '扎赉特旗', '扎赉特旗', '20');
INSERT INTO `tb_opt` VALUES ('12405', '19', '12400', '科尔沁右翼前旗', '科尔沁右翼前旗', '25');
INSERT INTO `tb_opt` VALUES ('12406', '19', '12400', '科尔沁右翼中旗', '科尔沁右翼中旗', '30');
INSERT INTO `tb_opt` VALUES ('12407', '19', '12301', '通辽市', '通辽市', '60');
INSERT INTO `tb_opt` VALUES ('12408', '19', '12407', '科尔沁区', '科尔沁区', '5');
INSERT INTO `tb_opt` VALUES ('12409', '19', '12407', '霍林郭勒市', '霍林郭勒市', '10');
INSERT INTO `tb_opt` VALUES ('12410', '19', '12407', '开鲁县', '开鲁县', '15');
INSERT INTO `tb_opt` VALUES ('12411', '19', '12407', '库伦旗', '库伦旗', '20');
INSERT INTO `tb_opt` VALUES ('12412', '19', '12407', '奈曼旗', '奈曼旗', '25');
INSERT INTO `tb_opt` VALUES ('12413', '19', '12407', '扎鲁特旗', '扎鲁特旗', '30');
INSERT INTO `tb_opt` VALUES ('12414', '19', '12407', '科尔沁左翼中旗', '科尔沁左翼中旗', '35');
INSERT INTO `tb_opt` VALUES ('12415', '19', '12407', '科尔沁左翼后旗', '科尔沁左翼后旗', '40');
INSERT INTO `tb_opt` VALUES ('12416', '19', '0', '江苏省', '江苏省', '60');
INSERT INTO `tb_opt` VALUES ('12417', '19', '12416', '南京市', '南京市', '5');
INSERT INTO `tb_opt` VALUES ('12418', '19', '12417', '玄武区', '玄武区', '5');
INSERT INTO `tb_opt` VALUES ('12419', '19', '12417', '秦淮区', '秦淮区', '10');
INSERT INTO `tb_opt` VALUES ('12420', '19', '12417', '建邺区', '建邺区', '15');
INSERT INTO `tb_opt` VALUES ('12421', '19', '12417', '鼓楼区', '鼓楼区', '20');
INSERT INTO `tb_opt` VALUES ('12422', '19', '12417', '栖霞区', '栖霞区', '25');
INSERT INTO `tb_opt` VALUES ('12423', '19', '12417', '江宁区', '江宁区', '30');
INSERT INTO `tb_opt` VALUES ('12424', '19', '12417', '六合区', '六合区', '35');
INSERT INTO `tb_opt` VALUES ('12425', '19', '12417', '雨花台区', '雨花台区', '40');
INSERT INTO `tb_opt` VALUES ('12426', '19', '12417', '高淳区', '高淳区', '45');
INSERT INTO `tb_opt` VALUES ('12427', '19', '12417', '溧水区', '溧水区', '50');
INSERT INTO `tb_opt` VALUES ('12428', '19', '12417', '浦口区', '浦口区', '55');
INSERT INTO `tb_opt` VALUES ('12429', '19', '12416', '徐州市', '徐州市', '10');
INSERT INTO `tb_opt` VALUES ('12430', '19', '12429', '贾汪区', '贾汪区', '5');
INSERT INTO `tb_opt` VALUES ('12431', '19', '12429', '金山桥开发区', '金山桥开发区', '10');
INSERT INTO `tb_opt` VALUES ('12432', '19', '12429', '铜山经济技术开发区', '铜山经济技术开发区', '15');
INSERT INTO `tb_opt` VALUES ('12433', '19', '12429', '八段工业园区', '八段工业园区', '20');
INSERT INTO `tb_opt` VALUES ('12434', '19', '12429', '鼓楼区', '鼓楼区', '25');
INSERT INTO `tb_opt` VALUES ('12435', '19', '12429', '邳州市', '邳州市', '30');
INSERT INTO `tb_opt` VALUES ('12436', '19', '12429', '泉山区', '泉山区', '35');
INSERT INTO `tb_opt` VALUES ('12437', '19', '12429', '新沂市', '新沂市', '40');
INSERT INTO `tb_opt` VALUES ('12438', '19', '12429', '云龙区', '云龙区', '45');
INSERT INTO `tb_opt` VALUES ('12439', '19', '12429', '铜山区', '铜山区', '50');
INSERT INTO `tb_opt` VALUES ('12440', '19', '12429', '睢宁县', '睢宁县', '55');
INSERT INTO `tb_opt` VALUES ('12441', '19', '12429', '沛县', '沛县', '60');
INSERT INTO `tb_opt` VALUES ('12442', '19', '12429', '丰县', '丰县', '65');
INSERT INTO `tb_opt` VALUES ('12443', '19', '12416', '连云港市', '连云港市', '15');
INSERT INTO `tb_opt` VALUES ('12444', '19', '12443', '海州区', '海州区', '5');
INSERT INTO `tb_opt` VALUES ('12445', '19', '12443', '新浦区', '新浦区', '10');
INSERT INTO `tb_opt` VALUES ('12446', '19', '12443', '赣榆县', '赣榆县', '15');
INSERT INTO `tb_opt` VALUES ('12447', '19', '12443', '连云区', '连云区', '20');
INSERT INTO `tb_opt` VALUES ('12448', '19', '12443', '灌云县', '灌云县', '25');
INSERT INTO `tb_opt` VALUES ('12449', '19', '12443', '东海县', '东海县', '30');
INSERT INTO `tb_opt` VALUES ('12450', '19', '12443', '灌南县', '灌南县', '35');
INSERT INTO `tb_opt` VALUES ('12451', '19', '12416', '淮安市', '淮安市', '20');
INSERT INTO `tb_opt` VALUES ('12452', '19', '12451', '经济开发区', '经济开发区', '5');
INSERT INTO `tb_opt` VALUES ('12453', '19', '12451', '楚州区', '楚州区', '10');
INSERT INTO `tb_opt` VALUES ('12454', '19', '12451', '洪泽县', '洪泽县', '15');
INSERT INTO `tb_opt` VALUES ('12455', '19', '12451', '金湖县', '金湖县', '20');
INSERT INTO `tb_opt` VALUES ('12456', '19', '12451', '盱眙县', '盱眙县', '25');
INSERT INTO `tb_opt` VALUES ('12457', '19', '12451', '清河区', '清河区', '30');
INSERT INTO `tb_opt` VALUES ('12458', '19', '12451', '淮阴区', '淮阴区', '35');
INSERT INTO `tb_opt` VALUES ('12459', '19', '12451', '清浦区', '清浦区', '40');
INSERT INTO `tb_opt` VALUES ('12460', '19', '12451', '涟水县', '涟水县', '45');
INSERT INTO `tb_opt` VALUES ('12461', '19', '12416', '宿迁市', '宿迁市', '25');
INSERT INTO `tb_opt` VALUES ('12462', '19', '12461', '宿城区', '宿城区', '5');
INSERT INTO `tb_opt` VALUES ('12463', '19', '12461', '沭阳县', '沭阳县', '10');
INSERT INTO `tb_opt` VALUES ('12464', '19', '12461', '泗阳县', '泗阳县', '15');
INSERT INTO `tb_opt` VALUES ('12465', '19', '12461', '宿豫区', '宿豫区', '20');
INSERT INTO `tb_opt` VALUES ('12466', '19', '12461', '泗洪县', '泗洪县', '25');
INSERT INTO `tb_opt` VALUES ('12467', '19', '12461', '宿迁经济开发区', '宿迁经济开发区', '30');
INSERT INTO `tb_opt` VALUES ('12468', '19', '12416', '盐城市', '盐城市', '30');
INSERT INTO `tb_opt` VALUES ('12469', '19', '12468', '射阳县', '射阳县', '5');
INSERT INTO `tb_opt` VALUES ('12470', '19', '12468', '亭湖区', '亭湖区', '10');
INSERT INTO `tb_opt` VALUES ('12471', '19', '12468', '盐都区', '盐都区', '15');
INSERT INTO `tb_opt` VALUES ('12472', '19', '12468', '东台市', '东台市', '20');
INSERT INTO `tb_opt` VALUES ('12473', '19', '12468', '大丰市', '大丰市', '25');
INSERT INTO `tb_opt` VALUES ('12474', '19', '12468', '建湖县', '建湖县', '30');
INSERT INTO `tb_opt` VALUES ('12475', '19', '12468', '响水县', '响水县', '35');
INSERT INTO `tb_opt` VALUES ('12476', '19', '12468', '阜宁县', '阜宁县', '40');
INSERT INTO `tb_opt` VALUES ('12477', '19', '12468', '滨海县', '滨海县', '45');
INSERT INTO `tb_opt` VALUES ('12478', '19', '12416', '扬州市', '扬州市', '35');
INSERT INTO `tb_opt` VALUES ('12479', '19', '12478', '广陵区', '广陵区', '5');
INSERT INTO `tb_opt` VALUES ('12480', '19', '12478', '邗江区', '邗江区', '10');
INSERT INTO `tb_opt` VALUES ('12481', '19', '12478', '宝应县', '宝应县', '15');
INSERT INTO `tb_opt` VALUES ('12482', '19', '12478', '仪征市', '仪征市', '20');
INSERT INTO `tb_opt` VALUES ('12483', '19', '12478', '高邮市', '高邮市', '25');
INSERT INTO `tb_opt` VALUES ('12484', '19', '12478', '江都区', '江都区', '30');
INSERT INTO `tb_opt` VALUES ('12485', '19', '12416', '泰州市', '泰州市', '40');
INSERT INTO `tb_opt` VALUES ('12486', '19', '12485', '海陵区', '海陵区', '5');
INSERT INTO `tb_opt` VALUES ('12487', '19', '12485', '高港区', '高港区', '10');
INSERT INTO `tb_opt` VALUES ('12488', '19', '12485', '泰兴市', '泰兴市', '15');
INSERT INTO `tb_opt` VALUES ('12489', '19', '12485', '靖江市', '靖江市', '20');
INSERT INTO `tb_opt` VALUES ('12490', '19', '12485', '兴化市', '兴化市', '25');
INSERT INTO `tb_opt` VALUES ('12491', '19', '12485', '姜堰市', '姜堰市', '30');
INSERT INTO `tb_opt` VALUES ('12492', '19', '12416', '南通市', '南通市', '45');
INSERT INTO `tb_opt` VALUES ('12493', '19', '12492', '港闸区', '港闸区', '5');
INSERT INTO `tb_opt` VALUES ('12494', '19', '12492', '崇川区', '崇川区', '10');
INSERT INTO `tb_opt` VALUES ('12495', '19', '12492', '通州区', '通州区', '15');
INSERT INTO `tb_opt` VALUES ('12496', '19', '12492', '南通经济技术开发区', '南通经济技术开发区', '20');
INSERT INTO `tb_opt` VALUES ('12497', '19', '12492', '如东县', '如东县', '25');
INSERT INTO `tb_opt` VALUES ('12498', '19', '12492', '海安县', '海安县', '30');
INSERT INTO `tb_opt` VALUES ('12499', '19', '12492', '如皋市', '如皋市', '35');
INSERT INTO `tb_opt` VALUES ('12500', '19', '12492', '海门市', '海门市', '40');
INSERT INTO `tb_opt` VALUES ('12501', '19', '12492', '启东市', '启东市', '45');
INSERT INTO `tb_opt` VALUES ('12502', '19', '12416', '镇江市', '镇江市', '50');
INSERT INTO `tb_opt` VALUES ('12503', '19', '12502', '润州区', '润州区', '5');
INSERT INTO `tb_opt` VALUES ('12504', '19', '12502', '京口区', '京口区', '10');
INSERT INTO `tb_opt` VALUES ('12505', '19', '12502', '丹徒区', '丹徒区', '15');
INSERT INTO `tb_opt` VALUES ('12506', '19', '12502', '镇江新区', '镇江新区', '20');
INSERT INTO `tb_opt` VALUES ('12507', '19', '12502', '丹阳市', '丹阳市', '25');
INSERT INTO `tb_opt` VALUES ('12508', '19', '12502', '句容市', '句容市', '30');
INSERT INTO `tb_opt` VALUES ('12509', '19', '12502', '扬中市', '扬中市', '35');
INSERT INTO `tb_opt` VALUES ('12510', '19', '12502', '丹徒新区', '丹徒新区', '40');
INSERT INTO `tb_opt` VALUES ('12511', '19', '12416', '常州市', '常州市', '55');
INSERT INTO `tb_opt` VALUES ('12512', '19', '12511', '钟楼区', '钟楼区', '5');
INSERT INTO `tb_opt` VALUES ('12513', '19', '12511', '天宁区', '天宁区', '10');
INSERT INTO `tb_opt` VALUES ('12514', '19', '12511', '武进区', '武进区', '15');
INSERT INTO `tb_opt` VALUES ('12515', '19', '12511', '新北区', '新北区', '20');
INSERT INTO `tb_opt` VALUES ('12516', '19', '12511', '戚墅堰区', '戚墅堰区', '25');
INSERT INTO `tb_opt` VALUES ('12517', '19', '12511', '金坛市', '金坛市', '30');
INSERT INTO `tb_opt` VALUES ('12518', '19', '12511', '溧阳市', '溧阳市', '35');
INSERT INTO `tb_opt` VALUES ('12519', '19', '12416', '无锡市', '无锡市', '60');
INSERT INTO `tb_opt` VALUES ('12520', '19', '12519', '崇安区', '崇安区', '5');
INSERT INTO `tb_opt` VALUES ('12521', '19', '12519', '南长区', '南长区', '10');
INSERT INTO `tb_opt` VALUES ('12522', '19', '12519', '北塘区', '北塘区', '15');
INSERT INTO `tb_opt` VALUES ('12523', '19', '12519', '锡山区', '锡山区', '20');
INSERT INTO `tb_opt` VALUES ('12524', '19', '12519', '惠山区', '惠山区', '25');
INSERT INTO `tb_opt` VALUES ('12525', '19', '12519', '新区', '新区', '30');
INSERT INTO `tb_opt` VALUES ('12526', '19', '12519', '江阴市', '江阴市', '35');
INSERT INTO `tb_opt` VALUES ('12527', '19', '12519', '宜兴市', '宜兴市', '40');
INSERT INTO `tb_opt` VALUES ('12528', '19', '12519', '滨湖区', '滨湖区', '45');
INSERT INTO `tb_opt` VALUES ('12529', '19', '12416', '苏州市', '苏州市', '65');
INSERT INTO `tb_opt` VALUES ('12530', '19', '12529', '常熟市', '常熟市', '5');
INSERT INTO `tb_opt` VALUES ('12531', '19', '12529', '张家港市', '张家港市', '10');
INSERT INTO `tb_opt` VALUES ('12532', '19', '12529', '太仓市', '太仓市', '15');
INSERT INTO `tb_opt` VALUES ('12533', '19', '12529', '相城区', '相城区', '20');
INSERT INTO `tb_opt` VALUES ('12534', '19', '12529', '金阊区', '金阊区', '25');
INSERT INTO `tb_opt` VALUES ('12535', '19', '12529', '虎丘区', '虎丘区', '30');
INSERT INTO `tb_opt` VALUES ('12536', '19', '12529', '平江区', '平江区', '35');
INSERT INTO `tb_opt` VALUES ('12537', '19', '12529', '沧浪区', '沧浪区', '40');
INSERT INTO `tb_opt` VALUES ('12538', '19', '12529', '工业园区', '工业园区', '45');
INSERT INTO `tb_opt` VALUES ('12539', '19', '12529', '高新区', '高新区', '50');
INSERT INTO `tb_opt` VALUES ('12540', '19', '12529', '吴江区', '吴江区', '55');
INSERT INTO `tb_opt` VALUES ('12541', '19', '12529', '吴中区', '吴中区', '60');
INSERT INTO `tb_opt` VALUES ('12542', '19', '12529', '昆山市', '昆山市', '65');
INSERT INTO `tb_opt` VALUES ('12543', '19', '0', '山东省', '山东省', '65');
INSERT INTO `tb_opt` VALUES ('12544', '19', '12543', '济南市', '济南市', '5');
INSERT INTO `tb_opt` VALUES ('12545', '19', '12544', '高新区', '高新区', '5');
INSERT INTO `tb_opt` VALUES ('12546', '19', '12544', '长清区', '长清区', '10');
INSERT INTO `tb_opt` VALUES ('12547', '19', '12544', '历城区', '历城区', '15');
INSERT INTO `tb_opt` VALUES ('12548', '19', '12544', '天桥区', '天桥区', '20');
INSERT INTO `tb_opt` VALUES ('12549', '19', '12544', '槐荫区', '槐荫区', '25');
INSERT INTO `tb_opt` VALUES ('12550', '19', '12544', '历下区', '历下区', '30');
INSERT INTO `tb_opt` VALUES ('12551', '19', '12544', '市中区', '市中区', '35');
INSERT INTO `tb_opt` VALUES ('12552', '19', '12544', '章丘市', '章丘市', '40');
INSERT INTO `tb_opt` VALUES ('12553', '19', '12544', '平阴县', '平阴县', '45');
INSERT INTO `tb_opt` VALUES ('12554', '19', '12544', '济阳县', '济阳县', '50');
INSERT INTO `tb_opt` VALUES ('12555', '19', '12544', '商河县', '商河县', '55');
INSERT INTO `tb_opt` VALUES ('12556', '19', '12543', '青岛市', '青岛市', '10');
INSERT INTO `tb_opt` VALUES ('12557', '19', '12556', '四方区', '四方区', '5');
INSERT INTO `tb_opt` VALUES ('12558', '19', '12556', '市北区', '市北区', '10');
INSERT INTO `tb_opt` VALUES ('12559', '19', '12556', '市南区', '市南区', '15');
INSERT INTO `tb_opt` VALUES ('12560', '19', '12556', '黄岛区', '黄岛区', '20');
INSERT INTO `tb_opt` VALUES ('12561', '19', '12556', '李沧区', '李沧区', '25');
INSERT INTO `tb_opt` VALUES ('12562', '19', '12556', '即墨市', '即墨市', '30');
INSERT INTO `tb_opt` VALUES ('12563', '19', '12556', '城阳区', '城阳区', '35');
INSERT INTO `tb_opt` VALUES ('12564', '19', '12556', '崂山区', '崂山区', '40');
INSERT INTO `tb_opt` VALUES ('12565', '19', '12556', '胶州市', '胶州市', '45');
INSERT INTO `tb_opt` VALUES ('12566', '19', '12556', '平度市', '平度市', '50');
INSERT INTO `tb_opt` VALUES ('12567', '19', '12556', '莱西市', '莱西市', '55');
INSERT INTO `tb_opt` VALUES ('12568', '19', '12543', '淄博市', '淄博市', '15');
INSERT INTO `tb_opt` VALUES ('12569', '19', '12568', '临淄区', '临淄区', '5');
INSERT INTO `tb_opt` VALUES ('12570', '19', '12568', '张店区', '张店区', '10');
INSERT INTO `tb_opt` VALUES ('12571', '19', '12568', '周村区', '周村区', '15');
INSERT INTO `tb_opt` VALUES ('12572', '19', '12568', '淄川区', '淄川区', '20');
INSERT INTO `tb_opt` VALUES ('12573', '19', '12568', '博山区', '博山区', '25');
INSERT INTO `tb_opt` VALUES ('12574', '19', '12568', '高青县', '高青县', '30');
INSERT INTO `tb_opt` VALUES ('12575', '19', '12568', '沂源县', '沂源县', '35');
INSERT INTO `tb_opt` VALUES ('12576', '19', '12568', '桓台县', '桓台县', '40');
INSERT INTO `tb_opt` VALUES ('12577', '19', '12543', '枣庄市', '枣庄市', '20');
INSERT INTO `tb_opt` VALUES ('12578', '19', '12577', '滕州市', '滕州市', '5');
INSERT INTO `tb_opt` VALUES ('12579', '19', '12577', '山亭区', '山亭区', '10');
INSERT INTO `tb_opt` VALUES ('12580', '19', '12577', '台儿庄区', '台儿庄区', '15');
INSERT INTO `tb_opt` VALUES ('12581', '19', '12577', '峄城区', '峄城区', '20');
INSERT INTO `tb_opt` VALUES ('12582', '19', '12577', '薛城区', '薛城区', '25');
INSERT INTO `tb_opt` VALUES ('12583', '19', '12577', '市中区', '市中区', '30');
INSERT INTO `tb_opt` VALUES ('12584', '19', '12543', '东营市', '东营市', '25');
INSERT INTO `tb_opt` VALUES ('12585', '19', '12584', '河口区', '河口区', '5');
INSERT INTO `tb_opt` VALUES ('12586', '19', '12584', '广饶县', '广饶县', '10');
INSERT INTO `tb_opt` VALUES ('12587', '19', '12584', '利津县', '利津县', '15');
INSERT INTO `tb_opt` VALUES ('12588', '19', '12584', '垦利县', '垦利县', '20');
INSERT INTO `tb_opt` VALUES ('12589', '19', '12584', '东营区', '东营区', '25');
INSERT INTO `tb_opt` VALUES ('12590', '19', '12543', '潍坊市', '潍坊市', '30');
INSERT INTO `tb_opt` VALUES ('12591', '19', '12590', '潍城区', '潍城区', '5');
INSERT INTO `tb_opt` VALUES ('12592', '19', '12590', '奎文区', '奎文区', '10');
INSERT INTO `tb_opt` VALUES ('12593', '19', '12590', '高新区', '高新区', '15');
INSERT INTO `tb_opt` VALUES ('12594', '19', '12590', '寒亭区', '寒亭区', '20');
INSERT INTO `tb_opt` VALUES ('12595', '19', '12590', '寿光市', '寿光市', '25');
INSERT INTO `tb_opt` VALUES ('12596', '19', '12590', '青州市', '青州市', '30');
INSERT INTO `tb_opt` VALUES ('12597', '19', '12590', '诸城市', '诸城市', '35');
INSERT INTO `tb_opt` VALUES ('12598', '19', '12590', '安丘市', '安丘市', '40');
INSERT INTO `tb_opt` VALUES ('12599', '19', '12590', '高密市', '高密市', '45');
INSERT INTO `tb_opt` VALUES ('12600', '19', '12590', '昌邑市', '昌邑市', '50');
INSERT INTO `tb_opt` VALUES ('12601', '19', '12590', '昌乐县', '昌乐县', '55');
INSERT INTO `tb_opt` VALUES ('12602', '19', '12590', '临朐县', '临朐县', '60');
INSERT INTO `tb_opt` VALUES ('12603', '19', '12590', '坊子区', '坊子区', '65');
INSERT INTO `tb_opt` VALUES ('12604', '19', '12543', '烟台市', '烟台市', '35');
INSERT INTO `tb_opt` VALUES ('12605', '19', '12604', '莱山区', '莱山区', '5');
INSERT INTO `tb_opt` VALUES ('12606', '19', '12604', '芝罘区', '芝罘区', '10');
INSERT INTO `tb_opt` VALUES ('12607', '19', '12604', '开发区', '开发区', '15');
INSERT INTO `tb_opt` VALUES ('12608', '19', '12604', '福山区', '福山区', '20');
INSERT INTO `tb_opt` VALUES ('12609', '19', '12604', '牟平区', '牟平区', '25');
INSERT INTO `tb_opt` VALUES ('12610', '19', '12604', '龙口市', '龙口市', '30');
INSERT INTO `tb_opt` VALUES ('12611', '19', '12604', '莱州市', '莱州市', '35');
INSERT INTO `tb_opt` VALUES ('12612', '19', '12604', '莱阳市', '莱阳市', '40');
INSERT INTO `tb_opt` VALUES ('12613', '19', '12604', '招远市', '招远市', '45');
INSERT INTO `tb_opt` VALUES ('12614', '19', '12604', '蓬莱市', '蓬莱市', '50');
INSERT INTO `tb_opt` VALUES ('12615', '19', '12604', '栖霞市', '栖霞市', '55');
INSERT INTO `tb_opt` VALUES ('12616', '19', '12604', '海阳市', '海阳市', '60');
INSERT INTO `tb_opt` VALUES ('12617', '19', '12604', '长岛县', '长岛县', '65');
INSERT INTO `tb_opt` VALUES ('12618', '19', '12543', '威海市', '威海市', '40');
INSERT INTO `tb_opt` VALUES ('12619', '19', '12618', '荣成市', '荣成市', '5');
INSERT INTO `tb_opt` VALUES ('12620', '19', '12618', '文登市', '文登市', '10');
INSERT INTO `tb_opt` VALUES ('12621', '19', '12618', '乳山市', '乳山市', '15');
INSERT INTO `tb_opt` VALUES ('12622', '19', '12618', '环翠区', '环翠区', '20');
INSERT INTO `tb_opt` VALUES ('12623', '19', '12543', '莱芜市', '莱芜市', '45');
INSERT INTO `tb_opt` VALUES ('12624', '19', '12623', '莱城区', '莱城区', '5');
INSERT INTO `tb_opt` VALUES ('12625', '19', '12623', '钢城区', '钢城区', '10');
INSERT INTO `tb_opt` VALUES ('12626', '19', '12543', '德州市', '德州市', '50');
INSERT INTO `tb_opt` VALUES ('12627', '19', '12626', '德城区', '德城区', '5');
INSERT INTO `tb_opt` VALUES ('12628', '19', '12626', '临邑县', '临邑县', '10');
INSERT INTO `tb_opt` VALUES ('12629', '19', '12626', '齐河县', '齐河县', '15');
INSERT INTO `tb_opt` VALUES ('12630', '19', '12626', '乐陵市', '乐陵市', '20');
INSERT INTO `tb_opt` VALUES ('12631', '19', '12626', '禹城市', '禹城市', '25');
INSERT INTO `tb_opt` VALUES ('12632', '19', '12626', '陵县', '陵县', '30');
INSERT INTO `tb_opt` VALUES ('12633', '19', '12626', '宁津县', '宁津县', '35');
INSERT INTO `tb_opt` VALUES ('12634', '19', '12626', '武城县', '武城县', '40');
INSERT INTO `tb_opt` VALUES ('12635', '19', '12626', '庆云县', '庆云县', '45');
INSERT INTO `tb_opt` VALUES ('12636', '19', '12626', '平原县', '平原县', '50');
INSERT INTO `tb_opt` VALUES ('12637', '19', '12626', '夏津县', '夏津县', '55');
INSERT INTO `tb_opt` VALUES ('12638', '19', '12543', '临沂市', '临沂市', '55');
INSERT INTO `tb_opt` VALUES ('12639', '19', '12638', '兰陵县', '兰陵县', '5');
INSERT INTO `tb_opt` VALUES ('12640', '19', '12638', '兰山区', '兰山区', '10');
INSERT INTO `tb_opt` VALUES ('12641', '19', '12638', '河东区', '河东区', '15');
INSERT INTO `tb_opt` VALUES ('12642', '19', '12638', '沂南县', '沂南县', '20');
INSERT INTO `tb_opt` VALUES ('12643', '19', '12638', '沂水县', '沂水县', '25');
INSERT INTO `tb_opt` VALUES ('12644', '19', '12638', '费县', '费县', '30');
INSERT INTO `tb_opt` VALUES ('12645', '19', '12638', '平邑县', '平邑县', '35');
INSERT INTO `tb_opt` VALUES ('12646', '19', '12638', '蒙阴县', '蒙阴县', '40');
INSERT INTO `tb_opt` VALUES ('12647', '19', '12638', '临沭县', '临沭县', '45');
INSERT INTO `tb_opt` VALUES ('12648', '19', '12638', '莒南县', '莒南县', '50');
INSERT INTO `tb_opt` VALUES ('12649', '19', '12638', '郯城县', '郯城县', '55');
INSERT INTO `tb_opt` VALUES ('12650', '19', '12638', '罗庄区', '罗庄区', '60');
INSERT INTO `tb_opt` VALUES ('12651', '19', '12543', '聊城市', '聊城市', '60');
INSERT INTO `tb_opt` VALUES ('12652', '19', '12651', '东昌府区', '东昌府区', '5');
INSERT INTO `tb_opt` VALUES ('12653', '19', '12651', '临清市', '临清市', '10');
INSERT INTO `tb_opt` VALUES ('12654', '19', '12651', '阳谷县', '阳谷县', '15');
INSERT INTO `tb_opt` VALUES ('12655', '19', '12651', '茌平县', '茌平县', '20');
INSERT INTO `tb_opt` VALUES ('12656', '19', '12651', '莘县', '莘县', '25');
INSERT INTO `tb_opt` VALUES ('12657', '19', '12651', '东阿县', '东阿县', '30');
INSERT INTO `tb_opt` VALUES ('12658', '19', '12651', '冠县', '冠县', '35');
INSERT INTO `tb_opt` VALUES ('12659', '19', '12651', '高唐县', '高唐县', '40');
INSERT INTO `tb_opt` VALUES ('12660', '19', '12543', '滨州市', '滨州市', '65');
INSERT INTO `tb_opt` VALUES ('12661', '19', '12660', '北海新区', '北海新区', '5');
INSERT INTO `tb_opt` VALUES ('12662', '19', '12660', '滨城区', '滨城区', '10');
INSERT INTO `tb_opt` VALUES ('12663', '19', '12660', '邹平县', '邹平县', '15');
INSERT INTO `tb_opt` VALUES ('12664', '19', '12660', '沾化县', '沾化县', '20');
INSERT INTO `tb_opt` VALUES ('12665', '19', '12660', '惠民县', '惠民县', '25');
INSERT INTO `tb_opt` VALUES ('12666', '19', '12660', '博兴县', '博兴县', '30');
INSERT INTO `tb_opt` VALUES ('12667', '19', '12660', '阳信县', '阳信县', '35');
INSERT INTO `tb_opt` VALUES ('12668', '19', '12660', '无棣县', '无棣县', '40');
INSERT INTO `tb_opt` VALUES ('12669', '19', '12543', '菏泽市', '菏泽市', '70');
INSERT INTO `tb_opt` VALUES ('12670', '19', '12669', '牡丹区', '牡丹区', '5');
INSERT INTO `tb_opt` VALUES ('12671', '19', '12669', '单县', '单县', '10');
INSERT INTO `tb_opt` VALUES ('12672', '19', '12669', '曹县', '曹县', '15');
INSERT INTO `tb_opt` VALUES ('12673', '19', '12669', '定陶县', '定陶县', '20');
INSERT INTO `tb_opt` VALUES ('12674', '19', '12669', '巨野县', '巨野县', '25');
INSERT INTO `tb_opt` VALUES ('12675', '19', '12669', '成武县', '成武县', '30');
INSERT INTO `tb_opt` VALUES ('12676', '19', '12669', '东明县', '东明县', '35');
INSERT INTO `tb_opt` VALUES ('12677', '19', '12669', '郓城县', '郓城县', '40');
INSERT INTO `tb_opt` VALUES ('12678', '19', '12669', '鄄城县', '鄄城县', '45');
INSERT INTO `tb_opt` VALUES ('12679', '19', '12543', '日照市', '日照市', '75');
INSERT INTO `tb_opt` VALUES ('12680', '19', '12679', '岚山区', '岚山区', '5');
INSERT INTO `tb_opt` VALUES ('12681', '19', '12679', '新市区', '新市区', '10');
INSERT INTO `tb_opt` VALUES ('12682', '19', '12679', '五莲县', '五莲县', '15');
INSERT INTO `tb_opt` VALUES ('12683', '19', '12679', '东港区', '东港区', '20');
INSERT INTO `tb_opt` VALUES ('12684', '19', '12679', '莒县', '莒县', '25');
INSERT INTO `tb_opt` VALUES ('12685', '19', '12543', '泰安市', '泰安市', '80');
INSERT INTO `tb_opt` VALUES ('12686', '19', '12685', '东平县', '东平县', '5');
INSERT INTO `tb_opt` VALUES ('12687', '19', '12685', '岱岳区', '岱岳区', '10');
INSERT INTO `tb_opt` VALUES ('12688', '19', '12685', '泰山区', '泰山区', '15');
INSERT INTO `tb_opt` VALUES ('12689', '19', '12685', '肥城市', '肥城市', '20');
INSERT INTO `tb_opt` VALUES ('12690', '19', '12685', '新泰市', '新泰市', '25');
INSERT INTO `tb_opt` VALUES ('12691', '19', '12685', '宁阳县', '宁阳县', '30');
INSERT INTO `tb_opt` VALUES ('12692', '19', '12543', '济宁市', '济宁市', '85');
INSERT INTO `tb_opt` VALUES ('12693', '19', '12692', '梁山县', '梁山县', '5');
INSERT INTO `tb_opt` VALUES ('12694', '19', '12692', '兖州市', '兖州市', '10');
INSERT INTO `tb_opt` VALUES ('12695', '19', '12692', '微山县', '微山县', '15');
INSERT INTO `tb_opt` VALUES ('12696', '19', '12692', '汶上县', '汶上县', '20');
INSERT INTO `tb_opt` VALUES ('12697', '19', '12692', '泗水县', '泗水县', '25');
INSERT INTO `tb_opt` VALUES ('12698', '19', '12692', '嘉祥县', '嘉祥县', '30');
INSERT INTO `tb_opt` VALUES ('12699', '19', '12692', '鱼台县', '鱼台县', '35');
INSERT INTO `tb_opt` VALUES ('12700', '19', '12692', '金乡县', '金乡县', '40');
INSERT INTO `tb_opt` VALUES ('12701', '19', '12692', '邹城市', '邹城市', '45');
INSERT INTO `tb_opt` VALUES ('12702', '19', '12692', '市中区', '市中区', '50');
INSERT INTO `tb_opt` VALUES ('12703', '19', '12692', '曲阜市', '曲阜市', '55');
INSERT INTO `tb_opt` VALUES ('12704', '19', '12692', '高新区', '高新区', '60');
INSERT INTO `tb_opt` VALUES ('12705', '19', '12692', '任城区', '任城区', '65');
INSERT INTO `tb_opt` VALUES ('12706', '19', '0', '安徽省', '安徽省', '70');
INSERT INTO `tb_opt` VALUES ('12707', '19', '12706', '铜陵市', '铜陵市', '5');
INSERT INTO `tb_opt` VALUES ('12708', '19', '12707', '铜官山区', '铜官山区', '5');
INSERT INTO `tb_opt` VALUES ('12709', '19', '12707', '郊区', '郊区', '10');
INSERT INTO `tb_opt` VALUES ('12710', '19', '12707', '狮子山区', '狮子山区', '15');
INSERT INTO `tb_opt` VALUES ('12711', '19', '12707', '铜陵县', '铜陵县', '20');
INSERT INTO `tb_opt` VALUES ('12712', '19', '12706', '合肥市', '合肥市', '10');
INSERT INTO `tb_opt` VALUES ('12713', '19', '12712', '包河区', '包河区', '5');
INSERT INTO `tb_opt` VALUES ('12714', '19', '12712', '蜀山区', '蜀山区', '10');
INSERT INTO `tb_opt` VALUES ('12715', '19', '12712', '瑶海区', '瑶海区', '15');
INSERT INTO `tb_opt` VALUES ('12716', '19', '12712', '庐阳区', '庐阳区', '20');
INSERT INTO `tb_opt` VALUES ('12717', '19', '12712', '滨湖新区', '滨湖新区', '25');
INSERT INTO `tb_opt` VALUES ('12718', '19', '12712', '经济技术开发区', '经济技术开发区', '30');
INSERT INTO `tb_opt` VALUES ('12719', '19', '12712', '高新技术开发区', '高新技术开发区', '35');
INSERT INTO `tb_opt` VALUES ('12720', '19', '12712', '新站综合开发试验区', '新站综合开发试验区', '40');
INSERT INTO `tb_opt` VALUES ('12721', '19', '12712', '肥西县', '肥西县', '45');
INSERT INTO `tb_opt` VALUES ('12722', '19', '12712', '政务文化新区', '政务文化新区', '50');
INSERT INTO `tb_opt` VALUES ('12723', '19', '12712', '巢湖市', '巢湖市', '55');
INSERT INTO `tb_opt` VALUES ('12724', '19', '12712', '长丰县', '长丰县', '60');
INSERT INTO `tb_opt` VALUES ('12725', '19', '12712', '肥东县', '肥东县', '65');
INSERT INTO `tb_opt` VALUES ('12726', '19', '12712', '庐江县', '庐江县', '70');
INSERT INTO `tb_opt` VALUES ('12727', '19', '12712', '北城新区', '北城新区', '75');
INSERT INTO `tb_opt` VALUES ('12728', '19', '12706', '淮南市', '淮南市', '15');
INSERT INTO `tb_opt` VALUES ('12729', '19', '12728', '淮南高新技术开发区', '淮南高新技术开发区', '5');
INSERT INTO `tb_opt` VALUES ('12730', '19', '12728', '田家庵区', '田家庵区', '10');
INSERT INTO `tb_opt` VALUES ('12731', '19', '12728', '大通区', '大通区', '15');
INSERT INTO `tb_opt` VALUES ('12732', '19', '12728', '谢家集区', '谢家集区', '20');
INSERT INTO `tb_opt` VALUES ('12733', '19', '12728', '八公山区', '八公山区', '25');
INSERT INTO `tb_opt` VALUES ('12734', '19', '12728', '凤台县', '凤台县', '30');
INSERT INTO `tb_opt` VALUES ('12735', '19', '12728', '潘集区', '潘集区', '35');
INSERT INTO `tb_opt` VALUES ('12736', '19', '12706', '淮北市', '淮北市', '20');
INSERT INTO `tb_opt` VALUES ('12737', '19', '12736', '杜集区', '杜集区', '5');
INSERT INTO `tb_opt` VALUES ('12738', '19', '12736', '烈山区', '烈山区', '10');
INSERT INTO `tb_opt` VALUES ('12739', '19', '12736', '濉溪县', '濉溪县', '15');
INSERT INTO `tb_opt` VALUES ('12740', '19', '12736', '相山区', '相山区', '20');
INSERT INTO `tb_opt` VALUES ('12741', '19', '12706', '芜湖市', '芜湖市', '25');
INSERT INTO `tb_opt` VALUES ('12742', '19', '12741', '镜湖区', '镜湖区', '5');
INSERT INTO `tb_opt` VALUES ('12743', '19', '12741', '弋江区', '弋江区', '10');
INSERT INTO `tb_opt` VALUES ('12744', '19', '12741', '无为县', '无为县', '15');
INSERT INTO `tb_opt` VALUES ('12745', '19', '12741', '芜湖县', '芜湖县', '20');
INSERT INTO `tb_opt` VALUES ('12746', '19', '12741', '繁昌县', '繁昌县', '25');
INSERT INTO `tb_opt` VALUES ('12747', '19', '12741', '南陵县', '南陵县', '30');
INSERT INTO `tb_opt` VALUES ('12748', '19', '12741', '鸠江区', '鸠江区', '35');
INSERT INTO `tb_opt` VALUES ('12749', '19', '12741', '三山区', '三山区', '40');
INSERT INTO `tb_opt` VALUES ('12750', '19', '12706', '蚌埠市', '蚌埠市', '30');
INSERT INTO `tb_opt` VALUES ('12751', '19', '12750', '蚌山区', '蚌山区', '5');
INSERT INTO `tb_opt` VALUES ('12752', '19', '12750', '怀远县', '怀远县', '10');
INSERT INTO `tb_opt` VALUES ('12753', '19', '12750', '固镇县', '固镇县', '15');
INSERT INTO `tb_opt` VALUES ('12754', '19', '12750', '五河县', '五河县', '20');
INSERT INTO `tb_opt` VALUES ('12755', '19', '12750', '淮上区', '淮上区', '25');
INSERT INTO `tb_opt` VALUES ('12756', '19', '12750', '龙子湖区', '龙子湖区', '30');
INSERT INTO `tb_opt` VALUES ('12757', '19', '12750', '禹会区', '禹会区', '35');
INSERT INTO `tb_opt` VALUES ('12758', '19', '12706', '马鞍山市', '马鞍山市', '35');
INSERT INTO `tb_opt` VALUES ('12759', '19', '12758', '博望区', '博望区', '5');
INSERT INTO `tb_opt` VALUES ('12760', '19', '12758', '花山区', '花山区', '10');
INSERT INTO `tb_opt` VALUES ('12761', '19', '12758', '雨山区', '雨山区', '15');
INSERT INTO `tb_opt` VALUES ('12762', '19', '12758', '当涂县', '当涂县', '20');
INSERT INTO `tb_opt` VALUES ('12763', '19', '12758', '含山县', '含山县', '25');
INSERT INTO `tb_opt` VALUES ('12764', '19', '12758', '和县', '和县', '30');
INSERT INTO `tb_opt` VALUES ('12765', '19', '12706', '安庆市', '安庆市', '40');
INSERT INTO `tb_opt` VALUES ('12766', '19', '12765', '桐城市', '桐城市', '5');
INSERT INTO `tb_opt` VALUES ('12767', '19', '12765', '宿松县', '宿松县', '10');
INSERT INTO `tb_opt` VALUES ('12768', '19', '12765', '枞阳县', '枞阳县', '15');
INSERT INTO `tb_opt` VALUES ('12769', '19', '12765', '太湖县', '太湖县', '20');
INSERT INTO `tb_opt` VALUES ('12770', '19', '12765', '怀宁县', '怀宁县', '25');
INSERT INTO `tb_opt` VALUES ('12771', '19', '12765', '岳西县', '岳西县', '30');
INSERT INTO `tb_opt` VALUES ('12772', '19', '12765', '望江县', '望江县', '35');
INSERT INTO `tb_opt` VALUES ('12773', '19', '12765', '潜山县', '潜山县', '40');
INSERT INTO `tb_opt` VALUES ('12774', '19', '12765', '大观区', '大观区', '45');
INSERT INTO `tb_opt` VALUES ('12775', '19', '12765', '宜秀区', '宜秀区', '50');
INSERT INTO `tb_opt` VALUES ('12776', '19', '12765', '迎江区', '迎江区', '55');
INSERT INTO `tb_opt` VALUES ('12777', '19', '12765', '开发区', '开发区', '60');
INSERT INTO `tb_opt` VALUES ('12778', '19', '12706', '黄山市', '黄山市', '45');
INSERT INTO `tb_opt` VALUES ('12779', '19', '12778', '徽州区', '徽州区', '5');
INSERT INTO `tb_opt` VALUES ('12780', '19', '12778', '屯溪区', '屯溪区', '10');
INSERT INTO `tb_opt` VALUES ('12781', '19', '12778', '休宁县', '休宁县', '15');
INSERT INTO `tb_opt` VALUES ('12782', '19', '12778', '歙县', '歙县', '20');
INSERT INTO `tb_opt` VALUES ('12783', '19', '12778', '黟县', '黟县', '25');
INSERT INTO `tb_opt` VALUES ('12784', '19', '12778', '祁门县', '祁门县', '30');
INSERT INTO `tb_opt` VALUES ('12785', '19', '12778', '黄山区', '黄山区', '35');
INSERT INTO `tb_opt` VALUES ('12786', '19', '12706', '滁州市', '滁州市', '50');
INSERT INTO `tb_opt` VALUES ('12787', '19', '12786', '琅琊区', '琅琊区', '5');
INSERT INTO `tb_opt` VALUES ('12788', '19', '12786', '天长市', '天长市', '10');
INSERT INTO `tb_opt` VALUES ('12789', '19', '12786', '明光市', '明光市', '15');
INSERT INTO `tb_opt` VALUES ('12790', '19', '12786', '全椒县', '全椒县', '20');
INSERT INTO `tb_opt` VALUES ('12791', '19', '12786', '来安县', '来安县', '25');
INSERT INTO `tb_opt` VALUES ('12792', '19', '12786', '南谯区', '南谯区', '30');
INSERT INTO `tb_opt` VALUES ('12793', '19', '12786', '定远县', '定远县', '35');
INSERT INTO `tb_opt` VALUES ('12794', '19', '12786', '凤阳县', '凤阳县', '40');
INSERT INTO `tb_opt` VALUES ('12795', '19', '12706', '阜阳市', '阜阳市', '55');
INSERT INTO `tb_opt` VALUES ('12796', '19', '12795', '经济开发区', '经济开发区', '5');
INSERT INTO `tb_opt` VALUES ('12797', '19', '12795', '界首市', '界首市', '10');
INSERT INTO `tb_opt` VALUES ('12798', '19', '12795', '太和县', '太和县', '15');
INSERT INTO `tb_opt` VALUES ('12799', '19', '12795', '阜南县', '阜南县', '20');
INSERT INTO `tb_opt` VALUES ('12800', '19', '12795', '颍上县', '颍上县', '25');
INSERT INTO `tb_opt` VALUES ('12801', '19', '12795', '临泉县', '临泉县', '30');
INSERT INTO `tb_opt` VALUES ('12802', '19', '12795', '颍泉区', '颍泉区', '35');
INSERT INTO `tb_opt` VALUES ('12803', '19', '12795', '颍州区', '颍州区', '40');
INSERT INTO `tb_opt` VALUES ('12804', '19', '12795', '颍东区', '颍东区', '45');
INSERT INTO `tb_opt` VALUES ('12805', '19', '12706', '亳州市', '亳州市', '60');
INSERT INTO `tb_opt` VALUES ('12806', '19', '12805', '利辛县', '利辛县', '5');
INSERT INTO `tb_opt` VALUES ('12807', '19', '12805', '蒙城县', '蒙城县', '10');
INSERT INTO `tb_opt` VALUES ('12808', '19', '12805', '涡阳县', '涡阳县', '15');
INSERT INTO `tb_opt` VALUES ('12809', '19', '12805', '谯城区', '谯城区', '20');
INSERT INTO `tb_opt` VALUES ('12810', '19', '12706', '宿州市', '宿州市', '65');
INSERT INTO `tb_opt` VALUES ('12811', '19', '12810', '经济开发区', '经济开发区', '5');
INSERT INTO `tb_opt` VALUES ('12812', '19', '12810', '埇桥区', '埇桥区', '10');
INSERT INTO `tb_opt` VALUES ('12813', '19', '12810', '灵璧县', '灵璧县', '15');
INSERT INTO `tb_opt` VALUES ('12814', '19', '12810', '泗县', '泗县', '20');
INSERT INTO `tb_opt` VALUES ('12815', '19', '12810', '萧县', '萧县', '25');
INSERT INTO `tb_opt` VALUES ('12816', '19', '12810', '砀山县', '砀山县', '30');
INSERT INTO `tb_opt` VALUES ('12817', '19', '12706', '池州市', '池州市', '70');
INSERT INTO `tb_opt` VALUES ('12818', '19', '12817', '贵池区', '贵池区', '5');
INSERT INTO `tb_opt` VALUES ('12819', '19', '12817', '东至县', '东至县', '10');
INSERT INTO `tb_opt` VALUES ('12820', '19', '12817', '石台县', '石台县', '15');
INSERT INTO `tb_opt` VALUES ('12821', '19', '12817', '青阳县', '青阳县', '20');
INSERT INTO `tb_opt` VALUES ('12822', '19', '12706', '六安市', '六安市', '75');
INSERT INTO `tb_opt` VALUES ('12823', '19', '12822', '寿县', '寿县', '5');
INSERT INTO `tb_opt` VALUES ('12824', '19', '12822', '霍山县', '霍山县', '10');
INSERT INTO `tb_opt` VALUES ('12825', '19', '12822', '金寨县', '金寨县', '15');
INSERT INTO `tb_opt` VALUES ('12826', '19', '12822', '霍邱县', '霍邱县', '20');
INSERT INTO `tb_opt` VALUES ('12827', '19', '12822', '舒城县', '舒城县', '25');
INSERT INTO `tb_opt` VALUES ('12828', '19', '12822', '金安区', '金安区', '30');
INSERT INTO `tb_opt` VALUES ('12829', '19', '12822', '裕安区', '裕安区', '35');
INSERT INTO `tb_opt` VALUES ('12830', '19', '12706', '宣城市', '宣城市', '80');
INSERT INTO `tb_opt` VALUES ('12831', '19', '12830', '旌德县', '旌德县', '5');
INSERT INTO `tb_opt` VALUES ('12832', '19', '12830', '宁国市', '宁国市', '10');
INSERT INTO `tb_opt` VALUES ('12833', '19', '12830', '郎溪县', '郎溪县', '15');
INSERT INTO `tb_opt` VALUES ('12834', '19', '12830', '广德县', '广德县', '20');
INSERT INTO `tb_opt` VALUES ('12835', '19', '12830', '绩溪县', '绩溪县', '25');
INSERT INTO `tb_opt` VALUES ('12836', '19', '12830', '泾县', '泾县', '30');
INSERT INTO `tb_opt` VALUES ('12837', '19', '12830', '宣州区', '宣州区', '35');
INSERT INTO `tb_opt` VALUES ('12838', '19', '0', '浙江省', '浙江省', '75');
INSERT INTO `tb_opt` VALUES ('12839', '19', '12838', '宁波市', '宁波市', '5');
INSERT INTO `tb_opt` VALUES ('12840', '19', '12839', '海曙区', '海曙区', '5');
INSERT INTO `tb_opt` VALUES ('12841', '19', '12839', '江东区', '江东区', '10');
INSERT INTO `tb_opt` VALUES ('12842', '19', '12839', '高新科技开发区', '高新科技开发区', '15');
INSERT INTO `tb_opt` VALUES ('12843', '19', '12839', '慈溪市', '慈溪市', '20');
INSERT INTO `tb_opt` VALUES ('12844', '19', '12839', '北仑区', '北仑区', '25');
INSERT INTO `tb_opt` VALUES ('12845', '19', '12839', '镇海区', '镇海区', '30');
INSERT INTO `tb_opt` VALUES ('12846', '19', '12839', '鄞州区', '鄞州区', '35');
INSERT INTO `tb_opt` VALUES ('12847', '19', '12839', '江北区', '江北区', '40');
INSERT INTO `tb_opt` VALUES ('12848', '19', '12839', '余姚市', '余姚市', '45');
INSERT INTO `tb_opt` VALUES ('12849', '19', '12839', '奉化市', '奉化市', '50');
INSERT INTO `tb_opt` VALUES ('12850', '19', '12839', '宁海县', '宁海县', '55');
INSERT INTO `tb_opt` VALUES ('12851', '19', '12839', '象山县', '象山县', '60');
INSERT INTO `tb_opt` VALUES ('12852', '19', '12838', '杭州市', '杭州市', '10');
INSERT INTO `tb_opt` VALUES ('12853', '19', '12852', '上城区', '上城区', '5');
INSERT INTO `tb_opt` VALUES ('12854', '19', '12852', '下城区', '下城区', '10');
INSERT INTO `tb_opt` VALUES ('12855', '19', '12852', '拱墅区', '拱墅区', '15');
INSERT INTO `tb_opt` VALUES ('12856', '19', '12852', '西湖区', '西湖区', '20');
INSERT INTO `tb_opt` VALUES ('12857', '19', '12852', '江干区', '江干区', '25');
INSERT INTO `tb_opt` VALUES ('12858', '19', '12852', '下沙区', '下沙区', '30');
INSERT INTO `tb_opt` VALUES ('12859', '19', '12852', '余杭区', '余杭区', '35');
INSERT INTO `tb_opt` VALUES ('12860', '19', '12852', '萧山区', '萧山区', '40');
INSERT INTO `tb_opt` VALUES ('12861', '19', '12852', '滨江区', '滨江区', '45');
INSERT INTO `tb_opt` VALUES ('12862', '19', '12852', '临安市', '临安市', '50');
INSERT INTO `tb_opt` VALUES ('12863', '19', '12852', '富阳市', '富阳市', '55');
INSERT INTO `tb_opt` VALUES ('12864', '19', '12852', '桐庐县', '桐庐县', '60');
INSERT INTO `tb_opt` VALUES ('12865', '19', '12852', '建德市', '建德市', '65');
INSERT INTO `tb_opt` VALUES ('12866', '19', '12852', '淳安县', '淳安县', '70');
INSERT INTO `tb_opt` VALUES ('12867', '19', '12838', '温州市', '温州市', '15');
INSERT INTO `tb_opt` VALUES ('12868', '19', '12867', '龙湾区', '龙湾区', '5');
INSERT INTO `tb_opt` VALUES ('12869', '19', '12867', '茶山高教园区', '茶山高教园区', '10');
INSERT INTO `tb_opt` VALUES ('12870', '19', '12867', '瑞安市', '瑞安市', '15');
INSERT INTO `tb_opt` VALUES ('12871', '19', '12867', '乐清市', '乐清市', '20');
INSERT INTO `tb_opt` VALUES ('12872', '19', '12867', '鹿城区', '鹿城区', '25');
INSERT INTO `tb_opt` VALUES ('12873', '19', '12867', '瓯海区', '瓯海区', '30');
INSERT INTO `tb_opt` VALUES ('12874', '19', '12867', '永嘉县', '永嘉县', '35');
INSERT INTO `tb_opt` VALUES ('12875', '19', '12867', '文成县', '文成县', '40');
INSERT INTO `tb_opt` VALUES ('12876', '19', '12867', '平阳县', '平阳县', '45');
INSERT INTO `tb_opt` VALUES ('12877', '19', '12867', '泰顺县', '泰顺县', '50');
INSERT INTO `tb_opt` VALUES ('12878', '19', '12867', '洞头县', '洞头县', '55');
INSERT INTO `tb_opt` VALUES ('12879', '19', '12867', '苍南县', '苍南县', '60');
INSERT INTO `tb_opt` VALUES ('12880', '19', '12838', '嘉兴市', '嘉兴市', '20');
INSERT INTO `tb_opt` VALUES ('12881', '19', '12880', '桐乡市', '桐乡市', '5');
INSERT INTO `tb_opt` VALUES ('12882', '19', '12880', '平湖市', '平湖市', '10');
INSERT INTO `tb_opt` VALUES ('12883', '19', '12880', '嘉善县', '嘉善县', '15');
INSERT INTO `tb_opt` VALUES ('12884', '19', '12880', '南湖区', '南湖区', '20');
INSERT INTO `tb_opt` VALUES ('12885', '19', '12880', '秀洲区', '秀洲区', '25');
INSERT INTO `tb_opt` VALUES ('12886', '19', '12880', '海宁市', '海宁市', '30');
INSERT INTO `tb_opt` VALUES ('12887', '19', '12880', '海盐县', '海盐县', '35');
INSERT INTO `tb_opt` VALUES ('12888', '19', '12838', '湖州市', '湖州市', '25');
INSERT INTO `tb_opt` VALUES ('12889', '19', '12888', '南浔区', '南浔区', '5');
INSERT INTO `tb_opt` VALUES ('12890', '19', '12888', '吴兴区', '吴兴区', '10');
INSERT INTO `tb_opt` VALUES ('12891', '19', '12888', '长兴县', '长兴县', '15');
INSERT INTO `tb_opt` VALUES ('12892', '19', '12888', '德清县', '德清县', '20');
INSERT INTO `tb_opt` VALUES ('12893', '19', '12888', '安吉县', '安吉县', '25');
INSERT INTO `tb_opt` VALUES ('12894', '19', '12838', '绍兴市', '绍兴市', '30');
INSERT INTO `tb_opt` VALUES ('12895', '19', '12894', '柯桥区', '柯桥区', '5');
INSERT INTO `tb_opt` VALUES ('12896', '19', '12894', '越城区', '越城区', '10');
INSERT INTO `tb_opt` VALUES ('12897', '19', '12894', '诸暨市', '诸暨市', '15');
INSERT INTO `tb_opt` VALUES ('12898', '19', '12894', '上虞区', '上虞区', '20');
INSERT INTO `tb_opt` VALUES ('12899', '19', '12894', '嵊州市', '嵊州市', '25');
INSERT INTO `tb_opt` VALUES ('12900', '19', '12894', '新昌县', '新昌县', '30');
INSERT INTO `tb_opt` VALUES ('12901', '19', '12838', '金华市', '金华市', '35');
INSERT INTO `tb_opt` VALUES ('12902', '19', '12901', '金东区', '金东区', '5');
INSERT INTO `tb_opt` VALUES ('12903', '19', '12901', '婺城区', '婺城区', '10');
INSERT INTO `tb_opt` VALUES ('12904', '19', '12901', '兰溪市', '兰溪市', '15');
INSERT INTO `tb_opt` VALUES ('12905', '19', '12901', '武义县', '武义县', '20');
INSERT INTO `tb_opt` VALUES ('12906', '19', '12901', '浦江县', '浦江县', '25');
INSERT INTO `tb_opt` VALUES ('12907', '19', '12901', '磐安县', '磐安县', '30');
INSERT INTO `tb_opt` VALUES ('12908', '19', '12901', '义乌市', '义乌市', '35');
INSERT INTO `tb_opt` VALUES ('12909', '19', '12901', '永康市', '永康市', '40');
INSERT INTO `tb_opt` VALUES ('12910', '19', '12901', '东阳市', '东阳市', '45');
INSERT INTO `tb_opt` VALUES ('12911', '19', '12838', '衢州市', '衢州市', '40');
INSERT INTO `tb_opt` VALUES ('12912', '19', '12911', '柯城区', '柯城区', '5');
INSERT INTO `tb_opt` VALUES ('12913', '19', '12911', '衢江区', '衢江区', '10');
INSERT INTO `tb_opt` VALUES ('12914', '19', '12911', '江山市', '江山市', '15');
INSERT INTO `tb_opt` VALUES ('12915', '19', '12911', '常山县', '常山县', '20');
INSERT INTO `tb_opt` VALUES ('12916', '19', '12911', '开化县', '开化县', '25');
INSERT INTO `tb_opt` VALUES ('12917', '19', '12911', '龙游县', '龙游县', '30');
INSERT INTO `tb_opt` VALUES ('12918', '19', '12838', '丽水市', '丽水市', '45');
INSERT INTO `tb_opt` VALUES ('12919', '19', '12918', '龙泉市', '龙泉市', '5');
INSERT INTO `tb_opt` VALUES ('12920', '19', '12918', '缙云县', '缙云县', '10');
INSERT INTO `tb_opt` VALUES ('12921', '19', '12918', '遂昌县', '遂昌县', '15');
INSERT INTO `tb_opt` VALUES ('12922', '19', '12918', '松阳县', '松阳县', '20');
INSERT INTO `tb_opt` VALUES ('12923', '19', '12918', '景宁县', '景宁县', '25');
INSERT INTO `tb_opt` VALUES ('12924', '19', '12918', '云和县', '云和县', '30');
INSERT INTO `tb_opt` VALUES ('12925', '19', '12918', '青田县', '青田县', '35');
INSERT INTO `tb_opt` VALUES ('12926', '19', '12918', '莲都区', '莲都区', '40');
INSERT INTO `tb_opt` VALUES ('12927', '19', '12918', '庆元县', '庆元县', '45');
INSERT INTO `tb_opt` VALUES ('12928', '19', '12838', '台州市', '台州市', '50');
INSERT INTO `tb_opt` VALUES ('12929', '19', '12928', '临海市', '临海市', '5');
INSERT INTO `tb_opt` VALUES ('12930', '19', '12928', '三门县', '三门县', '10');
INSERT INTO `tb_opt` VALUES ('12931', '19', '12928', '天台县', '天台县', '15');
INSERT INTO `tb_opt` VALUES ('12932', '19', '12928', '仙居县', '仙居县', '20');
INSERT INTO `tb_opt` VALUES ('12933', '19', '12928', '黄岩区', '黄岩区', '25');
INSERT INTO `tb_opt` VALUES ('12934', '19', '12928', '椒江区', '椒江区', '30');
INSERT INTO `tb_opt` VALUES ('12935', '19', '12928', '路桥区', '路桥区', '35');
INSERT INTO `tb_opt` VALUES ('12936', '19', '12928', '温岭市', '温岭市', '40');
INSERT INTO `tb_opt` VALUES ('12937', '19', '12928', '玉环县', '玉环县', '45');
INSERT INTO `tb_opt` VALUES ('12938', '19', '12838', '舟山市', '舟山市', '55');
INSERT INTO `tb_opt` VALUES ('12939', '19', '12938', '岱山县', '岱山县', '5');
INSERT INTO `tb_opt` VALUES ('12940', '19', '12938', '嵊泗县', '嵊泗县', '10');
INSERT INTO `tb_opt` VALUES ('12941', '19', '12938', '普陀区', '普陀区', '15');
INSERT INTO `tb_opt` VALUES ('12942', '19', '12938', '定海区', '定海区', '20');
INSERT INTO `tb_opt` VALUES ('12943', '19', '0', '福建省', '福建省', '80');
INSERT INTO `tb_opt` VALUES ('12944', '19', '12943', '福州市', '福州市', '5');
INSERT INTO `tb_opt` VALUES ('12945', '19', '12944', '台江区', '台江区', '5');
INSERT INTO `tb_opt` VALUES ('12946', '19', '12944', '鼓楼区', '鼓楼区', '10');
INSERT INTO `tb_opt` VALUES ('12947', '19', '12944', '晋安区', '晋安区', '15');
INSERT INTO `tb_opt` VALUES ('12948', '19', '12944', '仓山区', '仓山区', '20');
INSERT INTO `tb_opt` VALUES ('12949', '19', '12944', '马尾区', '马尾区', '25');
INSERT INTO `tb_opt` VALUES ('12950', '19', '12944', '福清市', '福清市', '30');
INSERT INTO `tb_opt` VALUES ('12951', '19', '12944', '闽侯县', '闽侯县', '35');
INSERT INTO `tb_opt` VALUES ('12952', '19', '12944', '长乐市', '长乐市', '40');
INSERT INTO `tb_opt` VALUES ('12953', '19', '12944', '平潭县', '平潭县', '45');
INSERT INTO `tb_opt` VALUES ('12954', '19', '12944', '连江县', '连江县', '50');
INSERT INTO `tb_opt` VALUES ('12955', '19', '12944', '罗源县', '罗源县', '55');
INSERT INTO `tb_opt` VALUES ('12956', '19', '12944', '永泰县', '永泰县', '60');
INSERT INTO `tb_opt` VALUES ('12957', '19', '12944', '闽清县', '闽清县', '65');
INSERT INTO `tb_opt` VALUES ('12958', '19', '12943', '厦门市', '厦门市', '10');
INSERT INTO `tb_opt` VALUES ('12959', '19', '12958', '思明区', '思明区', '5');
INSERT INTO `tb_opt` VALUES ('12960', '19', '12958', '湖里区', '湖里区', '10');
INSERT INTO `tb_opt` VALUES ('12961', '19', '12958', '翔安区', '翔安区', '15');
INSERT INTO `tb_opt` VALUES ('12962', '19', '12958', '海沧区', '海沧区', '20');
INSERT INTO `tb_opt` VALUES ('12963', '19', '12958', '集美区', '集美区', '25');
INSERT INTO `tb_opt` VALUES ('12964', '19', '12958', '同安区', '同安区', '30');
INSERT INTO `tb_opt` VALUES ('12965', '19', '12943', '三明市', '三明市', '15');
INSERT INTO `tb_opt` VALUES ('12966', '19', '12965', '永安市', '永安市', '5');
INSERT INTO `tb_opt` VALUES ('12967', '19', '12965', '明溪县', '明溪县', '10');
INSERT INTO `tb_opt` VALUES ('12968', '19', '12965', '将乐县', '将乐县', '15');
INSERT INTO `tb_opt` VALUES ('12969', '19', '12965', '大田县', '大田县', '20');
INSERT INTO `tb_opt` VALUES ('12970', '19', '12965', '宁化县', '宁化县', '25');
INSERT INTO `tb_opt` VALUES ('12971', '19', '12965', '建宁县', '建宁县', '30');
INSERT INTO `tb_opt` VALUES ('12972', '19', '12965', '沙县', '沙县', '35');
INSERT INTO `tb_opt` VALUES ('12973', '19', '12965', '尤溪县', '尤溪县', '40');
INSERT INTO `tb_opt` VALUES ('12974', '19', '12965', '清流县', '清流县', '45');
INSERT INTO `tb_opt` VALUES ('12975', '19', '12965', '泰宁县', '泰宁县', '50');
INSERT INTO `tb_opt` VALUES ('12976', '19', '12965', '梅列区', '梅列区', '55');
INSERT INTO `tb_opt` VALUES ('12977', '19', '12965', '三元区', '三元区', '60');
INSERT INTO `tb_opt` VALUES ('12978', '19', '12943', '莆田市', '莆田市', '20');
INSERT INTO `tb_opt` VALUES ('12979', '19', '12978', '仙游县', '仙游县', '5');
INSERT INTO `tb_opt` VALUES ('12980', '19', '12978', '城厢区', '城厢区', '10');
INSERT INTO `tb_opt` VALUES ('12981', '19', '12978', '荔城区', '荔城区', '15');
INSERT INTO `tb_opt` VALUES ('12982', '19', '12978', '秀屿区', '秀屿区', '20');
INSERT INTO `tb_opt` VALUES ('12983', '19', '12978', '涵江区', '涵江区', '25');
INSERT INTO `tb_opt` VALUES ('12984', '19', '12943', '泉州市', '泉州市', '25');
INSERT INTO `tb_opt` VALUES ('12985', '19', '12984', '泉港区', '泉港区', '5');
INSERT INTO `tb_opt` VALUES ('12986', '19', '12984', '石狮市', '石狮市', '10');
INSERT INTO `tb_opt` VALUES ('12987', '19', '12984', '南安市', '南安市', '15');
INSERT INTO `tb_opt` VALUES ('12988', '19', '12984', '惠安县', '惠安县', '20');
INSERT INTO `tb_opt` VALUES ('12989', '19', '12984', '安溪县', '安溪县', '25');
INSERT INTO `tb_opt` VALUES ('12990', '19', '12984', '德化县', '德化县', '30');
INSERT INTO `tb_opt` VALUES ('12991', '19', '12984', '永春县', '永春县', '35');
INSERT INTO `tb_opt` VALUES ('12992', '19', '12984', '金门县', '金门县', '40');
INSERT INTO `tb_opt` VALUES ('12993', '19', '12984', '洛江区', '洛江区', '45');
INSERT INTO `tb_opt` VALUES ('12994', '19', '12984', '鲤城区', '鲤城区', '50');
INSERT INTO `tb_opt` VALUES ('12995', '19', '12984', '丰泽区', '丰泽区', '55');
INSERT INTO `tb_opt` VALUES ('12996', '19', '12984', '晋江市', '晋江市', '60');
INSERT INTO `tb_opt` VALUES ('12997', '19', '12943', '漳州市', '漳州市', '30');
INSERT INTO `tb_opt` VALUES ('12998', '19', '12997', '芗城区', '芗城区', '5');
INSERT INTO `tb_opt` VALUES ('12999', '19', '12997', '龙文区', '龙文区', '10');
INSERT INTO `tb_opt` VALUES ('13000', '19', '12997', '龙海市', '龙海市', '15');
INSERT INTO `tb_opt` VALUES ('13001', '19', '12997', '平和县', '平和县', '20');
INSERT INTO `tb_opt` VALUES ('13002', '19', '12997', '南靖县', '南靖县', '25');
INSERT INTO `tb_opt` VALUES ('13003', '19', '12997', '诏安县', '诏安县', '30');
INSERT INTO `tb_opt` VALUES ('13004', '19', '12997', '漳浦县', '漳浦县', '35');
INSERT INTO `tb_opt` VALUES ('13005', '19', '12997', '华安县', '华安县', '40');
INSERT INTO `tb_opt` VALUES ('13006', '19', '12997', '云霄县', '云霄县', '45');
INSERT INTO `tb_opt` VALUES ('13007', '19', '12997', '东山县', '东山县', '50');
INSERT INTO `tb_opt` VALUES ('13008', '19', '12997', '长泰县', '长泰县', '55');
INSERT INTO `tb_opt` VALUES ('13009', '19', '12943', '南平市', '南平市', '35');
INSERT INTO `tb_opt` VALUES ('13010', '19', '13009', '建瓯市', '建瓯市', '5');
INSERT INTO `tb_opt` VALUES ('13011', '19', '13009', '邵武市', '邵武市', '10');
INSERT INTO `tb_opt` VALUES ('13012', '19', '13009', '武夷山市', '武夷山市', '15');
INSERT INTO `tb_opt` VALUES ('13013', '19', '13009', '建阳市', '建阳市', '20');
INSERT INTO `tb_opt` VALUES ('13014', '19', '13009', '松溪县', '松溪县', '25');
INSERT INTO `tb_opt` VALUES ('13015', '19', '13009', '顺昌县', '顺昌县', '30');
INSERT INTO `tb_opt` VALUES ('13016', '19', '13009', '浦城县', '浦城县', '35');
INSERT INTO `tb_opt` VALUES ('13017', '19', '13009', '政和县', '政和县', '40');
INSERT INTO `tb_opt` VALUES ('13018', '19', '13009', '光泽县', '光泽县', '45');
INSERT INTO `tb_opt` VALUES ('13019', '19', '13009', '延平区', '延平区', '50');
INSERT INTO `tb_opt` VALUES ('13020', '19', '12943', '龙岩市', '龙岩市', '40');
INSERT INTO `tb_opt` VALUES ('13021', '19', '13020', '新罗区', '新罗区', '5');
INSERT INTO `tb_opt` VALUES ('13022', '19', '13020', '漳平市', '漳平市', '10');
INSERT INTO `tb_opt` VALUES ('13023', '19', '13020', '长汀县', '长汀县', '15');
INSERT INTO `tb_opt` VALUES ('13024', '19', '13020', '武平县', '武平县', '20');
INSERT INTO `tb_opt` VALUES ('13025', '19', '13020', '永定县', '永定县', '25');
INSERT INTO `tb_opt` VALUES ('13026', '19', '13020', '上杭县', '上杭县', '30');
INSERT INTO `tb_opt` VALUES ('13027', '19', '13020', '连城县', '连城县', '35');
INSERT INTO `tb_opt` VALUES ('13028', '19', '12943', '宁德市', '宁德市', '45');
INSERT INTO `tb_opt` VALUES ('13029', '19', '13028', '蕉城区', '蕉城区', '5');
INSERT INTO `tb_opt` VALUES ('13030', '19', '13028', '东侨开发区', '东侨开发区', '10');
INSERT INTO `tb_opt` VALUES ('13031', '19', '13028', '福安市', '福安市', '15');
INSERT INTO `tb_opt` VALUES ('13032', '19', '13028', '福鼎市', '福鼎市', '20');
INSERT INTO `tb_opt` VALUES ('13033', '19', '13028', '寿宁县', '寿宁县', '25');
INSERT INTO `tb_opt` VALUES ('13034', '19', '13028', '霞浦县', '霞浦县', '30');
INSERT INTO `tb_opt` VALUES ('13035', '19', '13028', '柘荣县', '柘荣县', '35');
INSERT INTO `tb_opt` VALUES ('13036', '19', '13028', '屏南县', '屏南县', '40');
INSERT INTO `tb_opt` VALUES ('13037', '19', '13028', '古田县', '古田县', '45');
INSERT INTO `tb_opt` VALUES ('13038', '19', '13028', '周宁县', '周宁县', '50');
INSERT INTO `tb_opt` VALUES ('13039', '19', '0', '湖北省', '湖北省', '85');
INSERT INTO `tb_opt` VALUES ('13040', '19', '13039', '武汉市', '武汉市', '5');
INSERT INTO `tb_opt` VALUES ('13041', '19', '13040', '硚口区', '硚口区', '5');
INSERT INTO `tb_opt` VALUES ('13042', '19', '13040', '武昌区', '武昌区', '10');
INSERT INTO `tb_opt` VALUES ('13043', '19', '13040', '武汉经济技术开发区', '武汉经济技术开发区', '15');
INSERT INTO `tb_opt` VALUES ('13044', '19', '13040', '江岸区', '江岸区', '20');
INSERT INTO `tb_opt` VALUES ('13045', '19', '13040', '江汉区', '江汉区', '25');
INSERT INTO `tb_opt` VALUES ('13046', '19', '13040', '蔡甸区', '蔡甸区', '30');
INSERT INTO `tb_opt` VALUES ('13047', '19', '13040', '江夏区', '江夏区', '35');
INSERT INTO `tb_opt` VALUES ('13048', '19', '13040', '新洲区', '新洲区', '40');
INSERT INTO `tb_opt` VALUES ('13049', '19', '13040', '黄陂区', '黄陂区', '45');
INSERT INTO `tb_opt` VALUES ('13050', '19', '13040', '汉阳区', '汉阳区', '50');
INSERT INTO `tb_opt` VALUES ('13051', '19', '13040', '青山区', '青山区', '55');
INSERT INTO `tb_opt` VALUES ('13052', '19', '13040', '洪山区', '洪山区', '60');
INSERT INTO `tb_opt` VALUES ('13053', '19', '13040', '汉南区', '汉南区', '65');
INSERT INTO `tb_opt` VALUES ('13054', '19', '13040', '东西湖区', '东西湖区', '70');
INSERT INTO `tb_opt` VALUES ('13055', '19', '13039', '黄石市', '黄石市', '10');
INSERT INTO `tb_opt` VALUES ('13056', '19', '13055', '黄石港区', '黄石港区', '5');
INSERT INTO `tb_opt` VALUES ('13057', '19', '13055', '下陆区', '下陆区', '10');
INSERT INTO `tb_opt` VALUES ('13058', '19', '13055', '西塞山区', '西塞山区', '15');
INSERT INTO `tb_opt` VALUES ('13059', '19', '13055', '铁山区', '铁山区', '20');
INSERT INTO `tb_opt` VALUES ('13060', '19', '13055', '大冶市', '大冶市', '25');
INSERT INTO `tb_opt` VALUES ('13061', '19', '13055', '阳新县', '阳新县', '30');
INSERT INTO `tb_opt` VALUES ('13062', '19', '13055', '经济技术开发区', '经济技术开发区', '35');
INSERT INTO `tb_opt` VALUES ('13063', '19', '13039', '襄阳市', '襄阳市', '15');
INSERT INTO `tb_opt` VALUES ('13064', '19', '13063', '老河口市', '老河口市', '5');
INSERT INTO `tb_opt` VALUES ('13065', '19', '13063', '枣阳市', '枣阳市', '10');
INSERT INTO `tb_opt` VALUES ('13066', '19', '13063', '宜城市', '宜城市', '15');
INSERT INTO `tb_opt` VALUES ('13067', '19', '13063', '南漳县', '南漳县', '20');
INSERT INTO `tb_opt` VALUES ('13068', '19', '13063', '保康县', '保康县', '25');
INSERT INTO `tb_opt` VALUES ('13069', '19', '13063', '谷城县', '谷城县', '30');
INSERT INTO `tb_opt` VALUES ('13070', '19', '13063', '樊城区', '樊城区', '35');
INSERT INTO `tb_opt` VALUES ('13071', '19', '13063', '襄城区', '襄城区', '40');
INSERT INTO `tb_opt` VALUES ('13072', '19', '13063', '襄州区', '襄州区', '45');
INSERT INTO `tb_opt` VALUES ('13073', '19', '13039', '十堰市', '十堰市', '20');
INSERT INTO `tb_opt` VALUES ('13074', '19', '13073', '丹江口市', '丹江口市', '5');
INSERT INTO `tb_opt` VALUES ('13075', '19', '13073', '房县', '房县', '10');
INSERT INTO `tb_opt` VALUES ('13076', '19', '13073', '竹山县', '竹山县', '15');
INSERT INTO `tb_opt` VALUES ('13077', '19', '13073', '竹溪县', '竹溪县', '20');
INSERT INTO `tb_opt` VALUES ('13078', '19', '13073', '郧县', '郧县', '25');
INSERT INTO `tb_opt` VALUES ('13079', '19', '13073', '郧西县', '郧西县', '30');
INSERT INTO `tb_opt` VALUES ('13080', '19', '13073', '茅箭区', '茅箭区', '35');
INSERT INTO `tb_opt` VALUES ('13081', '19', '13073', '张湾区', '张湾区', '40');
INSERT INTO `tb_opt` VALUES ('13082', '19', '13039', '荆州市', '荆州市', '25');
INSERT INTO `tb_opt` VALUES ('13083', '19', '13082', '沙市区', '沙市区', '5');
INSERT INTO `tb_opt` VALUES ('13084', '19', '13082', '荆州区', '荆州区', '10');
INSERT INTO `tb_opt` VALUES ('13085', '19', '13082', '江陵县', '江陵县', '15');
INSERT INTO `tb_opt` VALUES ('13086', '19', '13082', '洪湖市', '洪湖市', '20');
INSERT INTO `tb_opt` VALUES ('13087', '19', '13082', '石首市', '石首市', '25');
INSERT INTO `tb_opt` VALUES ('13088', '19', '13082', '松滋市', '松滋市', '30');
INSERT INTO `tb_opt` VALUES ('13089', '19', '13082', '监利县', '监利县', '35');
INSERT INTO `tb_opt` VALUES ('13090', '19', '13082', '公安县', '公安县', '40');
INSERT INTO `tb_opt` VALUES ('13091', '19', '13039', '宜昌市', '宜昌市', '30');
INSERT INTO `tb_opt` VALUES ('13092', '19', '13091', '伍家岗区', '伍家岗区', '5');
INSERT INTO `tb_opt` VALUES ('13093', '19', '13091', '西陵区', '西陵区', '10');
INSERT INTO `tb_opt` VALUES ('13094', '19', '13091', '宜都市', '宜都市', '15');
INSERT INTO `tb_opt` VALUES ('13095', '19', '13091', '猇亭区', '猇亭区', '20');
INSERT INTO `tb_opt` VALUES ('13096', '19', '13091', '点军区', '点军区', '25');
INSERT INTO `tb_opt` VALUES ('13097', '19', '13091', '当阳市', '当阳市', '30');
INSERT INTO `tb_opt` VALUES ('13098', '19', '13091', '枝江市', '枝江市', '35');
INSERT INTO `tb_opt` VALUES ('13099', '19', '13091', '夷陵区', '夷陵区', '40');
INSERT INTO `tb_opt` VALUES ('13100', '19', '13091', '秭归县', '秭归县', '45');
INSERT INTO `tb_opt` VALUES ('13101', '19', '13091', '兴山县', '兴山县', '50');
INSERT INTO `tb_opt` VALUES ('13102', '19', '13091', '远安县', '远安县', '55');
INSERT INTO `tb_opt` VALUES ('13103', '19', '13091', '五峰土家族自治县', '五峰土家族自治县', '60');
INSERT INTO `tb_opt` VALUES ('13104', '19', '13091', '长阳土家族自治县', '长阳土家族自治县', '65');
INSERT INTO `tb_opt` VALUES ('13105', '19', '13039', '孝感市', '孝感市', '35');
INSERT INTO `tb_opt` VALUES ('13106', '19', '13105', '汉川市', '汉川市', '5');
INSERT INTO `tb_opt` VALUES ('13107', '19', '13105', '云梦县', '云梦县', '10');
INSERT INTO `tb_opt` VALUES ('13108', '19', '13105', '大悟县', '大悟县', '15');
INSERT INTO `tb_opt` VALUES ('13109', '19', '13105', '孝昌县', '孝昌县', '20');
INSERT INTO `tb_opt` VALUES ('13110', '19', '13105', '孝南区', '孝南区', '25');
INSERT INTO `tb_opt` VALUES ('13111', '19', '13105', '应城市', '应城市', '30');
INSERT INTO `tb_opt` VALUES ('13112', '19', '13105', '安陆市', '安陆市', '35');
INSERT INTO `tb_opt` VALUES ('13113', '19', '13039', '黄冈市', '黄冈市', '40');
INSERT INTO `tb_opt` VALUES ('13114', '19', '13113', '黄州区', '黄州区', '5');
INSERT INTO `tb_opt` VALUES ('13115', '19', '13113', '蕲春县', '蕲春县', '10');
INSERT INTO `tb_opt` VALUES ('13116', '19', '13113', '麻城市', '麻城市', '15');
INSERT INTO `tb_opt` VALUES ('13117', '19', '13113', '武穴市', '武穴市', '20');
INSERT INTO `tb_opt` VALUES ('13118', '19', '13113', '浠水县', '浠水县', '25');
INSERT INTO `tb_opt` VALUES ('13119', '19', '13113', '红安县', '红安县', '30');
INSERT INTO `tb_opt` VALUES ('13120', '19', '13113', '罗田县', '罗田县', '35');
INSERT INTO `tb_opt` VALUES ('13121', '19', '13113', '黄梅县', '黄梅县', '40');
INSERT INTO `tb_opt` VALUES ('13122', '19', '13113', '英山县', '英山县', '45');
INSERT INTO `tb_opt` VALUES ('13123', '19', '13113', '团风县', '团风县', '50');
INSERT INTO `tb_opt` VALUES ('13124', '19', '13039', '咸宁市', '咸宁市', '45');
INSERT INTO `tb_opt` VALUES ('13125', '19', '13124', '咸安区', '咸安区', '5');
INSERT INTO `tb_opt` VALUES ('13126', '19', '13124', '赤壁市', '赤壁市', '10');
INSERT INTO `tb_opt` VALUES ('13127', '19', '13124', '嘉鱼县', '嘉鱼县', '15');
INSERT INTO `tb_opt` VALUES ('13128', '19', '13124', '通山县', '通山县', '20');
INSERT INTO `tb_opt` VALUES ('13129', '19', '13124', '崇阳县', '崇阳县', '25');
INSERT INTO `tb_opt` VALUES ('13130', '19', '13124', '通城县', '通城县', '30');
INSERT INTO `tb_opt` VALUES ('13131', '19', '13039', '恩施州', '恩施州', '50');
INSERT INTO `tb_opt` VALUES ('13132', '19', '13131', '恩施市', '恩施市', '5');
INSERT INTO `tb_opt` VALUES ('13133', '19', '13131', '利川市', '利川市', '10');
INSERT INTO `tb_opt` VALUES ('13134', '19', '13131', '建始县', '建始县', '15');
INSERT INTO `tb_opt` VALUES ('13135', '19', '13131', '来凤县', '来凤县', '20');
INSERT INTO `tb_opt` VALUES ('13136', '19', '13131', '巴东县', '巴东县', '25');
INSERT INTO `tb_opt` VALUES ('13137', '19', '13131', '鹤峰县', '鹤峰县', '30');
INSERT INTO `tb_opt` VALUES ('13138', '19', '13131', '宣恩县', '宣恩县', '35');
INSERT INTO `tb_opt` VALUES ('13139', '19', '13131', '咸丰县', '咸丰县', '40');
INSERT INTO `tb_opt` VALUES ('13140', '19', '13039', '鄂州市', '鄂州市', '55');
INSERT INTO `tb_opt` VALUES ('13141', '19', '13140', '梁子湖区', '梁子湖区', '5');
INSERT INTO `tb_opt` VALUES ('13142', '19', '13140', '华容区', '华容区', '10');
INSERT INTO `tb_opt` VALUES ('13143', '19', '13140', '鄂城区', '鄂城区', '15');
INSERT INTO `tb_opt` VALUES ('13144', '19', '13039', '荆门市', '荆门市', '60');
INSERT INTO `tb_opt` VALUES ('13145', '19', '13144', '东宝区', '东宝区', '5');
INSERT INTO `tb_opt` VALUES ('13146', '19', '13144', '掇刀区', '掇刀区', '10');
INSERT INTO `tb_opt` VALUES ('13147', '19', '13144', '钟祥市', '钟祥市', '15');
INSERT INTO `tb_opt` VALUES ('13148', '19', '13144', '京山县', '京山县', '20');
INSERT INTO `tb_opt` VALUES ('13149', '19', '13144', '沙洋县', '沙洋县', '25');
INSERT INTO `tb_opt` VALUES ('13150', '19', '13039', '随州市', '随州市', '65');
INSERT INTO `tb_opt` VALUES ('13151', '19', '13150', '曾都区', '曾都区', '5');
INSERT INTO `tb_opt` VALUES ('13152', '19', '13150', '广水市', '广水市', '10');
INSERT INTO `tb_opt` VALUES ('13153', '19', '13150', '随县', '随县', '15');
INSERT INTO `tb_opt` VALUES ('13154', '19', '13039', '潜江市', '潜江市', '70');
INSERT INTO `tb_opt` VALUES ('13155', '19', '13154', '园林', '园林', '5');
INSERT INTO `tb_opt` VALUES ('13156', '19', '13154', '杨市', '杨市', '10');
INSERT INTO `tb_opt` VALUES ('13157', '19', '13154', '周矶', '周矶', '15');
INSERT INTO `tb_opt` VALUES ('13158', '19', '13154', '广华', '广华', '20');
INSERT INTO `tb_opt` VALUES ('13159', '19', '13154', '泰丰', '泰丰', '25');
INSERT INTO `tb_opt` VALUES ('13160', '19', '13154', '竹根滩镇', '竹根滩镇', '30');
INSERT INTO `tb_opt` VALUES ('13161', '19', '13154', '高石碑镇', '高石碑镇', '35');
INSERT INTO `tb_opt` VALUES ('13162', '19', '13154', '积玉口镇', '积玉口镇', '40');
INSERT INTO `tb_opt` VALUES ('13163', '19', '13154', '渔洋镇', '渔洋镇', '45');
INSERT INTO `tb_opt` VALUES ('13164', '19', '13154', '王场镇', '王场镇', '50');
INSERT INTO `tb_opt` VALUES ('13165', '19', '13154', '熊口镇', '熊口镇', '55');
INSERT INTO `tb_opt` VALUES ('13166', '19', '13154', '老新镇', '老新镇', '60');
INSERT INTO `tb_opt` VALUES ('13167', '19', '13154', '浩口镇', '浩口镇', '65');
INSERT INTO `tb_opt` VALUES ('13168', '19', '13154', '张金镇', '张金镇', '70');
INSERT INTO `tb_opt` VALUES ('13169', '19', '13154', '龙湾镇', '龙湾镇', '75');
INSERT INTO `tb_opt` VALUES ('13170', '19', '13154', '江汉石油管理局', '江汉石油管理局', '80');
INSERT INTO `tb_opt` VALUES ('13171', '19', '13154', '潜江经济开发区', '潜江经济开发区', '85');
INSERT INTO `tb_opt` VALUES ('13172', '19', '13154', '西大垸管理区', '西大垸管理区', '90');
INSERT INTO `tb_opt` VALUES ('13173', '19', '13154', '运粮湖管理区', '运粮湖管理区', '95');
INSERT INTO `tb_opt` VALUES ('13174', '19', '13154', '周矶管理区', '周矶管理区', '100');
INSERT INTO `tb_opt` VALUES ('13175', '19', '13154', '后湖管理区', '后湖管理区', '105');
INSERT INTO `tb_opt` VALUES ('13176', '19', '13154', '熊口管理区', '熊口管理区', '110');
INSERT INTO `tb_opt` VALUES ('13177', '19', '13154', '总口管理区', '总口管理区', '115');
INSERT INTO `tb_opt` VALUES ('13178', '19', '13154', '高场原种场', '高场原种场', '120');
INSERT INTO `tb_opt` VALUES ('13179', '19', '13154', '浩口原种场', '浩口原种场', '125');
INSERT INTO `tb_opt` VALUES ('13180', '19', '13039', '天门市', '天门市', '75');
INSERT INTO `tb_opt` VALUES ('13181', '19', '13180', '侨乡街道开发区', '侨乡街道开发区', '5');
INSERT INTO `tb_opt` VALUES ('13182', '19', '13180', '竟陵街道', '竟陵街道', '10');
INSERT INTO `tb_opt` VALUES ('13183', '19', '13180', '杨林街道', '杨林街道', '15');
INSERT INTO `tb_opt` VALUES ('13184', '19', '13180', '佛子山镇', '佛子山镇', '20');
INSERT INTO `tb_opt` VALUES ('13185', '19', '13180', '多宝镇', '多宝镇', '25');
INSERT INTO `tb_opt` VALUES ('13186', '19', '13180', '拖市镇', '拖市镇', '30');
INSERT INTO `tb_opt` VALUES ('13187', '19', '13180', '张港镇', '张港镇', '35');
INSERT INTO `tb_opt` VALUES ('13188', '19', '13180', '蒋场镇', '蒋场镇', '40');
INSERT INTO `tb_opt` VALUES ('13189', '19', '13180', '汪场镇', '汪场镇', '45');
INSERT INTO `tb_opt` VALUES ('13190', '19', '13180', '渔薪镇', '渔薪镇', '50');
INSERT INTO `tb_opt` VALUES ('13191', '19', '13180', '黄潭镇', '黄潭镇', '55');
INSERT INTO `tb_opt` VALUES ('13192', '19', '13180', '岳口镇', '岳口镇', '60');
INSERT INTO `tb_opt` VALUES ('13193', '19', '13180', '横林镇', '横林镇', '65');
INSERT INTO `tb_opt` VALUES ('13194', '19', '13180', '彭市镇', '彭市镇', '70');
INSERT INTO `tb_opt` VALUES ('13195', '19', '13180', '麻洋镇', '麻洋镇', '75');
INSERT INTO `tb_opt` VALUES ('13196', '19', '13180', '多祥镇', '多祥镇', '80');
INSERT INTO `tb_opt` VALUES ('13197', '19', '13180', '干驿镇', '干驿镇', '85');
INSERT INTO `tb_opt` VALUES ('13198', '19', '13180', '马湾镇', '马湾镇', '90');
INSERT INTO `tb_opt` VALUES ('13199', '19', '13180', '卢市镇', '卢市镇', '95');
INSERT INTO `tb_opt` VALUES ('13200', '19', '13180', '小板镇', '小板镇', '100');
INSERT INTO `tb_opt` VALUES ('13201', '19', '13180', '九真镇', '九真镇', '105');
INSERT INTO `tb_opt` VALUES ('13202', '19', '13180', '皂市镇', '皂市镇', '110');
INSERT INTO `tb_opt` VALUES ('13203', '19', '13180', '胡市镇', '胡市镇', '115');
INSERT INTO `tb_opt` VALUES ('13204', '19', '13180', '石河镇', '石河镇', '120');
INSERT INTO `tb_opt` VALUES ('13205', '19', '13180', '净潭乡', '净潭乡', '125');
INSERT INTO `tb_opt` VALUES ('13206', '19', '13180', '蒋湖农场', '蒋湖农场', '130');
INSERT INTO `tb_opt` VALUES ('13207', '19', '13180', '白茅湖农场', '白茅湖农场', '135');
INSERT INTO `tb_opt` VALUES ('13208', '19', '13180', '沉湖管委会', '沉湖管委会', '140');
INSERT INTO `tb_opt` VALUES ('13209', '19', '13039', '仙桃市', '仙桃市', '80');
INSERT INTO `tb_opt` VALUES ('13210', '19', '13209', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('13211', '19', '13209', '郑场镇', '郑场镇', '10');
INSERT INTO `tb_opt` VALUES ('13212', '19', '13209', '毛嘴镇', '毛嘴镇', '15');
INSERT INTO `tb_opt` VALUES ('13213', '19', '13209', '豆河镇', '豆河镇', '20');
INSERT INTO `tb_opt` VALUES ('13214', '19', '13209', '三伏潭镇', '三伏潭镇', '25');
INSERT INTO `tb_opt` VALUES ('13215', '19', '13209', '胡场镇', '胡场镇', '30');
INSERT INTO `tb_opt` VALUES ('13216', '19', '13209', '长埫口镇', '长埫口镇', '35');
INSERT INTO `tb_opt` VALUES ('13217', '19', '13209', '西流河镇', '西流河镇', '40');
INSERT INTO `tb_opt` VALUES ('13218', '19', '13209', '沙湖镇', '沙湖镇', '45');
INSERT INTO `tb_opt` VALUES ('13219', '19', '13209', '杨林尾镇', '杨林尾镇', '50');
INSERT INTO `tb_opt` VALUES ('13220', '19', '13209', '彭场镇', '彭场镇', '55');
INSERT INTO `tb_opt` VALUES ('13221', '19', '13209', '张沟镇', '张沟镇', '60');
INSERT INTO `tb_opt` VALUES ('13222', '19', '13209', '郭河镇', '郭河镇', '65');
INSERT INTO `tb_opt` VALUES ('13223', '19', '13209', '沔城镇', '沔城镇', '70');
INSERT INTO `tb_opt` VALUES ('13224', '19', '13209', '通海口镇', '通海口镇', '75');
INSERT INTO `tb_opt` VALUES ('13225', '19', '13209', '陈场镇', '陈场镇', '80');
INSERT INTO `tb_opt` VALUES ('13226', '19', '13209', '工业园区', '工业园区', '85');
INSERT INTO `tb_opt` VALUES ('13227', '19', '13209', '九合垸原种场', '九合垸原种场', '90');
INSERT INTO `tb_opt` VALUES ('13228', '19', '13209', '沙湖原种场', '沙湖原种场', '95');
INSERT INTO `tb_opt` VALUES ('13229', '19', '13209', '排湖渔场', '排湖渔场', '100');
INSERT INTO `tb_opt` VALUES ('13230', '19', '13209', '五湖渔场', '五湖渔场', '105');
INSERT INTO `tb_opt` VALUES ('13231', '19', '13209', '赵西垸林场', '赵西垸林场', '110');
INSERT INTO `tb_opt` VALUES ('13232', '19', '13209', '刘家垸林场', '刘家垸林场', '115');
INSERT INTO `tb_opt` VALUES ('13233', '19', '13209', '畜禽良种场', '畜禽良种场', '120');
INSERT INTO `tb_opt` VALUES ('13234', '19', '13039', '神农架林区', '神农架林区', '85');
INSERT INTO `tb_opt` VALUES ('13235', '19', '13234', '松柏镇', '松柏镇', '5');
INSERT INTO `tb_opt` VALUES ('13236', '19', '13234', '阳日镇', '阳日镇', '10');
INSERT INTO `tb_opt` VALUES ('13237', '19', '13234', '木鱼镇', '木鱼镇', '15');
INSERT INTO `tb_opt` VALUES ('13238', '19', '13234', '红坪镇', '红坪镇', '20');
INSERT INTO `tb_opt` VALUES ('13239', '19', '13234', '新华镇', '新华镇', '25');
INSERT INTO `tb_opt` VALUES ('13240', '19', '13234', '宋洛乡', '宋洛乡', '30');
INSERT INTO `tb_opt` VALUES ('13241', '19', '13234', '九湖乡', '九湖乡', '35');
INSERT INTO `tb_opt` VALUES ('13242', '19', '13234', '下谷坪乡', '下谷坪乡', '40');
INSERT INTO `tb_opt` VALUES ('13243', '19', '0', '湖南省', '湖南省', '90');
INSERT INTO `tb_opt` VALUES ('13244', '19', '13243', '长沙市', '长沙市', '5');
INSERT INTO `tb_opt` VALUES ('13245', '19', '13244', '芙蓉区', '芙蓉区', '5');
INSERT INTO `tb_opt` VALUES ('13246', '19', '13244', '岳麓区', '岳麓区', '10');
INSERT INTO `tb_opt` VALUES ('13247', '19', '13244', '雨花区', '雨花区', '15');
INSERT INTO `tb_opt` VALUES ('13248', '19', '13244', '开福区', '开福区', '20');
INSERT INTO `tb_opt` VALUES ('13249', '19', '13244', '天心区', '天心区', '25');
INSERT INTO `tb_opt` VALUES ('13250', '19', '13244', '浏阳市', '浏阳市', '30');
INSERT INTO `tb_opt` VALUES ('13251', '19', '13244', '长沙县', '长沙县', '35');
INSERT INTO `tb_opt` VALUES ('13252', '19', '13244', '宁乡县', '宁乡县', '40');
INSERT INTO `tb_opt` VALUES ('13253', '19', '13244', '望城区', '望城区', '45');
INSERT INTO `tb_opt` VALUES ('13254', '19', '13243', '株洲市', '株洲市', '10');
INSERT INTO `tb_opt` VALUES ('13255', '19', '13254', '天元区', '天元区', '5');
INSERT INTO `tb_opt` VALUES ('13256', '19', '13254', '石峰区', '石峰区', '10');
INSERT INTO `tb_opt` VALUES ('13257', '19', '13254', '芦淞区', '芦淞区', '15');
INSERT INTO `tb_opt` VALUES ('13258', '19', '13254', '荷塘区', '荷塘区', '20');
INSERT INTO `tb_opt` VALUES ('13259', '19', '13254', '醴陵市', '醴陵市', '25');
INSERT INTO `tb_opt` VALUES ('13260', '19', '13254', '株洲县', '株洲县', '30');
INSERT INTO `tb_opt` VALUES ('13261', '19', '13254', '攸县', '攸县', '35');
INSERT INTO `tb_opt` VALUES ('13262', '19', '13254', '茶陵县', '茶陵县', '40');
INSERT INTO `tb_opt` VALUES ('13263', '19', '13254', '炎陵县', '炎陵县', '45');
INSERT INTO `tb_opt` VALUES ('13264', '19', '13243', '湘潭市', '湘潭市', '15');
INSERT INTO `tb_opt` VALUES ('13265', '19', '13264', '雨湖区', '雨湖区', '5');
INSERT INTO `tb_opt` VALUES ('13266', '19', '13264', '岳塘区', '岳塘区', '10');
INSERT INTO `tb_opt` VALUES ('13267', '19', '13264', '湘乡市', '湘乡市', '15');
INSERT INTO `tb_opt` VALUES ('13268', '19', '13264', '湘潭县', '湘潭县', '20');
INSERT INTO `tb_opt` VALUES ('13269', '19', '13264', '韶山市', '韶山市', '25');
INSERT INTO `tb_opt` VALUES ('13270', '19', '13243', '韶山市', '韶山市', '20');
INSERT INTO `tb_opt` VALUES ('13271', '19', '13270', '韶山市区内', '韶山市区内', '5');
INSERT INTO `tb_opt` VALUES ('13272', '19', '13243', '衡阳市', '衡阳市', '25');
INSERT INTO `tb_opt` VALUES ('13273', '19', '13272', '蒸湘区', '蒸湘区', '5');
INSERT INTO `tb_opt` VALUES ('13274', '19', '13272', '石鼓区', '石鼓区', '10');
INSERT INTO `tb_opt` VALUES ('13275', '19', '13272', '珠晖区', '珠晖区', '15');
INSERT INTO `tb_opt` VALUES ('13276', '19', '13272', '雁峰区', '雁峰区', '20');
INSERT INTO `tb_opt` VALUES ('13277', '19', '13272', '常宁市', '常宁市', '25');
INSERT INTO `tb_opt` VALUES ('13278', '19', '13272', '衡阳县', '衡阳县', '30');
INSERT INTO `tb_opt` VALUES ('13279', '19', '13272', '耒阳市', '耒阳市', '35');
INSERT INTO `tb_opt` VALUES ('13280', '19', '13272', '衡东县', '衡东县', '40');
INSERT INTO `tb_opt` VALUES ('13281', '19', '13272', '衡南县', '衡南县', '45');
INSERT INTO `tb_opt` VALUES ('13282', '19', '13272', '衡山县', '衡山县', '50');
INSERT INTO `tb_opt` VALUES ('13283', '19', '13272', '祁东县', '祁东县', '55');
INSERT INTO `tb_opt` VALUES ('13284', '19', '13272', '南岳区', '南岳区', '60');
INSERT INTO `tb_opt` VALUES ('13285', '19', '13243', '邵阳市', '邵阳市', '30');
INSERT INTO `tb_opt` VALUES ('13286', '19', '13285', '大祥区', '大祥区', '5');
INSERT INTO `tb_opt` VALUES ('13287', '19', '13285', '双清区', '双清区', '10');
INSERT INTO `tb_opt` VALUES ('13288', '19', '13285', '北塔区', '北塔区', '15');
INSERT INTO `tb_opt` VALUES ('13289', '19', '13285', '武冈市', '武冈市', '20');
INSERT INTO `tb_opt` VALUES ('13290', '19', '13285', '邵东县', '邵东县', '25');
INSERT INTO `tb_opt` VALUES ('13291', '19', '13285', '洞口县', '洞口县', '30');
INSERT INTO `tb_opt` VALUES ('13292', '19', '13285', '新邵县', '新邵县', '35');
INSERT INTO `tb_opt` VALUES ('13293', '19', '13285', '绥宁县', '绥宁县', '40');
INSERT INTO `tb_opt` VALUES ('13294', '19', '13285', '新宁县', '新宁县', '45');
INSERT INTO `tb_opt` VALUES ('13295', '19', '13285', '邵阳县', '邵阳县', '50');
INSERT INTO `tb_opt` VALUES ('13296', '19', '13285', '隆回县', '隆回县', '55');
INSERT INTO `tb_opt` VALUES ('13297', '19', '13285', '城步县', '城步县', '60');
INSERT INTO `tb_opt` VALUES ('13298', '19', '13243', '岳阳市', '岳阳市', '35');
INSERT INTO `tb_opt` VALUES ('13299', '19', '13298', '岳阳楼区', '岳阳楼区', '5');
INSERT INTO `tb_opt` VALUES ('13300', '19', '13298', '君山区', '君山区', '10');
INSERT INTO `tb_opt` VALUES ('13301', '19', '13298', '云溪区', '云溪区', '15');
INSERT INTO `tb_opt` VALUES ('13302', '19', '13298', '临湘市', '临湘市', '20');
INSERT INTO `tb_opt` VALUES ('13303', '19', '13298', '汨罗市', '汨罗市', '25');
INSERT INTO `tb_opt` VALUES ('13304', '19', '13298', '岳阳县', '岳阳县', '30');
INSERT INTO `tb_opt` VALUES ('13305', '19', '13298', '湘阴县', '湘阴县', '35');
INSERT INTO `tb_opt` VALUES ('13306', '19', '13298', '华容县', '华容县', '40');
INSERT INTO `tb_opt` VALUES ('13307', '19', '13298', '平江县', '平江县', '45');
INSERT INTO `tb_opt` VALUES ('13308', '19', '13243', '常德市', '常德市', '40');
INSERT INTO `tb_opt` VALUES ('13309', '19', '13308', '汉寿县', '汉寿县', '5');
INSERT INTO `tb_opt` VALUES ('13310', '19', '13308', '石门县', '石门县', '10');
INSERT INTO `tb_opt` VALUES ('13311', '19', '13308', '安乡县', '安乡县', '15');
INSERT INTO `tb_opt` VALUES ('13312', '19', '13308', '鼎城区', '鼎城区', '20');
INSERT INTO `tb_opt` VALUES ('13313', '19', '13308', '武陵区', '武陵区', '25');
INSERT INTO `tb_opt` VALUES ('13314', '19', '13308', '津市市', '津市市', '30');
INSERT INTO `tb_opt` VALUES ('13315', '19', '13308', '澧县', '澧县', '35');
INSERT INTO `tb_opt` VALUES ('13316', '19', '13308', '临澧县', '临澧县', '40');
INSERT INTO `tb_opt` VALUES ('13317', '19', '13308', '桃源县', '桃源县', '45');
INSERT INTO `tb_opt` VALUES ('13318', '19', '13243', '张家界市', '张家界市', '45');
INSERT INTO `tb_opt` VALUES ('13319', '19', '13318', '慈利县', '慈利县', '5');
INSERT INTO `tb_opt` VALUES ('13320', '19', '13318', '桑植县', '桑植县', '10');
INSERT INTO `tb_opt` VALUES ('13321', '19', '13318', '武陵源区', '武陵源区', '15');
INSERT INTO `tb_opt` VALUES ('13322', '19', '13318', '永定区', '永定区', '20');
INSERT INTO `tb_opt` VALUES ('13323', '19', '13243', '郴州市', '郴州市', '50');
INSERT INTO `tb_opt` VALUES ('13324', '19', '13323', '资兴市', '资兴市', '5');
INSERT INTO `tb_opt` VALUES ('13325', '19', '13323', '宜章县', '宜章县', '10');
INSERT INTO `tb_opt` VALUES ('13326', '19', '13323', '安仁县', '安仁县', '15');
INSERT INTO `tb_opt` VALUES ('13327', '19', '13323', '汝城县', '汝城县', '20');
INSERT INTO `tb_opt` VALUES ('13328', '19', '13323', '嘉禾县', '嘉禾县', '25');
INSERT INTO `tb_opt` VALUES ('13329', '19', '13323', '临武县', '临武县', '30');
INSERT INTO `tb_opt` VALUES ('13330', '19', '13323', '桂东县', '桂东县', '35');
INSERT INTO `tb_opt` VALUES ('13331', '19', '13323', '永兴县', '永兴县', '40');
INSERT INTO `tb_opt` VALUES ('13332', '19', '13323', '桂阳县', '桂阳县', '45');
INSERT INTO `tb_opt` VALUES ('13333', '19', '13323', '北湖区', '北湖区', '50');
INSERT INTO `tb_opt` VALUES ('13334', '19', '13323', '苏仙区', '苏仙区', '55');
INSERT INTO `tb_opt` VALUES ('13335', '19', '13243', '益阳市', '益阳市', '55');
INSERT INTO `tb_opt` VALUES ('13336', '19', '13335', '南县', '南县', '5');
INSERT INTO `tb_opt` VALUES ('13337', '19', '13335', '桃江县', '桃江县', '10');
INSERT INTO `tb_opt` VALUES ('13338', '19', '13335', '安化县', '安化县', '15');
INSERT INTO `tb_opt` VALUES ('13339', '19', '13335', '赫山区', '赫山区', '20');
INSERT INTO `tb_opt` VALUES ('13340', '19', '13335', '资阳区', '资阳区', '25');
INSERT INTO `tb_opt` VALUES ('13341', '19', '13335', '沅江市', '沅江市', '30');
INSERT INTO `tb_opt` VALUES ('13342', '19', '13243', '永州市', '永州市', '60');
INSERT INTO `tb_opt` VALUES ('13343', '19', '13342', '冷水滩区', '冷水滩区', '5');
INSERT INTO `tb_opt` VALUES ('13344', '19', '13342', '祁阳县', '祁阳县', '10');
INSERT INTO `tb_opt` VALUES ('13345', '19', '13342', '双牌县', '双牌县', '15');
INSERT INTO `tb_opt` VALUES ('13346', '19', '13342', '道县', '道县', '20');
INSERT INTO `tb_opt` VALUES ('13347', '19', '13342', '江永县', '江永县', '25');
INSERT INTO `tb_opt` VALUES ('13348', '19', '13342', '江华县', '江华县', '30');
INSERT INTO `tb_opt` VALUES ('13349', '19', '13342', '宁远县', '宁远县', '35');
INSERT INTO `tb_opt` VALUES ('13350', '19', '13342', '新田县', '新田县', '40');
INSERT INTO `tb_opt` VALUES ('13351', '19', '13342', '蓝山县', '蓝山县', '45');
INSERT INTO `tb_opt` VALUES ('13352', '19', '13342', '东安县', '东安县', '50');
INSERT INTO `tb_opt` VALUES ('13353', '19', '13342', '零陵区', '零陵区', '55');
INSERT INTO `tb_opt` VALUES ('13354', '19', '13243', '怀化市', '怀化市', '65');
INSERT INTO `tb_opt` VALUES ('13355', '19', '13354', '鹤城区', '鹤城区', '5');
INSERT INTO `tb_opt` VALUES ('13356', '19', '13354', '洪江市', '洪江市', '10');
INSERT INTO `tb_opt` VALUES ('13357', '19', '13354', '会同县', '会同县', '15');
INSERT INTO `tb_opt` VALUES ('13358', '19', '13354', '溆浦县', '溆浦县', '20');
INSERT INTO `tb_opt` VALUES ('13359', '19', '13354', '中方县', '中方县', '25');
INSERT INTO `tb_opt` VALUES ('13360', '19', '13354', '辰溪县', '辰溪县', '30');
INSERT INTO `tb_opt` VALUES ('13361', '19', '13354', '靖州县', '靖州县', '35');
INSERT INTO `tb_opt` VALUES ('13362', '19', '13354', '通道县', '通道县', '40');
INSERT INTO `tb_opt` VALUES ('13363', '19', '13354', '芷江县', '芷江县', '45');
INSERT INTO `tb_opt` VALUES ('13364', '19', '13354', '新晃县', '新晃县', '50');
INSERT INTO `tb_opt` VALUES ('13365', '19', '13354', '麻阳县', '麻阳县', '55');
INSERT INTO `tb_opt` VALUES ('13366', '19', '13354', '沅陵县', '沅陵县', '60');
INSERT INTO `tb_opt` VALUES ('13367', '19', '13243', '娄底市', '娄底市', '70');
INSERT INTO `tb_opt` VALUES ('13368', '19', '13367', '娄星区', '娄星区', '5');
INSERT INTO `tb_opt` VALUES ('13369', '19', '13367', '冷水江市', '冷水江市', '10');
INSERT INTO `tb_opt` VALUES ('13370', '19', '13367', '涟源市', '涟源市', '15');
INSERT INTO `tb_opt` VALUES ('13371', '19', '13367', '新化县', '新化县', '20');
INSERT INTO `tb_opt` VALUES ('13372', '19', '13367', '双峰县', '双峰县', '25');
INSERT INTO `tb_opt` VALUES ('13373', '19', '13243', '湘西州', '湘西州', '75');
INSERT INTO `tb_opt` VALUES ('13374', '19', '13373', '吉首市', '吉首市', '5');
INSERT INTO `tb_opt` VALUES ('13375', '19', '13373', '古丈县', '古丈县', '10');
INSERT INTO `tb_opt` VALUES ('13376', '19', '13373', '龙山县', '龙山县', '15');
INSERT INTO `tb_opt` VALUES ('13377', '19', '13373', '永顺县', '永顺县', '20');
INSERT INTO `tb_opt` VALUES ('13378', '19', '13373', '泸溪县', '泸溪县', '25');
INSERT INTO `tb_opt` VALUES ('13379', '19', '13373', '凤凰县', '凤凰县', '30');
INSERT INTO `tb_opt` VALUES ('13380', '19', '13373', '花垣县', '花垣县', '35');
INSERT INTO `tb_opt` VALUES ('13381', '19', '13373', '保靖县', '保靖县', '40');
INSERT INTO `tb_opt` VALUES ('13382', '19', '0', '广东省', '广东省', '95');
INSERT INTO `tb_opt` VALUES ('13383', '19', '13382', '广州市', '广州市', '5');
INSERT INTO `tb_opt` VALUES ('13384', '19', '13383', '天河区', '天河区', '5');
INSERT INTO `tb_opt` VALUES ('13385', '19', '13383', '海珠区', '海珠区', '10');
INSERT INTO `tb_opt` VALUES ('13386', '19', '13383', '荔湾区', '荔湾区', '15');
INSERT INTO `tb_opt` VALUES ('13387', '19', '13383', '越秀区', '越秀区', '20');
INSERT INTO `tb_opt` VALUES ('13388', '19', '13383', '番禺区', '番禺区', '25');
INSERT INTO `tb_opt` VALUES ('13389', '19', '13383', '花都区', '花都区', '30');
INSERT INTO `tb_opt` VALUES ('13390', '19', '13383', '萝岗区', '萝岗区', '35');
INSERT INTO `tb_opt` VALUES ('13391', '19', '13383', '白云区', '白云区', '40');
INSERT INTO `tb_opt` VALUES ('13392', '19', '13383', '南沙区', '南沙区', '45');
INSERT INTO `tb_opt` VALUES ('13393', '19', '13383', '黄埔区', '黄埔区', '50');
INSERT INTO `tb_opt` VALUES ('13394', '19', '13383', '增城市', '增城市', '55');
INSERT INTO `tb_opt` VALUES ('13395', '19', '13383', '从化市', '从化市', '60');
INSERT INTO `tb_opt` VALUES ('13396', '19', '13383', '广州大学城', '广州大学城', '65');
INSERT INTO `tb_opt` VALUES ('13397', '19', '13382', '深圳市', '深圳市', '10');
INSERT INTO `tb_opt` VALUES ('13398', '19', '13397', '罗湖区', '罗湖区', '5');
INSERT INTO `tb_opt` VALUES ('13399', '19', '13397', '福田区', '福田区', '10');
INSERT INTO `tb_opt` VALUES ('13400', '19', '13397', '南山区', '南山区', '15');
INSERT INTO `tb_opt` VALUES ('13401', '19', '13397', '宝安区', '宝安区', '20');
INSERT INTO `tb_opt` VALUES ('13402', '19', '13397', '光明新区', '光明新区', '25');
INSERT INTO `tb_opt` VALUES ('13403', '19', '13397', '龙岗区', '龙岗区', '30');
INSERT INTO `tb_opt` VALUES ('13404', '19', '13397', '坪山新区', '坪山新区', '35');
INSERT INTO `tb_opt` VALUES ('13405', '19', '13397', '盐田区', '盐田区', '40');
INSERT INTO `tb_opt` VALUES ('13406', '19', '13397', '龙华区', '龙华区', '45');
INSERT INTO `tb_opt` VALUES ('13407', '19', '13397', '大鹏新区', '大鹏新区', '50');
INSERT INTO `tb_opt` VALUES ('13408', '19', '13382', '珠海市', '珠海市', '15');
INSERT INTO `tb_opt` VALUES ('13409', '19', '13408', '斗门区', '斗门区', '5');
INSERT INTO `tb_opt` VALUES ('13410', '19', '13408', '金湾区', '金湾区', '10');
INSERT INTO `tb_opt` VALUES ('13411', '19', '13408', '香洲区', '香洲区', '15');
INSERT INTO `tb_opt` VALUES ('13412', '19', '13382', '汕头市', '汕头市', '20');
INSERT INTO `tb_opt` VALUES ('13413', '19', '13412', '龙湖区', '龙湖区', '5');
INSERT INTO `tb_opt` VALUES ('13414', '19', '13412', '金平区', '金平区', '10');
INSERT INTO `tb_opt` VALUES ('13415', '19', '13412', '澄海区', '澄海区', '15');
INSERT INTO `tb_opt` VALUES ('13416', '19', '13412', '潮阳区', '潮阳区', '20');
INSERT INTO `tb_opt` VALUES ('13417', '19', '13412', '潮南区', '潮南区', '25');
INSERT INTO `tb_opt` VALUES ('13418', '19', '13412', '濠江区', '濠江区', '30');
INSERT INTO `tb_opt` VALUES ('13419', '19', '13412', '南澳县', '南澳县', '35');
INSERT INTO `tb_opt` VALUES ('13420', '19', '13382', '韶关市', '韶关市', '25');
INSERT INTO `tb_opt` VALUES ('13421', '19', '13420', '武江区', '武江区', '5');
INSERT INTO `tb_opt` VALUES ('13422', '19', '13420', '浈江区', '浈江区', '10');
INSERT INTO `tb_opt` VALUES ('13423', '19', '13420', '南雄市', '南雄市', '15');
INSERT INTO `tb_opt` VALUES ('13424', '19', '13420', '乐昌市', '乐昌市', '20');
INSERT INTO `tb_opt` VALUES ('13425', '19', '13420', '仁化县', '仁化县', '25');
INSERT INTO `tb_opt` VALUES ('13426', '19', '13420', '始兴县', '始兴县', '30');
INSERT INTO `tb_opt` VALUES ('13427', '19', '13420', '翁源县', '翁源县', '35');
INSERT INTO `tb_opt` VALUES ('13428', '19', '13420', '新丰县', '新丰县', '40');
INSERT INTO `tb_opt` VALUES ('13429', '19', '13420', '乳源瑶族自治县', '乳源瑶族自治县', '45');
INSERT INTO `tb_opt` VALUES ('13430', '19', '13420', '曲江区', '曲江区', '50');
INSERT INTO `tb_opt` VALUES ('13431', '19', '13382', '河源市', '河源市', '30');
INSERT INTO `tb_opt` VALUES ('13432', '19', '13431', '和平县', '和平县', '5');
INSERT INTO `tb_opt` VALUES ('13433', '19', '13431', '龙川县', '龙川县', '10');
INSERT INTO `tb_opt` VALUES ('13434', '19', '13431', '紫金县', '紫金县', '15');
INSERT INTO `tb_opt` VALUES ('13435', '19', '13431', '连平县', '连平县', '20');
INSERT INTO `tb_opt` VALUES ('13436', '19', '13431', '源城区', '源城区', '25');
INSERT INTO `tb_opt` VALUES ('13437', '19', '13431', '东源县', '东源县', '30');
INSERT INTO `tb_opt` VALUES ('13438', '19', '13382', '梅州市', '梅州市', '35');
INSERT INTO `tb_opt` VALUES ('13439', '19', '13438', '梅江区', '梅江区', '5');
INSERT INTO `tb_opt` VALUES ('13440', '19', '13438', '兴宁市', '兴宁市', '10');
INSERT INTO `tb_opt` VALUES ('13441', '19', '13438', '梅县', '梅县', '15');
INSERT INTO `tb_opt` VALUES ('13442', '19', '13438', '蕉岭县', '蕉岭县', '20');
INSERT INTO `tb_opt` VALUES ('13443', '19', '13438', '大埔县', '大埔县', '25');
INSERT INTO `tb_opt` VALUES ('13444', '19', '13438', '丰顺县', '丰顺县', '30');
INSERT INTO `tb_opt` VALUES ('13445', '19', '13438', '五华县', '五华县', '35');
INSERT INTO `tb_opt` VALUES ('13446', '19', '13438', '平远县', '平远县', '40');
INSERT INTO `tb_opt` VALUES ('13447', '19', '13382', '惠州市', '惠州市', '40');
INSERT INTO `tb_opt` VALUES ('13448', '19', '13447', '惠阳区', '惠阳区', '5');
INSERT INTO `tb_opt` VALUES ('13449', '19', '13447', '大亚湾区', '大亚湾区', '10');
INSERT INTO `tb_opt` VALUES ('13450', '19', '13447', '惠城区', '惠城区', '15');
INSERT INTO `tb_opt` VALUES ('13451', '19', '13447', '惠东县', '惠东县', '20');
INSERT INTO `tb_opt` VALUES ('13452', '19', '13447', '博罗县', '博罗县', '25');
INSERT INTO `tb_opt` VALUES ('13453', '19', '13447', '龙门县', '龙门县', '30');
INSERT INTO `tb_opt` VALUES ('13454', '19', '13382', '汕尾市', '汕尾市', '45');
INSERT INTO `tb_opt` VALUES ('13455', '19', '13454', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('13456', '19', '13454', '陆丰市', '陆丰市', '10');
INSERT INTO `tb_opt` VALUES ('13457', '19', '13454', '陆河县', '陆河县', '15');
INSERT INTO `tb_opt` VALUES ('13458', '19', '13454', '海丰县', '海丰县', '20');
INSERT INTO `tb_opt` VALUES ('13459', '19', '13382', '东莞市', '东莞市', '50');
INSERT INTO `tb_opt` VALUES ('13460', '19', '13459', '长安镇', '长安镇', '5');
INSERT INTO `tb_opt` VALUES ('13461', '19', '13459', '莞城区', '莞城区', '10');
INSERT INTO `tb_opt` VALUES ('13462', '19', '13459', '南城区', '南城区', '15');
INSERT INTO `tb_opt` VALUES ('13463', '19', '13459', '寮步镇', '寮步镇', '20');
INSERT INTO `tb_opt` VALUES ('13464', '19', '13459', '大岭山镇', '大岭山镇', '25');
INSERT INTO `tb_opt` VALUES ('13465', '19', '13459', '横沥镇', '横沥镇', '30');
INSERT INTO `tb_opt` VALUES ('13466', '19', '13459', '常平镇', '常平镇', '35');
INSERT INTO `tb_opt` VALUES ('13467', '19', '13459', '厚街镇', '厚街镇', '40');
INSERT INTO `tb_opt` VALUES ('13468', '19', '13459', '万江区', '万江区', '45');
INSERT INTO `tb_opt` VALUES ('13469', '19', '13459', '樟木头镇', '樟木头镇', '50');
INSERT INTO `tb_opt` VALUES ('13470', '19', '13459', '塘厦镇', '塘厦镇', '55');
INSERT INTO `tb_opt` VALUES ('13471', '19', '13459', '凤岗镇', '凤岗镇', '60');
INSERT INTO `tb_opt` VALUES ('13472', '19', '13459', '大朗镇', '大朗镇', '65');
INSERT INTO `tb_opt` VALUES ('13473', '19', '13459', '东坑镇', '东坑镇', '70');
INSERT INTO `tb_opt` VALUES ('13474', '19', '13459', '清溪镇', '清溪镇', '75');
INSERT INTO `tb_opt` VALUES ('13475', '19', '13459', '企石镇', '企石镇', '80');
INSERT INTO `tb_opt` VALUES ('13476', '19', '13459', '茶山镇', '茶山镇', '85');
INSERT INTO `tb_opt` VALUES ('13477', '19', '13459', '东城区', '东城区', '90');
INSERT INTO `tb_opt` VALUES ('13478', '19', '13459', '虎门镇', '虎门镇', '95');
INSERT INTO `tb_opt` VALUES ('13479', '19', '13459', '黄江镇', '黄江镇', '100');
INSERT INTO `tb_opt` VALUES ('13480', '19', '13459', '石排镇', '石排镇', '105');
INSERT INTO `tb_opt` VALUES ('13481', '19', '13459', '道滘镇', '道滘镇', '110');
INSERT INTO `tb_opt` VALUES ('13482', '19', '13459', '沙田镇', '沙田镇', '115');
INSERT INTO `tb_opt` VALUES ('13483', '19', '13459', '高埗镇', '高埗镇', '120');
INSERT INTO `tb_opt` VALUES ('13484', '19', '13459', '石龙镇', '石龙镇', '125');
INSERT INTO `tb_opt` VALUES ('13485', '19', '13459', '石碣镇', '石碣镇', '130');
INSERT INTO `tb_opt` VALUES ('13486', '19', '13459', '洪梅镇', '洪梅镇', '135');
INSERT INTO `tb_opt` VALUES ('13487', '19', '13459', '麻涌镇', '麻涌镇', '140');
INSERT INTO `tb_opt` VALUES ('13488', '19', '13459', '松山湖', '松山湖', '145');
INSERT INTO `tb_opt` VALUES ('13489', '19', '13459', '桥头镇', '桥头镇', '150');
INSERT INTO `tb_opt` VALUES ('13490', '19', '13459', '望牛墩镇', '望牛墩镇', '155');
INSERT INTO `tb_opt` VALUES ('13491', '19', '13459', '中堂镇', '中堂镇', '160');
INSERT INTO `tb_opt` VALUES ('13492', '19', '13459', '谢岗镇', '谢岗镇', '165');
INSERT INTO `tb_opt` VALUES ('13493', '19', '13382', '中山市', '中山市', '55');
INSERT INTO `tb_opt` VALUES ('13494', '19', '13493', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('13495', '19', '13493', '火炬开发区', '火炬开发区', '10');
INSERT INTO `tb_opt` VALUES ('13496', '19', '13493', '小榄镇', '小榄镇', '15');
INSERT INTO `tb_opt` VALUES ('13497', '19', '13493', '古镇', '古镇', '20');
INSERT INTO `tb_opt` VALUES ('13498', '19', '13493', '三乡镇', '三乡镇', '25');
INSERT INTO `tb_opt` VALUES ('13499', '19', '13493', '民众镇', '民众镇', '30');
INSERT INTO `tb_opt` VALUES ('13500', '19', '13493', '东凤镇', '东凤镇', '35');
INSERT INTO `tb_opt` VALUES ('13501', '19', '13493', '板芙镇', '板芙镇', '40');
INSERT INTO `tb_opt` VALUES ('13502', '19', '13493', '神湾镇', '神湾镇', '45');
INSERT INTO `tb_opt` VALUES ('13503', '19', '13493', '横栏镇', '横栏镇', '50');
INSERT INTO `tb_opt` VALUES ('13504', '19', '13493', '港口镇', '港口镇', '55');
INSERT INTO `tb_opt` VALUES ('13505', '19', '13493', '三角镇', '三角镇', '60');
INSERT INTO `tb_opt` VALUES ('13506', '19', '13493', '大涌镇', '大涌镇', '65');
INSERT INTO `tb_opt` VALUES ('13507', '19', '13493', '南头镇', '南头镇', '70');
INSERT INTO `tb_opt` VALUES ('13508', '19', '13493', '沙溪镇', '沙溪镇', '75');
INSERT INTO `tb_opt` VALUES ('13509', '19', '13493', '坦洲镇', '坦洲镇', '80');
INSERT INTO `tb_opt` VALUES ('13510', '19', '13493', '黄圃镇', '黄圃镇', '85');
INSERT INTO `tb_opt` VALUES ('13511', '19', '13493', '五桂山镇', '五桂山镇', '90');
INSERT INTO `tb_opt` VALUES ('13512', '19', '13493', '南朗镇', '南朗镇', '95');
INSERT INTO `tb_opt` VALUES ('13513', '19', '13493', '沙朗镇', '沙朗镇', '100');
INSERT INTO `tb_opt` VALUES ('13514', '19', '13493', '阜沙镇', '阜沙镇', '105');
INSERT INTO `tb_opt` VALUES ('13515', '19', '13493', '东升镇', '东升镇', '110');
INSERT INTO `tb_opt` VALUES ('13516', '19', '13382', '江门市', '江门市', '60');
INSERT INTO `tb_opt` VALUES ('13517', '19', '13516', '台山市', '台山市', '5');
INSERT INTO `tb_opt` VALUES ('13518', '19', '13516', '新会区', '新会区', '10');
INSERT INTO `tb_opt` VALUES ('13519', '19', '13516', '鹤山市', '鹤山市', '15');
INSERT INTO `tb_opt` VALUES ('13520', '19', '13516', '江海区', '江海区', '20');
INSERT INTO `tb_opt` VALUES ('13521', '19', '13516', '蓬江区', '蓬江区', '25');
INSERT INTO `tb_opt` VALUES ('13522', '19', '13516', '开平市', '开平市', '30');
INSERT INTO `tb_opt` VALUES ('13523', '19', '13516', '恩平市', '恩平市', '35');
INSERT INTO `tb_opt` VALUES ('13524', '19', '13382', '佛山市', '佛山市', '65');
INSERT INTO `tb_opt` VALUES ('13525', '19', '13524', '顺德区', '顺德区', '5');
INSERT INTO `tb_opt` VALUES ('13526', '19', '13524', '禅城区', '禅城区', '10');
INSERT INTO `tb_opt` VALUES ('13527', '19', '13524', '高明区', '高明区', '15');
INSERT INTO `tb_opt` VALUES ('13528', '19', '13524', '三水区', '三水区', '20');
INSERT INTO `tb_opt` VALUES ('13529', '19', '13524', '南海区', '南海区', '25');
INSERT INTO `tb_opt` VALUES ('13530', '19', '13382', '阳江市', '阳江市', '70');
INSERT INTO `tb_opt` VALUES ('13531', '19', '13530', '江城区', '江城区', '5');
INSERT INTO `tb_opt` VALUES ('13532', '19', '13530', '阳东县', '阳东县', '10');
INSERT INTO `tb_opt` VALUES ('13533', '19', '13530', '阳春市', '阳春市', '15');
INSERT INTO `tb_opt` VALUES ('13534', '19', '13530', '阳西县', '阳西县', '20');
INSERT INTO `tb_opt` VALUES ('13535', '19', '13382', '湛江市', '湛江市', '75');
INSERT INTO `tb_opt` VALUES ('13536', '19', '13535', '赤坎区', '赤坎区', '5');
INSERT INTO `tb_opt` VALUES ('13537', '19', '13535', '霞山区', '霞山区', '10');
INSERT INTO `tb_opt` VALUES ('13538', '19', '13535', '经济技术开发区', '经济技术开发区', '15');
INSERT INTO `tb_opt` VALUES ('13539', '19', '13535', '麻章区', '麻章区', '20');
INSERT INTO `tb_opt` VALUES ('13540', '19', '13535', '遂溪县', '遂溪县', '25');
INSERT INTO `tb_opt` VALUES ('13541', '19', '13535', '廉江市', '廉江市', '30');
INSERT INTO `tb_opt` VALUES ('13542', '19', '13535', '坡头区', '坡头区', '35');
INSERT INTO `tb_opt` VALUES ('13543', '19', '13535', '雷州市', '雷州市', '40');
INSERT INTO `tb_opt` VALUES ('13544', '19', '13535', '吴川市', '吴川市', '45');
INSERT INTO `tb_opt` VALUES ('13545', '19', '13535', '徐闻县', '徐闻县', '50');
INSERT INTO `tb_opt` VALUES ('13546', '19', '13382', '茂名市', '茂名市', '80');
INSERT INTO `tb_opt` VALUES ('13547', '19', '13546', '茂南区', '茂南区', '5');
INSERT INTO `tb_opt` VALUES ('13548', '19', '13546', '电白县', '电白县', '10');
INSERT INTO `tb_opt` VALUES ('13549', '19', '13546', '高州市', '高州市', '15');
INSERT INTO `tb_opt` VALUES ('13550', '19', '13546', '化州市', '化州市', '20');
INSERT INTO `tb_opt` VALUES ('13551', '19', '13546', '茂港区', '茂港区', '25');
INSERT INTO `tb_opt` VALUES ('13552', '19', '13546', '信宜市', '信宜市', '30');
INSERT INTO `tb_opt` VALUES ('13553', '19', '13382', '肇庆市', '肇庆市', '85');
INSERT INTO `tb_opt` VALUES ('13554', '19', '13553', '端州区', '端州区', '5');
INSERT INTO `tb_opt` VALUES ('13555', '19', '13553', '四会市', '四会市', '10');
INSERT INTO `tb_opt` VALUES ('13556', '19', '13553', '高要市', '高要市', '15');
INSERT INTO `tb_opt` VALUES ('13557', '19', '13553', '广宁县', '广宁县', '20');
INSERT INTO `tb_opt` VALUES ('13558', '19', '13553', '德庆县', '德庆县', '25');
INSERT INTO `tb_opt` VALUES ('13559', '19', '13553', '怀集县', '怀集县', '30');
INSERT INTO `tb_opt` VALUES ('13560', '19', '13553', '封开县', '封开县', '35');
INSERT INTO `tb_opt` VALUES ('13561', '19', '13553', '鼎湖区', '鼎湖区', '40');
INSERT INTO `tb_opt` VALUES ('13562', '19', '13382', '云浮市', '云浮市', '90');
INSERT INTO `tb_opt` VALUES ('13563', '19', '13562', '云城区', '云城区', '5');
INSERT INTO `tb_opt` VALUES ('13564', '19', '13562', '罗定市', '罗定市', '10');
INSERT INTO `tb_opt` VALUES ('13565', '19', '13562', '云安县', '云安县', '15');
INSERT INTO `tb_opt` VALUES ('13566', '19', '13562', '新兴县', '新兴县', '20');
INSERT INTO `tb_opt` VALUES ('13567', '19', '13562', '郁南县', '郁南县', '25');
INSERT INTO `tb_opt` VALUES ('13568', '19', '13382', '清远市', '清远市', '95');
INSERT INTO `tb_opt` VALUES ('13569', '19', '13568', '连州市', '连州市', '5');
INSERT INTO `tb_opt` VALUES ('13570', '19', '13568', '佛冈县', '佛冈县', '10');
INSERT INTO `tb_opt` VALUES ('13571', '19', '13568', '阳山县', '阳山县', '15');
INSERT INTO `tb_opt` VALUES ('13572', '19', '13568', '清新县', '清新县', '20');
INSERT INTO `tb_opt` VALUES ('13573', '19', '13568', '连山县', '连山县', '25');
INSERT INTO `tb_opt` VALUES ('13574', '19', '13568', '连南县', '连南县', '30');
INSERT INTO `tb_opt` VALUES ('13575', '19', '13568', '清城区', '清城区', '35');
INSERT INTO `tb_opt` VALUES ('13576', '19', '13568', '英德市', '英德市', '40');
INSERT INTO `tb_opt` VALUES ('13577', '19', '13382', '潮州市', '潮州市', '100');
INSERT INTO `tb_opt` VALUES ('13578', '19', '13577', '湘桥区', '湘桥区', '5');
INSERT INTO `tb_opt` VALUES ('13579', '19', '13577', '枫溪区', '枫溪区', '10');
INSERT INTO `tb_opt` VALUES ('13580', '19', '13577', '潮安县', '潮安县', '15');
INSERT INTO `tb_opt` VALUES ('13581', '19', '13577', '饶平县', '饶平县', '20');
INSERT INTO `tb_opt` VALUES ('13582', '19', '13382', '揭阳市', '揭阳市', '105');
INSERT INTO `tb_opt` VALUES ('13583', '19', '13582', '东山区', '东山区', '5');
INSERT INTO `tb_opt` VALUES ('13584', '19', '13582', '普宁市', '普宁市', '10');
INSERT INTO `tb_opt` VALUES ('13585', '19', '13582', '榕城区', '榕城区', '15');
INSERT INTO `tb_opt` VALUES ('13586', '19', '13582', '揭东县', '揭东县', '20');
INSERT INTO `tb_opt` VALUES ('13587', '19', '13582', '揭西县', '揭西县', '25');
INSERT INTO `tb_opt` VALUES ('13588', '19', '13582', '惠来县', '惠来县', '30');
INSERT INTO `tb_opt` VALUES ('13589', '19', '0', '广西壮族自治区', '广西壮族自治区', '100');
INSERT INTO `tb_opt` VALUES ('13590', '19', '13589', '南宁市', '南宁市', '5');
INSERT INTO `tb_opt` VALUES ('13591', '19', '13590', '良庆区', '良庆区', '5');
INSERT INTO `tb_opt` VALUES ('13592', '19', '13590', '江南区', '江南区', '10');
INSERT INTO `tb_opt` VALUES ('13593', '19', '13590', '兴宁区', '兴宁区', '15');
INSERT INTO `tb_opt` VALUES ('13594', '19', '13590', '青秀区', '青秀区', '20');
INSERT INTO `tb_opt` VALUES ('13595', '19', '13590', '西乡塘区', '西乡塘区', '25');
INSERT INTO `tb_opt` VALUES ('13596', '19', '13590', '横县', '横县', '30');
INSERT INTO `tb_opt` VALUES ('13597', '19', '13590', '上林县', '上林县', '35');
INSERT INTO `tb_opt` VALUES ('13598', '19', '13590', '隆安县', '隆安县', '40');
INSERT INTO `tb_opt` VALUES ('13599', '19', '13590', '马山县', '马山县', '45');
INSERT INTO `tb_opt` VALUES ('13600', '19', '13590', '武鸣县', '武鸣县', '50');
INSERT INTO `tb_opt` VALUES ('13601', '19', '13590', '邕宁区', '邕宁区', '55');
INSERT INTO `tb_opt` VALUES ('13602', '19', '13590', '宾阳县', '宾阳县', '60');
INSERT INTO `tb_opt` VALUES ('13603', '19', '13589', '柳州市', '柳州市', '10');
INSERT INTO `tb_opt` VALUES ('13604', '19', '13603', '融安县', '融安县', '5');
INSERT INTO `tb_opt` VALUES ('13605', '19', '13603', '三江县', '三江县', '10');
INSERT INTO `tb_opt` VALUES ('13606', '19', '13603', '融水县', '融水县', '15');
INSERT INTO `tb_opt` VALUES ('13607', '19', '13603', '鱼峰区', '鱼峰区', '20');
INSERT INTO `tb_opt` VALUES ('13608', '19', '13603', '城中区', '城中区', '25');
INSERT INTO `tb_opt` VALUES ('13609', '19', '13603', '柳南区', '柳南区', '30');
INSERT INTO `tb_opt` VALUES ('13610', '19', '13603', '柳北区', '柳北区', '35');
INSERT INTO `tb_opt` VALUES ('13611', '19', '13603', '柳江县', '柳江县', '40');
INSERT INTO `tb_opt` VALUES ('13612', '19', '13603', '柳城县', '柳城县', '45');
INSERT INTO `tb_opt` VALUES ('13613', '19', '13603', '鹿寨县', '鹿寨县', '50');
INSERT INTO `tb_opt` VALUES ('13614', '19', '13589', '桂林市', '桂林市', '15');
INSERT INTO `tb_opt` VALUES ('13615', '19', '13614', '象山区', '象山区', '5');
INSERT INTO `tb_opt` VALUES ('13616', '19', '13614', '恭城县', '恭城县', '10');
INSERT INTO `tb_opt` VALUES ('13617', '19', '13614', '秀峰区', '秀峰区', '15');
INSERT INTO `tb_opt` VALUES ('13618', '19', '13614', '叠彩区', '叠彩区', '20');
INSERT INTO `tb_opt` VALUES ('13619', '19', '13614', '七星区', '七星区', '25');
INSERT INTO `tb_opt` VALUES ('13620', '19', '13614', '雁山区', '雁山区', '30');
INSERT INTO `tb_opt` VALUES ('13621', '19', '13614', '阳朔县', '阳朔县', '35');
INSERT INTO `tb_opt` VALUES ('13622', '19', '13614', '临桂县', '临桂县', '40');
INSERT INTO `tb_opt` VALUES ('13623', '19', '13614', '灵川县', '灵川县', '45');
INSERT INTO `tb_opt` VALUES ('13624', '19', '13614', '全州县', '全州县', '50');
INSERT INTO `tb_opt` VALUES ('13625', '19', '13614', '平乐县', '平乐县', '55');
INSERT INTO `tb_opt` VALUES ('13626', '19', '13614', '兴安县', '兴安县', '60');
INSERT INTO `tb_opt` VALUES ('13627', '19', '13614', '灌阳县', '灌阳县', '65');
INSERT INTO `tb_opt` VALUES ('13628', '19', '13614', '荔浦县', '荔浦县', '70');
INSERT INTO `tb_opt` VALUES ('13629', '19', '13614', '资源县', '资源县', '75');
INSERT INTO `tb_opt` VALUES ('13630', '19', '13614', '永福县', '永福县', '80');
INSERT INTO `tb_opt` VALUES ('13631', '19', '13614', '龙胜县', '龙胜县', '85');
INSERT INTO `tb_opt` VALUES ('13632', '19', '13589', '梧州市', '梧州市', '20');
INSERT INTO `tb_opt` VALUES ('13633', '19', '13632', '岑溪市', '岑溪市', '5');
INSERT INTO `tb_opt` VALUES ('13634', '19', '13632', '苍梧县', '苍梧县', '10');
INSERT INTO `tb_opt` VALUES ('13635', '19', '13632', '藤县', '藤县', '15');
INSERT INTO `tb_opt` VALUES ('13636', '19', '13632', '蒙山县', '蒙山县', '20');
INSERT INTO `tb_opt` VALUES ('13637', '19', '13632', '万秀区', '万秀区', '25');
INSERT INTO `tb_opt` VALUES ('13638', '19', '13632', '蝶山区', '蝶山区', '30');
INSERT INTO `tb_opt` VALUES ('13639', '19', '13632', '长洲区', '长洲区', '35');
INSERT INTO `tb_opt` VALUES ('13640', '19', '13589', '北海市', '北海市', '25');
INSERT INTO `tb_opt` VALUES ('13641', '19', '13640', '海城区', '海城区', '5');
INSERT INTO `tb_opt` VALUES ('13642', '19', '13640', '银海区', '银海区', '10');
INSERT INTO `tb_opt` VALUES ('13643', '19', '13640', '合浦县', '合浦县', '15');
INSERT INTO `tb_opt` VALUES ('13644', '19', '13640', '铁山港区', '铁山港区', '20');
INSERT INTO `tb_opt` VALUES ('13645', '19', '13589', '防城港市', '防城港市', '30');
INSERT INTO `tb_opt` VALUES ('13646', '19', '13645', '防城区', '防城区', '5');
INSERT INTO `tb_opt` VALUES ('13647', '19', '13645', '港口区', '港口区', '10');
INSERT INTO `tb_opt` VALUES ('13648', '19', '13645', '东兴市', '东兴市', '15');
INSERT INTO `tb_opt` VALUES ('13649', '19', '13645', '上思县', '上思县', '20');
INSERT INTO `tb_opt` VALUES ('13650', '19', '13589', '钦州市', '钦州市', '35');
INSERT INTO `tb_opt` VALUES ('13651', '19', '13650', '钦南区', '钦南区', '5');
INSERT INTO `tb_opt` VALUES ('13652', '19', '13650', '钦北区', '钦北区', '10');
INSERT INTO `tb_opt` VALUES ('13653', '19', '13650', '浦北县', '浦北县', '15');
INSERT INTO `tb_opt` VALUES ('13654', '19', '13650', '灵山县', '灵山县', '20');
INSERT INTO `tb_opt` VALUES ('13655', '19', '13589', '贵港市', '贵港市', '40');
INSERT INTO `tb_opt` VALUES ('13656', '19', '13655', '港南区', '港南区', '5');
INSERT INTO `tb_opt` VALUES ('13657', '19', '13655', '港北区', '港北区', '10');
INSERT INTO `tb_opt` VALUES ('13658', '19', '13655', '桂平市', '桂平市', '15');
INSERT INTO `tb_opt` VALUES ('13659', '19', '13655', '平南县', '平南县', '20');
INSERT INTO `tb_opt` VALUES ('13660', '19', '13655', '覃塘区', '覃塘区', '25');
INSERT INTO `tb_opt` VALUES ('13661', '19', '13589', '玉林市', '玉林市', '45');
INSERT INTO `tb_opt` VALUES ('13662', '19', '13661', '玉州区', '玉州区', '5');
INSERT INTO `tb_opt` VALUES ('13663', '19', '13661', '北流市', '北流市', '10');
INSERT INTO `tb_opt` VALUES ('13664', '19', '13661', '容县', '容县', '15');
INSERT INTO `tb_opt` VALUES ('13665', '19', '13661', '博白县', '博白县', '20');
INSERT INTO `tb_opt` VALUES ('13666', '19', '13661', '陆川县', '陆川县', '25');
INSERT INTO `tb_opt` VALUES ('13667', '19', '13661', '兴业县', '兴业县', '30');
INSERT INTO `tb_opt` VALUES ('13668', '19', '13589', '贺州市', '贺州市', '50');
INSERT INTO `tb_opt` VALUES ('13669', '19', '13668', '八步区', '八步区', '5');
INSERT INTO `tb_opt` VALUES ('13670', '19', '13668', '钟山县', '钟山县', '10');
INSERT INTO `tb_opt` VALUES ('13671', '19', '13668', '昭平县', '昭平县', '15');
INSERT INTO `tb_opt` VALUES ('13672', '19', '13668', '富川县', '富川县', '20');
INSERT INTO `tb_opt` VALUES ('13673', '19', '13668', '平桂管理区', '平桂管理区', '25');
INSERT INTO `tb_opt` VALUES ('13674', '19', '13589', '百色市', '百色市', '55');
INSERT INTO `tb_opt` VALUES ('13675', '19', '13674', '右江区', '右江区', '5');
INSERT INTO `tb_opt` VALUES ('13676', '19', '13674', '平果县', '平果县', '10');
INSERT INTO `tb_opt` VALUES ('13677', '19', '13674', '乐业县', '乐业县', '15');
INSERT INTO `tb_opt` VALUES ('13678', '19', '13674', '田阳县', '田阳县', '20');
INSERT INTO `tb_opt` VALUES ('13679', '19', '13674', '西林县', '西林县', '25');
INSERT INTO `tb_opt` VALUES ('13680', '19', '13674', '田林县', '田林县', '30');
INSERT INTO `tb_opt` VALUES ('13681', '19', '13674', '德保县', '德保县', '35');
INSERT INTO `tb_opt` VALUES ('13682', '19', '13674', '靖西县', '靖西县', '40');
INSERT INTO `tb_opt` VALUES ('13683', '19', '13674', '田东县', '田东县', '45');
INSERT INTO `tb_opt` VALUES ('13684', '19', '13674', '那坡县', '那坡县', '50');
INSERT INTO `tb_opt` VALUES ('13685', '19', '13674', '隆林县', '隆林县', '55');
INSERT INTO `tb_opt` VALUES ('13686', '19', '13674', '凌云县', '凌云县', '60');
INSERT INTO `tb_opt` VALUES ('13687', '19', '13589', '河池市', '河池市', '60');
INSERT INTO `tb_opt` VALUES ('13688', '19', '13687', '宜州市', '宜州市', '5');
INSERT INTO `tb_opt` VALUES ('13689', '19', '13687', '天峨县', '天峨县', '10');
INSERT INTO `tb_opt` VALUES ('13690', '19', '13687', '凤山县', '凤山县', '15');
INSERT INTO `tb_opt` VALUES ('13691', '19', '13687', '南丹县', '南丹县', '20');
INSERT INTO `tb_opt` VALUES ('13692', '19', '13687', '东兰县', '东兰县', '25');
INSERT INTO `tb_opt` VALUES ('13693', '19', '13687', '巴马县', '巴马县', '30');
INSERT INTO `tb_opt` VALUES ('13694', '19', '13687', '环江县', '环江县', '35');
INSERT INTO `tb_opt` VALUES ('13695', '19', '13687', '大化县', '大化县', '40');
INSERT INTO `tb_opt` VALUES ('13696', '19', '13687', '都安县', '都安县', '45');
INSERT INTO `tb_opt` VALUES ('13697', '19', '13687', '金城江区', '金城江区', '50');
INSERT INTO `tb_opt` VALUES ('13698', '19', '13687', '罗城县', '罗城县', '55');
INSERT INTO `tb_opt` VALUES ('13699', '19', '13589', '来宾市', '来宾市', '65');
INSERT INTO `tb_opt` VALUES ('13700', '19', '13699', '兴宾区', '兴宾区', '5');
INSERT INTO `tb_opt` VALUES ('13701', '19', '13699', '合山市', '合山市', '10');
INSERT INTO `tb_opt` VALUES ('13702', '19', '13699', '忻城县', '忻城县', '15');
INSERT INTO `tb_opt` VALUES ('13703', '19', '13699', '武宣县', '武宣县', '20');
INSERT INTO `tb_opt` VALUES ('13704', '19', '13699', '象州县', '象州县', '25');
INSERT INTO `tb_opt` VALUES ('13705', '19', '13699', '金秀县', '金秀县', '30');
INSERT INTO `tb_opt` VALUES ('13706', '19', '13589', '崇左市', '崇左市', '70');
INSERT INTO `tb_opt` VALUES ('13707', '19', '13706', '江州区', '江州区', '5');
INSERT INTO `tb_opt` VALUES ('13708', '19', '13706', '凭祥市', '凭祥市', '10');
INSERT INTO `tb_opt` VALUES ('13709', '19', '13706', '扶绥县', '扶绥县', '15');
INSERT INTO `tb_opt` VALUES ('13710', '19', '13706', '大新县', '大新县', '20');
INSERT INTO `tb_opt` VALUES ('13711', '19', '13706', '天等县', '天等县', '25');
INSERT INTO `tb_opt` VALUES ('13712', '19', '13706', '宁明县', '宁明县', '30');
INSERT INTO `tb_opt` VALUES ('13713', '19', '13706', '龙州县', '龙州县', '35');
INSERT INTO `tb_opt` VALUES ('13714', '19', '0', '江西省', '江西省', '105');
INSERT INTO `tb_opt` VALUES ('13715', '19', '13714', '南昌市', '南昌市', '5');
INSERT INTO `tb_opt` VALUES ('13716', '19', '13715', '青云谱区', '青云谱区', '5');
INSERT INTO `tb_opt` VALUES ('13717', '19', '13715', '西湖区', '西湖区', '10');
INSERT INTO `tb_opt` VALUES ('13718', '19', '13715', '东湖区', '东湖区', '15');
INSERT INTO `tb_opt` VALUES ('13719', '19', '13715', '昌北区', '昌北区', '20');
INSERT INTO `tb_opt` VALUES ('13720', '19', '13715', '南昌县', '南昌县', '25');
INSERT INTO `tb_opt` VALUES ('13721', '19', '13715', '进贤县', '进贤县', '30');
INSERT INTO `tb_opt` VALUES ('13722', '19', '13715', '安义县', '安义县', '35');
INSERT INTO `tb_opt` VALUES ('13723', '19', '13715', '青山湖区', '青山湖区', '40');
INSERT INTO `tb_opt` VALUES ('13724', '19', '13715', '红谷滩新区', '红谷滩新区', '45');
INSERT INTO `tb_opt` VALUES ('13725', '19', '13715', '新建县', '新建县', '50');
INSERT INTO `tb_opt` VALUES ('13726', '19', '13715', '湾里区', '湾里区', '55');
INSERT INTO `tb_opt` VALUES ('13727', '19', '13715', '高新区', '高新区', '60');
INSERT INTO `tb_opt` VALUES ('13728', '19', '13714', '景德镇市', '景德镇市', '10');
INSERT INTO `tb_opt` VALUES ('13729', '19', '13728', '珠山区', '珠山区', '5');
INSERT INTO `tb_opt` VALUES ('13730', '19', '13728', '乐平市', '乐平市', '10');
INSERT INTO `tb_opt` VALUES ('13731', '19', '13728', '浮梁县', '浮梁县', '15');
INSERT INTO `tb_opt` VALUES ('13732', '19', '13728', '昌江区', '昌江区', '20');
INSERT INTO `tb_opt` VALUES ('13733', '19', '13714', '萍乡市', '萍乡市', '15');
INSERT INTO `tb_opt` VALUES ('13734', '19', '13733', '湘东区', '湘东区', '5');
INSERT INTO `tb_opt` VALUES ('13735', '19', '13733', '莲花县', '莲花县', '10');
INSERT INTO `tb_opt` VALUES ('13736', '19', '13733', '上栗县', '上栗县', '15');
INSERT INTO `tb_opt` VALUES ('13737', '19', '13733', '芦溪县', '芦溪县', '20');
INSERT INTO `tb_opt` VALUES ('13738', '19', '13733', '安源区', '安源区', '25');
INSERT INTO `tb_opt` VALUES ('13739', '19', '13714', '新余市', '新余市', '20');
INSERT INTO `tb_opt` VALUES ('13740', '19', '13739', '分宜县', '分宜县', '5');
INSERT INTO `tb_opt` VALUES ('13741', '19', '13739', '渝水区', '渝水区', '10');
INSERT INTO `tb_opt` VALUES ('13742', '19', '13714', '九江市', '九江市', '25');
INSERT INTO `tb_opt` VALUES ('13743', '19', '13742', '九江县', '九江县', '5');
INSERT INTO `tb_opt` VALUES ('13744', '19', '13742', '瑞昌市', '瑞昌市', '10');
INSERT INTO `tb_opt` VALUES ('13745', '19', '13742', '星子县', '星子县', '15');
INSERT INTO `tb_opt` VALUES ('13746', '19', '13742', '武宁县', '武宁县', '20');
INSERT INTO `tb_opt` VALUES ('13747', '19', '13742', '彭泽县', '彭泽县', '25');
INSERT INTO `tb_opt` VALUES ('13748', '19', '13742', '永修县', '永修县', '30');
INSERT INTO `tb_opt` VALUES ('13749', '19', '13742', '修水县', '修水县', '35');
INSERT INTO `tb_opt` VALUES ('13750', '19', '13742', '湖口县', '湖口县', '40');
INSERT INTO `tb_opt` VALUES ('13751', '19', '13742', '德安县', '德安县', '45');
INSERT INTO `tb_opt` VALUES ('13752', '19', '13742', '都昌县', '都昌县', '50');
INSERT INTO `tb_opt` VALUES ('13753', '19', '13742', '共青城市', '共青城市', '55');
INSERT INTO `tb_opt` VALUES ('13754', '19', '13742', '经济技术开发区', '经济技术开发区', '60');
INSERT INTO `tb_opt` VALUES ('13755', '19', '13742', '八里湖新区', '八里湖新区', '65');
INSERT INTO `tb_opt` VALUES ('13756', '19', '13742', '庐山风景名胜区', '庐山风景名胜区', '70');
INSERT INTO `tb_opt` VALUES ('13757', '19', '13742', '庐山区', '庐山区', '75');
INSERT INTO `tb_opt` VALUES ('13758', '19', '13742', '浔阳区', '浔阳区', '80');
INSERT INTO `tb_opt` VALUES ('13759', '19', '13714', '鹰潭市', '鹰潭市', '30');
INSERT INTO `tb_opt` VALUES ('13760', '19', '13759', '龙虎山风景旅游区', '龙虎山风景旅游区', '5');
INSERT INTO `tb_opt` VALUES ('13761', '19', '13759', '余江县', '余江县', '10');
INSERT INTO `tb_opt` VALUES ('13762', '19', '13759', '贵溪市', '贵溪市', '15');
INSERT INTO `tb_opt` VALUES ('13763', '19', '13759', '月湖区', '月湖区', '20');
INSERT INTO `tb_opt` VALUES ('13764', '19', '13714', '上饶市', '上饶市', '35');
INSERT INTO `tb_opt` VALUES ('13765', '19', '13764', '德兴市', '德兴市', '5');
INSERT INTO `tb_opt` VALUES ('13766', '19', '13764', '广丰县', '广丰县', '10');
INSERT INTO `tb_opt` VALUES ('13767', '19', '13764', '鄱阳县', '鄱阳县', '15');
INSERT INTO `tb_opt` VALUES ('13768', '19', '13764', '婺源县', '婺源县', '20');
INSERT INTO `tb_opt` VALUES ('13769', '19', '13764', '余干县', '余干县', '25');
INSERT INTO `tb_opt` VALUES ('13770', '19', '13764', '横峰县', '横峰县', '30');
INSERT INTO `tb_opt` VALUES ('13771', '19', '13764', '弋阳县', '弋阳县', '35');
INSERT INTO `tb_opt` VALUES ('13772', '19', '13764', '铅山县', '铅山县', '40');
INSERT INTO `tb_opt` VALUES ('13773', '19', '13764', '玉山县', '玉山县', '45');
INSERT INTO `tb_opt` VALUES ('13774', '19', '13764', '万年县', '万年县', '50');
INSERT INTO `tb_opt` VALUES ('13775', '19', '13764', '信州区', '信州区', '55');
INSERT INTO `tb_opt` VALUES ('13776', '19', '13764', '上饶县', '上饶县', '60');
INSERT INTO `tb_opt` VALUES ('13777', '19', '13714', '宜春市', '宜春市', '40');
INSERT INTO `tb_opt` VALUES ('13778', '19', '13777', '丰城市', '丰城市', '5');
INSERT INTO `tb_opt` VALUES ('13779', '19', '13777', '樟树市', '樟树市', '10');
INSERT INTO `tb_opt` VALUES ('13780', '19', '13777', '袁州区', '袁州区', '15');
INSERT INTO `tb_opt` VALUES ('13781', '19', '13777', '高安市', '高安市', '20');
INSERT INTO `tb_opt` VALUES ('13782', '19', '13777', '铜鼓县', '铜鼓县', '25');
INSERT INTO `tb_opt` VALUES ('13783', '19', '13777', '靖安县', '靖安县', '30');
INSERT INTO `tb_opt` VALUES ('13784', '19', '13777', '宜丰县', '宜丰县', '35');
INSERT INTO `tb_opt` VALUES ('13785', '19', '13777', '奉新县', '奉新县', '40');
INSERT INTO `tb_opt` VALUES ('13786', '19', '13777', '万载县', '万载县', '45');
INSERT INTO `tb_opt` VALUES ('13787', '19', '13777', '上高县', '上高县', '50');
INSERT INTO `tb_opt` VALUES ('13788', '19', '13714', '抚州市', '抚州市', '45');
INSERT INTO `tb_opt` VALUES ('13789', '19', '13788', '南丰县', '南丰县', '5');
INSERT INTO `tb_opt` VALUES ('13790', '19', '13788', '乐安县', '乐安县', '10');
INSERT INTO `tb_opt` VALUES ('13791', '19', '13788', '金溪县', '金溪县', '15');
INSERT INTO `tb_opt` VALUES ('13792', '19', '13788', '南城县', '南城县', '20');
INSERT INTO `tb_opt` VALUES ('13793', '19', '13788', '东乡县', '东乡县', '25');
INSERT INTO `tb_opt` VALUES ('13794', '19', '13788', '资溪县', '资溪县', '30');
INSERT INTO `tb_opt` VALUES ('13795', '19', '13788', '宜黄县', '宜黄县', '35');
INSERT INTO `tb_opt` VALUES ('13796', '19', '13788', '崇仁县', '崇仁县', '40');
INSERT INTO `tb_opt` VALUES ('13797', '19', '13788', '黎川县', '黎川县', '45');
INSERT INTO `tb_opt` VALUES ('13798', '19', '13788', '广昌县', '广昌县', '50');
INSERT INTO `tb_opt` VALUES ('13799', '19', '13788', '临川区', '临川区', '55');
INSERT INTO `tb_opt` VALUES ('13800', '19', '13714', '吉安市', '吉安市', '50');
INSERT INTO `tb_opt` VALUES ('13801', '19', '13800', '青原区', '青原区', '5');
INSERT INTO `tb_opt` VALUES ('13802', '19', '13800', '吉州区', '吉州区', '10');
INSERT INTO `tb_opt` VALUES ('13803', '19', '13800', '井冈山市', '井冈山市', '15');
INSERT INTO `tb_opt` VALUES ('13804', '19', '13800', '吉安县', '吉安县', '20');
INSERT INTO `tb_opt` VALUES ('13805', '19', '13800', '永丰县', '永丰县', '25');
INSERT INTO `tb_opt` VALUES ('13806', '19', '13800', '永新县', '永新县', '30');
INSERT INTO `tb_opt` VALUES ('13807', '19', '13800', '新干县', '新干县', '35');
INSERT INTO `tb_opt` VALUES ('13808', '19', '13800', '泰和县', '泰和县', '40');
INSERT INTO `tb_opt` VALUES ('13809', '19', '13800', '峡江县', '峡江县', '45');
INSERT INTO `tb_opt` VALUES ('13810', '19', '13800', '遂川县', '遂川县', '50');
INSERT INTO `tb_opt` VALUES ('13811', '19', '13800', '安福县', '安福县', '55');
INSERT INTO `tb_opt` VALUES ('13812', '19', '13800', '吉水县', '吉水县', '60');
INSERT INTO `tb_opt` VALUES ('13813', '19', '13800', '万安县', '万安县', '65');
INSERT INTO `tb_opt` VALUES ('13814', '19', '13714', '赣州市', '赣州市', '55');
INSERT INTO `tb_opt` VALUES ('13815', '19', '13814', '章贡区', '章贡区', '5');
INSERT INTO `tb_opt` VALUES ('13816', '19', '13814', '南康市', '南康市', '10');
INSERT INTO `tb_opt` VALUES ('13817', '19', '13814', '瑞金市', '瑞金市', '15');
INSERT INTO `tb_opt` VALUES ('13818', '19', '13814', '石城县', '石城县', '20');
INSERT INTO `tb_opt` VALUES ('13819', '19', '13814', '安远县', '安远县', '25');
INSERT INTO `tb_opt` VALUES ('13820', '19', '13814', '赣县', '赣县', '30');
INSERT INTO `tb_opt` VALUES ('13821', '19', '13814', '宁都县', '宁都县', '35');
INSERT INTO `tb_opt` VALUES ('13822', '19', '13814', '寻乌县', '寻乌县', '40');
INSERT INTO `tb_opt` VALUES ('13823', '19', '13814', '兴国县', '兴国县', '45');
INSERT INTO `tb_opt` VALUES ('13824', '19', '13814', '定南县', '定南县', '50');
INSERT INTO `tb_opt` VALUES ('13825', '19', '13814', '上犹县', '上犹县', '55');
INSERT INTO `tb_opt` VALUES ('13826', '19', '13814', '于都县', '于都县', '60');
INSERT INTO `tb_opt` VALUES ('13827', '19', '13814', '龙南县', '龙南县', '65');
INSERT INTO `tb_opt` VALUES ('13828', '19', '13814', '崇义县', '崇义县', '70');
INSERT INTO `tb_opt` VALUES ('13829', '19', '13814', '大余县', '大余县', '75');
INSERT INTO `tb_opt` VALUES ('13830', '19', '13814', '信丰县', '信丰县', '80');
INSERT INTO `tb_opt` VALUES ('13831', '19', '13814', '全南县', '全南县', '85');
INSERT INTO `tb_opt` VALUES ('13832', '19', '13814', '会昌县', '会昌县', '90');
INSERT INTO `tb_opt` VALUES ('13833', '19', '0', '四川省', '四川省', '110');
INSERT INTO `tb_opt` VALUES ('13834', '19', '13833', '成都市', '成都市', '5');
INSERT INTO `tb_opt` VALUES ('13835', '19', '13834', '武侯区', '武侯区', '5');
INSERT INTO `tb_opt` VALUES ('13836', '19', '13834', '金牛区', '金牛区', '10');
INSERT INTO `tb_opt` VALUES ('13837', '19', '13834', '青羊区', '青羊区', '15');
INSERT INTO `tb_opt` VALUES ('13838', '19', '13834', '成华区', '成华区', '20');
INSERT INTO `tb_opt` VALUES ('13839', '19', '13834', '高新区', '高新区', '25');
INSERT INTO `tb_opt` VALUES ('13840', '19', '13834', '锦江区', '锦江区', '30');
INSERT INTO `tb_opt` VALUES ('13841', '19', '13834', '郫县', '郫县', '35');
INSERT INTO `tb_opt` VALUES ('13842', '19', '13834', '双流县', '双流县', '40');
INSERT INTO `tb_opt` VALUES ('13843', '19', '13834', '高新西区', '高新西区', '45');
INSERT INTO `tb_opt` VALUES ('13844', '19', '13834', '龙泉驿区', '龙泉驿区', '50');
INSERT INTO `tb_opt` VALUES ('13845', '19', '13834', '新都区', '新都区', '55');
INSERT INTO `tb_opt` VALUES ('13846', '19', '13834', '温江区', '温江区', '60');
INSERT INTO `tb_opt` VALUES ('13847', '19', '13834', '都江堰市', '都江堰市', '65');
INSERT INTO `tb_opt` VALUES ('13848', '19', '13834', '彭州市', '彭州市', '70');
INSERT INTO `tb_opt` VALUES ('13849', '19', '13834', '青白江区', '青白江区', '75');
INSERT INTO `tb_opt` VALUES ('13850', '19', '13834', '崇州市', '崇州市', '80');
INSERT INTO `tb_opt` VALUES ('13851', '19', '13834', '金堂县', '金堂县', '85');
INSERT INTO `tb_opt` VALUES ('13852', '19', '13834', '新津县', '新津县', '90');
INSERT INTO `tb_opt` VALUES ('13853', '19', '13834', '邛崃市', '邛崃市', '95');
INSERT INTO `tb_opt` VALUES ('13854', '19', '13834', '大邑县', '大邑县', '100');
INSERT INTO `tb_opt` VALUES ('13855', '19', '13834', '蒲江县', '蒲江县', '105');
INSERT INTO `tb_opt` VALUES ('13856', '19', '13833', '自贡市', '自贡市', '10');
INSERT INTO `tb_opt` VALUES ('13857', '19', '13856', '自流井区', '自流井区', '5');
INSERT INTO `tb_opt` VALUES ('13858', '19', '13856', '沿滩区', '沿滩区', '10');
INSERT INTO `tb_opt` VALUES ('13859', '19', '13856', '荣县', '荣县', '15');
INSERT INTO `tb_opt` VALUES ('13860', '19', '13856', '富顺县', '富顺县', '20');
INSERT INTO `tb_opt` VALUES ('13861', '19', '13856', '大安区', '大安区', '25');
INSERT INTO `tb_opt` VALUES ('13862', '19', '13856', '贡井区', '贡井区', '30');
INSERT INTO `tb_opt` VALUES ('13863', '19', '13833', '攀枝花市', '攀枝花市', '15');
INSERT INTO `tb_opt` VALUES ('13864', '19', '13863', '仁和区', '仁和区', '5');
INSERT INTO `tb_opt` VALUES ('13865', '19', '13863', '西区', '西区', '10');
INSERT INTO `tb_opt` VALUES ('13866', '19', '13863', '东区', '东区', '15');
INSERT INTO `tb_opt` VALUES ('13867', '19', '13863', '米易县', '米易县', '20');
INSERT INTO `tb_opt` VALUES ('13868', '19', '13863', '盐边县', '盐边县', '25');
INSERT INTO `tb_opt` VALUES ('13869', '19', '13833', '泸州市', '泸州市', '20');
INSERT INTO `tb_opt` VALUES ('13870', '19', '13869', '纳溪区', '纳溪区', '5');
INSERT INTO `tb_opt` VALUES ('13871', '19', '13869', '江阳区', '江阳区', '10');
INSERT INTO `tb_opt` VALUES ('13872', '19', '13869', '龙马潭区', '龙马潭区', '15');
INSERT INTO `tb_opt` VALUES ('13873', '19', '13869', '泸县', '泸县', '20');
INSERT INTO `tb_opt` VALUES ('13874', '19', '13869', '合江县', '合江县', '25');
INSERT INTO `tb_opt` VALUES ('13875', '19', '13869', '叙永县', '叙永县', '30');
INSERT INTO `tb_opt` VALUES ('13876', '19', '13869', '古蔺县', '古蔺县', '35');
INSERT INTO `tb_opt` VALUES ('13877', '19', '13833', '绵阳市', '绵阳市', '25');
INSERT INTO `tb_opt` VALUES ('13878', '19', '13877', '江油市', '江油市', '5');
INSERT INTO `tb_opt` VALUES ('13879', '19', '13877', '涪城区', '涪城区', '10');
INSERT INTO `tb_opt` VALUES ('13880', '19', '13877', '游仙区', '游仙区', '15');
INSERT INTO `tb_opt` VALUES ('13881', '19', '13877', '高新区', '高新区', '20');
INSERT INTO `tb_opt` VALUES ('13882', '19', '13877', '经开区', '经开区', '25');
INSERT INTO `tb_opt` VALUES ('13883', '19', '13877', '盐亭县', '盐亭县', '30');
INSERT INTO `tb_opt` VALUES ('13884', '19', '13877', '三台县', '三台县', '35');
INSERT INTO `tb_opt` VALUES ('13885', '19', '13877', '平武县', '平武县', '40');
INSERT INTO `tb_opt` VALUES ('13886', '19', '13877', '北川县', '北川县', '45');
INSERT INTO `tb_opt` VALUES ('13887', '19', '13877', '安县', '安县', '50');
INSERT INTO `tb_opt` VALUES ('13888', '19', '13877', '梓潼县', '梓潼县', '55');
INSERT INTO `tb_opt` VALUES ('13889', '19', '13833', '德阳市', '德阳市', '30');
INSERT INTO `tb_opt` VALUES ('13890', '19', '13889', '广汉市', '广汉市', '5');
INSERT INTO `tb_opt` VALUES ('13891', '19', '13889', '什邡市', '什邡市', '10');
INSERT INTO `tb_opt` VALUES ('13892', '19', '13889', '旌阳区', '旌阳区', '15');
INSERT INTO `tb_opt` VALUES ('13893', '19', '13889', '绵竹市', '绵竹市', '20');
INSERT INTO `tb_opt` VALUES ('13894', '19', '13889', '罗江县', '罗江县', '25');
INSERT INTO `tb_opt` VALUES ('13895', '19', '13889', '中江县', '中江县', '30');
INSERT INTO `tb_opt` VALUES ('13896', '19', '13833', '广元市', '广元市', '35');
INSERT INTO `tb_opt` VALUES ('13897', '19', '13896', '元坝区', '元坝区', '5');
INSERT INTO `tb_opt` VALUES ('13898', '19', '13896', '朝天区', '朝天区', '10');
INSERT INTO `tb_opt` VALUES ('13899', '19', '13896', '利州区', '利州区', '15');
INSERT INTO `tb_opt` VALUES ('13900', '19', '13896', '青川县', '青川县', '20');
INSERT INTO `tb_opt` VALUES ('13901', '19', '13896', '旺苍县', '旺苍县', '25');
INSERT INTO `tb_opt` VALUES ('13902', '19', '13896', '剑阁县', '剑阁县', '30');
INSERT INTO `tb_opt` VALUES ('13903', '19', '13896', '苍溪县', '苍溪县', '35');
INSERT INTO `tb_opt` VALUES ('13904', '19', '13833', '遂宁市', '遂宁市', '40');
INSERT INTO `tb_opt` VALUES ('13905', '19', '13904', '船山区', '船山区', '5');
INSERT INTO `tb_opt` VALUES ('13906', '19', '13904', '射洪县', '射洪县', '10');
INSERT INTO `tb_opt` VALUES ('13907', '19', '13904', '蓬溪县', '蓬溪县', '15');
INSERT INTO `tb_opt` VALUES ('13908', '19', '13904', '大英县', '大英县', '20');
INSERT INTO `tb_opt` VALUES ('13909', '19', '13904', '安居区', '安居区', '25');
INSERT INTO `tb_opt` VALUES ('13910', '19', '13833', '内江市', '内江市', '45');
INSERT INTO `tb_opt` VALUES ('13911', '19', '13910', '东兴区', '东兴区', '5');
INSERT INTO `tb_opt` VALUES ('13912', '19', '13910', '资中县', '资中县', '10');
INSERT INTO `tb_opt` VALUES ('13913', '19', '13910', '隆昌县', '隆昌县', '15');
INSERT INTO `tb_opt` VALUES ('13914', '19', '13910', '威远县', '威远县', '20');
INSERT INTO `tb_opt` VALUES ('13915', '19', '13910', '市中区', '市中区', '25');
INSERT INTO `tb_opt` VALUES ('13916', '19', '13833', '乐山市', '乐山市', '50');
INSERT INTO `tb_opt` VALUES ('13917', '19', '13916', '市中区', '市中区', '5');
INSERT INTO `tb_opt` VALUES ('13918', '19', '13916', '峨眉山市', '峨眉山市', '10');
INSERT INTO `tb_opt` VALUES ('13919', '19', '13916', '五通桥区', '五通桥区', '15');
INSERT INTO `tb_opt` VALUES ('13920', '19', '13916', '沙湾区', '沙湾区', '20');
INSERT INTO `tb_opt` VALUES ('13921', '19', '13916', '金口河区', '金口河区', '25');
INSERT INTO `tb_opt` VALUES ('13922', '19', '13916', '夹江县', '夹江县', '30');
INSERT INTO `tb_opt` VALUES ('13923', '19', '13916', '井研县', '井研县', '35');
INSERT INTO `tb_opt` VALUES ('13924', '19', '13916', '犍为县', '犍为县', '40');
INSERT INTO `tb_opt` VALUES ('13925', '19', '13916', '沐川县', '沐川县', '45');
INSERT INTO `tb_opt` VALUES ('13926', '19', '13916', '峨边县', '峨边县', '50');
INSERT INTO `tb_opt` VALUES ('13927', '19', '13916', '马边县', '马边县', '55');
INSERT INTO `tb_opt` VALUES ('13928', '19', '13833', '宜宾市', '宜宾市', '55');
INSERT INTO `tb_opt` VALUES ('13929', '19', '13928', '宜宾县', '宜宾县', '5');
INSERT INTO `tb_opt` VALUES ('13930', '19', '13928', '南溪区', '南溪区', '10');
INSERT INTO `tb_opt` VALUES ('13931', '19', '13928', '江安县', '江安县', '15');
INSERT INTO `tb_opt` VALUES ('13932', '19', '13928', '长宁县', '长宁县', '20');
INSERT INTO `tb_opt` VALUES ('13933', '19', '13928', '兴文县', '兴文县', '25');
INSERT INTO `tb_opt` VALUES ('13934', '19', '13928', '珙县', '珙县', '30');
INSERT INTO `tb_opt` VALUES ('13935', '19', '13928', '翠屏区', '翠屏区', '35');
INSERT INTO `tb_opt` VALUES ('13936', '19', '13928', '高县', '高县', '40');
INSERT INTO `tb_opt` VALUES ('13937', '19', '13928', '屏山县', '屏山县', '45');
INSERT INTO `tb_opt` VALUES ('13938', '19', '13928', '筠连县', '筠连县', '50');
INSERT INTO `tb_opt` VALUES ('13939', '19', '13833', '广安市', '广安市', '60');
INSERT INTO `tb_opt` VALUES ('13940', '19', '13939', '前锋区', '前锋区', '5');
INSERT INTO `tb_opt` VALUES ('13941', '19', '13939', '岳池县', '岳池县', '10');
INSERT INTO `tb_opt` VALUES ('13942', '19', '13939', '武胜县', '武胜县', '15');
INSERT INTO `tb_opt` VALUES ('13943', '19', '13939', '邻水县', '邻水县', '20');
INSERT INTO `tb_opt` VALUES ('13944', '19', '13939', '广安区', '广安区', '25');
INSERT INTO `tb_opt` VALUES ('13945', '19', '13939', '华蓥市', '华蓥市', '30');
INSERT INTO `tb_opt` VALUES ('13946', '19', '13833', '南充市', '南充市', '65');
INSERT INTO `tb_opt` VALUES ('13947', '19', '13946', '顺庆区', '顺庆区', '5');
INSERT INTO `tb_opt` VALUES ('13948', '19', '13946', '高坪区', '高坪区', '10');
INSERT INTO `tb_opt` VALUES ('13949', '19', '13946', '嘉陵区', '嘉陵区', '15');
INSERT INTO `tb_opt` VALUES ('13950', '19', '13946', '西充县', '西充县', '20');
INSERT INTO `tb_opt` VALUES ('13951', '19', '13946', '阆中市', '阆中市', '25');
INSERT INTO `tb_opt` VALUES ('13952', '19', '13946', '南部县', '南部县', '30');
INSERT INTO `tb_opt` VALUES ('13953', '19', '13946', '仪陇县', '仪陇县', '35');
INSERT INTO `tb_opt` VALUES ('13954', '19', '13946', '蓬安县', '蓬安县', '40');
INSERT INTO `tb_opt` VALUES ('13955', '19', '13946', '营山县', '营山县', '45');
INSERT INTO `tb_opt` VALUES ('13956', '19', '13833', '达州市', '达州市', '70');
INSERT INTO `tb_opt` VALUES ('13957', '19', '13956', '通川区', '通川区', '5');
INSERT INTO `tb_opt` VALUES ('13958', '19', '13956', '达县', '达县', '10');
INSERT INTO `tb_opt` VALUES ('13959', '19', '13956', '大竹县', '大竹县', '15');
INSERT INTO `tb_opt` VALUES ('13960', '19', '13956', '渠县', '渠县', '20');
INSERT INTO `tb_opt` VALUES ('13961', '19', '13956', '万源市', '万源市', '25');
INSERT INTO `tb_opt` VALUES ('13962', '19', '13956', '宣汉县', '宣汉县', '30');
INSERT INTO `tb_opt` VALUES ('13963', '19', '13956', '开江县', '开江县', '35');
INSERT INTO `tb_opt` VALUES ('13964', '19', '13833', '巴中市', '巴中市', '75');
INSERT INTO `tb_opt` VALUES ('13965', '19', '13964', '巴州区', '巴州区', '5');
INSERT INTO `tb_opt` VALUES ('13966', '19', '13964', '恩阳区', '恩阳区', '10');
INSERT INTO `tb_opt` VALUES ('13967', '19', '13964', '南江县', '南江县', '15');
INSERT INTO `tb_opt` VALUES ('13968', '19', '13964', '平昌县', '平昌县', '20');
INSERT INTO `tb_opt` VALUES ('13969', '19', '13964', '通江县', '通江县', '25');
INSERT INTO `tb_opt` VALUES ('13970', '19', '13833', '雅安市', '雅安市', '80');
INSERT INTO `tb_opt` VALUES ('13971', '19', '13970', '芦山县', '芦山县', '5');
INSERT INTO `tb_opt` VALUES ('13972', '19', '13970', '石棉县', '石棉县', '10');
INSERT INTO `tb_opt` VALUES ('13973', '19', '13970', '名山区', '名山区', '15');
INSERT INTO `tb_opt` VALUES ('13974', '19', '13970', '天全县', '天全县', '20');
INSERT INTO `tb_opt` VALUES ('13975', '19', '13970', '荥经县', '荥经县', '25');
INSERT INTO `tb_opt` VALUES ('13976', '19', '13970', '汉源县', '汉源县', '30');
INSERT INTO `tb_opt` VALUES ('13977', '19', '13970', '宝兴县', '宝兴县', '35');
INSERT INTO `tb_opt` VALUES ('13978', '19', '13970', '雨城区', '雨城区', '40');
INSERT INTO `tb_opt` VALUES ('13979', '19', '13833', '眉山市', '眉山市', '85');
INSERT INTO `tb_opt` VALUES ('13980', '19', '13979', '仁寿县', '仁寿县', '5');
INSERT INTO `tb_opt` VALUES ('13981', '19', '13979', '彭山县', '彭山县', '10');
INSERT INTO `tb_opt` VALUES ('13982', '19', '13979', '洪雅县', '洪雅县', '15');
INSERT INTO `tb_opt` VALUES ('13983', '19', '13979', '丹棱县', '丹棱县', '20');
INSERT INTO `tb_opt` VALUES ('13984', '19', '13979', '青神县', '青神县', '25');
INSERT INTO `tb_opt` VALUES ('13985', '19', '13979', '东坡区', '东坡区', '30');
INSERT INTO `tb_opt` VALUES ('13986', '19', '13833', '资阳市', '资阳市', '90');
INSERT INTO `tb_opt` VALUES ('13987', '19', '13986', '雁江区', '雁江区', '5');
INSERT INTO `tb_opt` VALUES ('13988', '19', '13986', '安岳县', '安岳县', '10');
INSERT INTO `tb_opt` VALUES ('13989', '19', '13986', '乐至县', '乐至县', '15');
INSERT INTO `tb_opt` VALUES ('13990', '19', '13986', '简阳市', '简阳市', '20');
INSERT INTO `tb_opt` VALUES ('13991', '19', '13833', '阿坝州', '阿坝州', '95');
INSERT INTO `tb_opt` VALUES ('13992', '19', '13991', '马尔康县', '马尔康县', '5');
INSERT INTO `tb_opt` VALUES ('13993', '19', '13991', '九寨沟县', '九寨沟县', '10');
INSERT INTO `tb_opt` VALUES ('13994', '19', '13991', '红原县', '红原县', '15');
INSERT INTO `tb_opt` VALUES ('13995', '19', '13991', '阿坝县', '阿坝县', '20');
INSERT INTO `tb_opt` VALUES ('13996', '19', '13991', '理县', '理县', '25');
INSERT INTO `tb_opt` VALUES ('13997', '19', '13991', '若尔盖县', '若尔盖县', '30');
INSERT INTO `tb_opt` VALUES ('13998', '19', '13991', '金川县', '金川县', '35');
INSERT INTO `tb_opt` VALUES ('13999', '19', '13991', '小金县', '小金县', '40');
INSERT INTO `tb_opt` VALUES ('14000', '19', '13991', '黑水县', '黑水县', '45');
INSERT INTO `tb_opt` VALUES ('14001', '19', '13991', '松潘县', '松潘县', '50');
INSERT INTO `tb_opt` VALUES ('14002', '19', '13991', '壤塘县', '壤塘县', '55');
INSERT INTO `tb_opt` VALUES ('14003', '19', '13991', '茂县', '茂县', '60');
INSERT INTO `tb_opt` VALUES ('14004', '19', '13991', '汶川县', '汶川县', '65');
INSERT INTO `tb_opt` VALUES ('14005', '19', '13833', '甘孜州', '甘孜州', '100');
INSERT INTO `tb_opt` VALUES ('14006', '19', '14005', '康定县', '康定县', '5');
INSERT INTO `tb_opt` VALUES ('14007', '19', '14005', '泸定县', '泸定县', '10');
INSERT INTO `tb_opt` VALUES ('14008', '19', '14005', '九龙县', '九龙县', '15');
INSERT INTO `tb_opt` VALUES ('14009', '19', '14005', '丹巴县', '丹巴县', '20');
INSERT INTO `tb_opt` VALUES ('14010', '19', '14005', '道孚县', '道孚县', '25');
INSERT INTO `tb_opt` VALUES ('14011', '19', '14005', '炉霍县', '炉霍县', '30');
INSERT INTO `tb_opt` VALUES ('14012', '19', '14005', '色达县', '色达县', '35');
INSERT INTO `tb_opt` VALUES ('14013', '19', '14005', '甘孜县', '甘孜县', '40');
INSERT INTO `tb_opt` VALUES ('14014', '19', '14005', '新龙县', '新龙县', '45');
INSERT INTO `tb_opt` VALUES ('14015', '19', '14005', '白玉县', '白玉县', '50');
INSERT INTO `tb_opt` VALUES ('14016', '19', '14005', '德格县', '德格县', '55');
INSERT INTO `tb_opt` VALUES ('14017', '19', '14005', '石渠县', '石渠县', '60');
INSERT INTO `tb_opt` VALUES ('14018', '19', '14005', '雅江县', '雅江县', '65');
INSERT INTO `tb_opt` VALUES ('14019', '19', '14005', '理塘县', '理塘县', '70');
INSERT INTO `tb_opt` VALUES ('14020', '19', '14005', '巴塘县', '巴塘县', '75');
INSERT INTO `tb_opt` VALUES ('14021', '19', '14005', '稻城县', '稻城县', '80');
INSERT INTO `tb_opt` VALUES ('14022', '19', '14005', '乡城县', '乡城县', '85');
INSERT INTO `tb_opt` VALUES ('14023', '19', '14005', '得荣县', '得荣县', '90');
INSERT INTO `tb_opt` VALUES ('14024', '19', '13833', '凉山州', '凉山州', '105');
INSERT INTO `tb_opt` VALUES ('14025', '19', '14024', '美姑县', '美姑县', '5');
INSERT INTO `tb_opt` VALUES ('14026', '19', '14024', '昭觉县', '昭觉县', '10');
INSERT INTO `tb_opt` VALUES ('14027', '19', '14024', '会理县', '会理县', '15');
INSERT INTO `tb_opt` VALUES ('14028', '19', '14024', '会东县', '会东县', '20');
INSERT INTO `tb_opt` VALUES ('14029', '19', '14024', '普格县', '普格县', '25');
INSERT INTO `tb_opt` VALUES ('14030', '19', '14024', '宁南县', '宁南县', '30');
INSERT INTO `tb_opt` VALUES ('14031', '19', '14024', '德昌县', '德昌县', '35');
INSERT INTO `tb_opt` VALUES ('14032', '19', '14024', '冕宁县', '冕宁县', '40');
INSERT INTO `tb_opt` VALUES ('14033', '19', '14024', '盐源县', '盐源县', '45');
INSERT INTO `tb_opt` VALUES ('14034', '19', '14024', '金阳县', '金阳县', '50');
INSERT INTO `tb_opt` VALUES ('14035', '19', '14024', '布拖县', '布拖县', '55');
INSERT INTO `tb_opt` VALUES ('14036', '19', '14024', '雷波县', '雷波县', '60');
INSERT INTO `tb_opt` VALUES ('14037', '19', '14024', '越西县', '越西县', '65');
INSERT INTO `tb_opt` VALUES ('14038', '19', '14024', '喜德县', '喜德县', '70');
INSERT INTO `tb_opt` VALUES ('14039', '19', '14024', '甘洛县', '甘洛县', '75');
INSERT INTO `tb_opt` VALUES ('14040', '19', '14024', '木里县', '木里县', '80');
INSERT INTO `tb_opt` VALUES ('14041', '19', '14024', '西昌市', '西昌市', '85');
INSERT INTO `tb_opt` VALUES ('14042', '19', '0', '海南省', '海南省', '115');
INSERT INTO `tb_opt` VALUES ('14043', '19', '14042', '海口市', '海口市', '5');
INSERT INTO `tb_opt` VALUES ('14044', '19', '14043', '秀英区', '秀英区', '5');
INSERT INTO `tb_opt` VALUES ('14045', '19', '14043', '龙华区', '龙华区', '10');
INSERT INTO `tb_opt` VALUES ('14046', '19', '14043', '琼山区', '琼山区', '15');
INSERT INTO `tb_opt` VALUES ('14047', '19', '14043', '美兰区', '美兰区', '20');
INSERT INTO `tb_opt` VALUES ('14048', '19', '14042', '儋州市', '儋州市', '10');
INSERT INTO `tb_opt` VALUES ('14049', '19', '14048', '热作学院', '热作学院', '5');
INSERT INTO `tb_opt` VALUES ('14050', '19', '14048', '那大镇', '那大镇', '10');
INSERT INTO `tb_opt` VALUES ('14051', '19', '14048', '富克镇', '富克镇', '15');
INSERT INTO `tb_opt` VALUES ('14052', '19', '14048', '和庆镇', '和庆镇', '20');
INSERT INTO `tb_opt` VALUES ('14053', '19', '14048', '南丰镇', '南丰镇', '25');
INSERT INTO `tb_opt` VALUES ('14054', '19', '14048', '大成镇', '大成镇', '30');
INSERT INTO `tb_opt` VALUES ('14055', '19', '14048', '雅星镇', '雅星镇', '35');
INSERT INTO `tb_opt` VALUES ('14056', '19', '14048', '兰洋镇', '兰洋镇', '40');
INSERT INTO `tb_opt` VALUES ('14057', '19', '14048', '光村镇', '光村镇', '45');
INSERT INTO `tb_opt` VALUES ('14058', '19', '14048', '木棠镇', '木棠镇', '50');
INSERT INTO `tb_opt` VALUES ('14059', '19', '14048', '海头镇', '海头镇', '55');
INSERT INTO `tb_opt` VALUES ('14060', '19', '14048', '峨蔓镇', '峨蔓镇', '60');
INSERT INTO `tb_opt` VALUES ('14061', '19', '14048', '三都镇', '三都镇', '65');
INSERT INTO `tb_opt` VALUES ('14062', '19', '14048', '王五镇', '王五镇', '70');
INSERT INTO `tb_opt` VALUES ('14063', '19', '14048', '白马井镇', '白马井镇', '75');
INSERT INTO `tb_opt` VALUES ('14064', '19', '14048', '中和镇', '中和镇', '80');
INSERT INTO `tb_opt` VALUES ('14065', '19', '14048', '排浦镇', '排浦镇', '85');
INSERT INTO `tb_opt` VALUES ('14066', '19', '14048', '东成镇', '东成镇', '90');
INSERT INTO `tb_opt` VALUES ('14067', '19', '14048', '新州镇', '新州镇', '95');
INSERT INTO `tb_opt` VALUES ('14068', '19', '14048', '洋浦经济开发区', '洋浦经济开发区', '100');
INSERT INTO `tb_opt` VALUES ('14069', '19', '14048', '西培农场', '西培农场', '105');
INSERT INTO `tb_opt` VALUES ('14070', '19', '14048', '西联农场', '西联农场', '110');
INSERT INTO `tb_opt` VALUES ('14071', '19', '14048', '蓝洋农场', '蓝洋农场', '115');
INSERT INTO `tb_opt` VALUES ('14072', '19', '14048', '八一农场', '八一农场', '120');
INSERT INTO `tb_opt` VALUES ('14073', '19', '14048', '西华农场', '西华农场', '125');
INSERT INTO `tb_opt` VALUES ('14074', '19', '14048', '西庆农场', '西庆农场', '130');
INSERT INTO `tb_opt` VALUES ('14075', '19', '14048', '西流农场', '西流农场', '135');
INSERT INTO `tb_opt` VALUES ('14076', '19', '14048', '新盈农场', '新盈农场', '140');
INSERT INTO `tb_opt` VALUES ('14077', '19', '14048', '龙山农场', '龙山农场', '145');
INSERT INTO `tb_opt` VALUES ('14078', '19', '14048', '红岭农场', '红岭农场', '150');
INSERT INTO `tb_opt` VALUES ('14079', '19', '14042', '琼海市', '琼海市', '15');
INSERT INTO `tb_opt` VALUES ('14080', '19', '14079', '嘉积镇', '嘉积镇', '5');
INSERT INTO `tb_opt` VALUES ('14081', '19', '14079', '万泉镇', '万泉镇', '10');
INSERT INTO `tb_opt` VALUES ('14082', '19', '14079', '石壁镇', '石壁镇', '15');
INSERT INTO `tb_opt` VALUES ('14083', '19', '14079', '中原镇', '中原镇', '20');
INSERT INTO `tb_opt` VALUES ('14084', '19', '14079', '博鳌镇', '博鳌镇', '25');
INSERT INTO `tb_opt` VALUES ('14085', '19', '14079', '阳江镇', '阳江镇', '30');
INSERT INTO `tb_opt` VALUES ('14086', '19', '14079', '龙江镇', '龙江镇', '35');
INSERT INTO `tb_opt` VALUES ('14087', '19', '14079', '潭门镇', '潭门镇', '40');
INSERT INTO `tb_opt` VALUES ('14088', '19', '14079', '塔洋镇', '塔洋镇', '45');
INSERT INTO `tb_opt` VALUES ('14089', '19', '14079', '长坡镇', '长坡镇', '50');
INSERT INTO `tb_opt` VALUES ('14090', '19', '14079', '大路镇', '大路镇', '55');
INSERT INTO `tb_opt` VALUES ('14091', '19', '14079', '会山镇', '会山镇', '60');
INSERT INTO `tb_opt` VALUES ('14092', '19', '14079', '彬村山华侨农场', '彬村山华侨农场', '65');
INSERT INTO `tb_opt` VALUES ('14093', '19', '14079', '东太农场', '东太农场', '70');
INSERT INTO `tb_opt` VALUES ('14094', '19', '14079', '东红农场', '东红农场', '75');
INSERT INTO `tb_opt` VALUES ('14095', '19', '14079', '东升农场', '东升农场', '80');
INSERT INTO `tb_opt` VALUES ('14096', '19', '14079', '南俸农场', '南俸农场', '85');
INSERT INTO `tb_opt` VALUES ('14097', '19', '14042', '万宁市', '万宁市', '20');
INSERT INTO `tb_opt` VALUES ('14098', '19', '14097', '万城镇', '万城镇', '5');
INSERT INTO `tb_opt` VALUES ('14099', '19', '14097', '龙滚镇', '龙滚镇', '10');
INSERT INTO `tb_opt` VALUES ('14100', '19', '14097', '和乐镇', '和乐镇', '15');
INSERT INTO `tb_opt` VALUES ('14101', '19', '14097', '后安镇', '后安镇', '20');
INSERT INTO `tb_opt` VALUES ('14102', '19', '14097', '大茂镇', '大茂镇', '25');
INSERT INTO `tb_opt` VALUES ('14103', '19', '14097', '东澳镇', '东澳镇', '30');
INSERT INTO `tb_opt` VALUES ('14104', '19', '14097', '礼纪镇', '礼纪镇', '35');
INSERT INTO `tb_opt` VALUES ('14105', '19', '14097', '长丰镇', '长丰镇', '40');
INSERT INTO `tb_opt` VALUES ('14106', '19', '14097', '山根镇', '山根镇', '45');
INSERT INTO `tb_opt` VALUES ('14107', '19', '14097', '北大镇', '北大镇', '50');
INSERT INTO `tb_opt` VALUES ('14108', '19', '14097', '南桥镇', '南桥镇', '55');
INSERT INTO `tb_opt` VALUES ('14109', '19', '14097', '三更罗镇', '三更罗镇', '60');
INSERT INTO `tb_opt` VALUES ('14110', '19', '14097', '六连林场', '六连林场', '65');
INSERT INTO `tb_opt` VALUES ('14111', '19', '14097', '东兴农场', '东兴农场', '70');
INSERT INTO `tb_opt` VALUES ('14112', '19', '14097', '东和农场', '东和农场', '75');
INSERT INTO `tb_opt` VALUES ('14113', '19', '14097', '新中农场', '新中农场', '80');
INSERT INTO `tb_opt` VALUES ('14114', '19', '14097', '兴隆华侨农场', '兴隆华侨农场', '85');
INSERT INTO `tb_opt` VALUES ('14115', '19', '14042', '东方市', '东方市', '25');
INSERT INTO `tb_opt` VALUES ('14116', '19', '14115', '八所镇', '八所镇', '5');
INSERT INTO `tb_opt` VALUES ('14117', '19', '14115', '东河镇', '东河镇', '10');
INSERT INTO `tb_opt` VALUES ('14118', '19', '14115', '大田镇', '大田镇', '15');
INSERT INTO `tb_opt` VALUES ('14119', '19', '14115', '感城镇', '感城镇', '20');
INSERT INTO `tb_opt` VALUES ('14120', '19', '14115', '板桥镇', '板桥镇', '25');
INSERT INTO `tb_opt` VALUES ('14121', '19', '14115', '三家镇', '三家镇', '30');
INSERT INTO `tb_opt` VALUES ('14122', '19', '14115', '四更镇', '四更镇', '35');
INSERT INTO `tb_opt` VALUES ('14123', '19', '14115', '新龙镇', '新龙镇', '40');
INSERT INTO `tb_opt` VALUES ('14124', '19', '14115', '天安乡', '天安乡', '45');
INSERT INTO `tb_opt` VALUES ('14125', '19', '14115', '江边乡', '江边乡', '50');
INSERT INTO `tb_opt` VALUES ('14126', '19', '14115', '广坝农场', '广坝农场', '55');
INSERT INTO `tb_opt` VALUES ('14127', '19', '14115', '东方华侨农场', '东方华侨农场', '60');
INSERT INTO `tb_opt` VALUES ('14128', '19', '14042', '三亚市', '三亚市', '30');
INSERT INTO `tb_opt` VALUES ('14129', '19', '14128', '崖城镇', '崖城镇', '5');
INSERT INTO `tb_opt` VALUES ('14130', '19', '14128', '海棠湾镇', '海棠湾镇', '10');
INSERT INTO `tb_opt` VALUES ('14131', '19', '14128', '吉阳镇', '吉阳镇', '15');
INSERT INTO `tb_opt` VALUES ('14132', '19', '14128', '凤凰镇', '凤凰镇', '20');
INSERT INTO `tb_opt` VALUES ('14133', '19', '14128', '天涯镇', '天涯镇', '25');
INSERT INTO `tb_opt` VALUES ('14134', '19', '14128', '育才镇', '育才镇', '30');
INSERT INTO `tb_opt` VALUES ('14135', '19', '14128', '河西区', '河西区', '35');
INSERT INTO `tb_opt` VALUES ('14136', '19', '14128', '河东区', '河东区', '40');
INSERT INTO `tb_opt` VALUES ('14137', '19', '14128', '南田农场', '南田农场', '45');
INSERT INTO `tb_opt` VALUES ('14138', '19', '14128', '南新农场', '南新农场', '50');
INSERT INTO `tb_opt` VALUES ('14139', '19', '14128', '南岛农场', '南岛农场', '55');
INSERT INTO `tb_opt` VALUES ('14140', '19', '14128', '立才农场', '立才农场', '60');
INSERT INTO `tb_opt` VALUES ('14141', '19', '14128', '南滨农场', '南滨农场', '65');
INSERT INTO `tb_opt` VALUES ('14142', '19', '14042', '文昌市', '文昌市', '35');
INSERT INTO `tb_opt` VALUES ('14143', '19', '14142', '文城镇', '文城镇', '5');
INSERT INTO `tb_opt` VALUES ('14144', '19', '14142', '重兴镇', '重兴镇', '10');
INSERT INTO `tb_opt` VALUES ('14145', '19', '14142', '蓬莱镇', '蓬莱镇', '15');
INSERT INTO `tb_opt` VALUES ('14146', '19', '14142', '会文镇', '会文镇', '20');
INSERT INTO `tb_opt` VALUES ('14147', '19', '14142', '东路镇', '东路镇', '25');
INSERT INTO `tb_opt` VALUES ('14148', '19', '14142', '潭牛镇', '潭牛镇', '30');
INSERT INTO `tb_opt` VALUES ('14149', '19', '14142', '东阁镇', '东阁镇', '35');
INSERT INTO `tb_opt` VALUES ('14150', '19', '14142', '文教镇', '文教镇', '40');
INSERT INTO `tb_opt` VALUES ('14151', '19', '14142', '东郊镇', '东郊镇', '45');
INSERT INTO `tb_opt` VALUES ('14152', '19', '14142', '龙楼镇', '龙楼镇', '50');
INSERT INTO `tb_opt` VALUES ('14153', '19', '14142', '昌洒镇', '昌洒镇', '55');
INSERT INTO `tb_opt` VALUES ('14154', '19', '14142', '翁田镇', '翁田镇', '60');
INSERT INTO `tb_opt` VALUES ('14155', '19', '14142', '抱罗镇', '抱罗镇', '65');
INSERT INTO `tb_opt` VALUES ('14156', '19', '14142', '冯坡镇', '冯坡镇', '70');
INSERT INTO `tb_opt` VALUES ('14157', '19', '14142', '锦山镇', '锦山镇', '75');
INSERT INTO `tb_opt` VALUES ('14158', '19', '14142', '铺前镇', '铺前镇', '80');
INSERT INTO `tb_opt` VALUES ('14159', '19', '14142', '公坡镇', '公坡镇', '85');
INSERT INTO `tb_opt` VALUES ('14160', '19', '14142', '迈号镇', '迈号镇', '90');
INSERT INTO `tb_opt` VALUES ('14161', '19', '14142', '清谰镇', '清谰镇', '95');
INSERT INTO `tb_opt` VALUES ('14162', '19', '14142', '南阳镇', '南阳镇', '100');
INSERT INTO `tb_opt` VALUES ('14163', '19', '14142', '新桥镇', '新桥镇', '105');
INSERT INTO `tb_opt` VALUES ('14164', '19', '14142', '头苑镇', '头苑镇', '110');
INSERT INTO `tb_opt` VALUES ('14165', '19', '14142', '宝芳乡', '宝芳乡', '115');
INSERT INTO `tb_opt` VALUES ('14166', '19', '14142', '龙马乡', '龙马乡', '120');
INSERT INTO `tb_opt` VALUES ('14167', '19', '14142', '湖山乡', '湖山乡', '125');
INSERT INTO `tb_opt` VALUES ('14168', '19', '14142', '东路农场', '东路农场', '130');
INSERT INTO `tb_opt` VALUES ('14169', '19', '14142', '南阳农场', '南阳农场', '135');
INSERT INTO `tb_opt` VALUES ('14170', '19', '14142', '罗豆农场', '罗豆农场', '140');
INSERT INTO `tb_opt` VALUES ('14171', '19', '14142', '橡胶研究所', '橡胶研究所', '145');
INSERT INTO `tb_opt` VALUES ('14172', '19', '14042', '五指山市', '五指山市', '40');
INSERT INTO `tb_opt` VALUES ('14173', '19', '14172', '通什镇', '通什镇', '5');
INSERT INTO `tb_opt` VALUES ('14174', '19', '14172', '南圣镇', '南圣镇', '10');
INSERT INTO `tb_opt` VALUES ('14175', '19', '14172', '毛阳镇', '毛阳镇', '15');
INSERT INTO `tb_opt` VALUES ('14176', '19', '14172', '番阳镇', '番阳镇', '20');
INSERT INTO `tb_opt` VALUES ('14177', '19', '14172', '畅好乡', '畅好乡', '25');
INSERT INTO `tb_opt` VALUES ('14178', '19', '14172', '毛道乡', '毛道乡', '30');
INSERT INTO `tb_opt` VALUES ('14179', '19', '14172', '水满乡', '水满乡', '35');
INSERT INTO `tb_opt` VALUES ('14180', '19', '14172', '畅好农场', '畅好农场', '40');
INSERT INTO `tb_opt` VALUES ('14181', '19', '14042', '临高县', '临高县', '45');
INSERT INTO `tb_opt` VALUES ('14182', '19', '14181', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('14183', '19', '14181', '临城镇', '临城镇', '10');
INSERT INTO `tb_opt` VALUES ('14184', '19', '14181', '波莲镇', '波莲镇', '15');
INSERT INTO `tb_opt` VALUES ('14185', '19', '14181', '东英镇', '东英镇', '20');
INSERT INTO `tb_opt` VALUES ('14186', '19', '14181', '博厚镇', '博厚镇', '25');
INSERT INTO `tb_opt` VALUES ('14187', '19', '14181', '皇桐镇', '皇桐镇', '30');
INSERT INTO `tb_opt` VALUES ('14188', '19', '14181', '多文镇', '多文镇', '35');
INSERT INTO `tb_opt` VALUES ('14189', '19', '14181', '和舍镇', '和舍镇', '40');
INSERT INTO `tb_opt` VALUES ('14190', '19', '14181', '南宝镇', '南宝镇', '45');
INSERT INTO `tb_opt` VALUES ('14191', '19', '14181', '新盈镇', '新盈镇', '50');
INSERT INTO `tb_opt` VALUES ('14192', '19', '14181', '调楼镇', '调楼镇', '55');
INSERT INTO `tb_opt` VALUES ('14193', '19', '14181', '加来镇', '加来镇', '60');
INSERT INTO `tb_opt` VALUES ('14194', '19', '14181', '红华农场', '红华农场', '65');
INSERT INTO `tb_opt` VALUES ('14195', '19', '14181', '加来农场', '加来农场', '70');
INSERT INTO `tb_opt` VALUES ('14196', '19', '14042', '澄迈县', '澄迈县', '50');
INSERT INTO `tb_opt` VALUES ('14197', '19', '14196', '城区', '城区', '5');
INSERT INTO `tb_opt` VALUES ('14198', '19', '14196', '金江镇', '金江镇', '10');
INSERT INTO `tb_opt` VALUES ('14199', '19', '14196', '老城镇', '老城镇', '15');
INSERT INTO `tb_opt` VALUES ('14200', '19', '14196', '瑞溪镇', '瑞溪镇', '20');
INSERT INTO `tb_opt` VALUES ('14201', '19', '14196', '永发镇', '永发镇', '25');
INSERT INTO `tb_opt` VALUES ('14202', '19', '14196', '加乐镇', '加乐镇', '30');
INSERT INTO `tb_opt` VALUES ('14203', '19', '14196', '文儒镇', '文儒镇', '35');
INSERT INTO `tb_opt` VALUES ('14204', '19', '14196', '中兴镇', '中兴镇', '40');
INSERT INTO `tb_opt` VALUES ('14205', '19', '14196', '仁兴镇', '仁兴镇', '45');
INSERT INTO `tb_opt` VALUES ('14206', '19', '14196', '福山镇', '福山镇', '50');
INSERT INTO `tb_opt` VALUES ('14207', '19', '14196', '桥头镇', '桥头镇', '55');
INSERT INTO `tb_opt` VALUES ('14208', '19', '14196', '大丰镇', '大丰镇', '60');
INSERT INTO `tb_opt` VALUES ('14209', '19', '14196', '红光农场', '红光农场', '65');
INSERT INTO `tb_opt` VALUES ('14210', '19', '14196', '西达农场', '西达农场', '70');
INSERT INTO `tb_opt` VALUES ('14211', '19', '14196', '金安农场', '金安农场', '75');
INSERT INTO `tb_opt` VALUES ('14212', '19', '14042', '定安县', '定安县', '55');
INSERT INTO `tb_opt` VALUES ('14213', '19', '14212', '黄竹镇', '黄竹镇', '5');
INSERT INTO `tb_opt` VALUES ('14214', '19', '14212', '城区', '城区', '10');
INSERT INTO `tb_opt` VALUES ('14215', '19', '14212', '定城镇', '定城镇', '15');
INSERT INTO `tb_opt` VALUES ('14216', '19', '14212', '新竹镇', '新竹镇', '20');
INSERT INTO `tb_opt` VALUES ('14217', '19', '14212', '龙湖镇', '龙湖镇', '25');
INSERT INTO `tb_opt` VALUES ('14218', '19', '14212', '雷鸣镇', '雷鸣镇', '30');
INSERT INTO `tb_opt` VALUES ('14219', '19', '14212', '龙门镇', '龙门镇', '35');
INSERT INTO `tb_opt` VALUES ('14220', '19', '14212', '龙河镇', '龙河镇', '40');
INSERT INTO `tb_opt` VALUES ('14221', '19', '14212', '岭口镇', '岭口镇', '45');
INSERT INTO `tb_opt` VALUES ('14222', '19', '14212', '翰林镇', '翰林镇', '50');
INSERT INTO `tb_opt` VALUES ('14223', '19', '14212', '富文镇', '富文镇', '55');
INSERT INTO `tb_opt` VALUES ('14224', '19', '14212', '金鸡岭农场', '金鸡岭农场', '60');
INSERT INTO `tb_opt` VALUES ('14225', '19', '14212', '中瑞农场', '中瑞农场', '65');
INSERT INTO `tb_opt` VALUES ('14226', '19', '14212', '南海农场', '南海农场', '70');
INSERT INTO `tb_opt` VALUES ('14227', '19', '14042', '屯昌县', '屯昌县', '60');
INSERT INTO `tb_opt` VALUES ('14228', '19', '14227', '县城内', '县城内', '5');
INSERT INTO `tb_opt` VALUES ('14229', '19', '14227', '屯城镇', '屯城镇', '10');
INSERT INTO `tb_opt` VALUES ('14230', '19', '14227', '新兴镇', '新兴镇', '15');
INSERT INTO `tb_opt` VALUES ('14231', '19', '14227', '枫木镇', '枫木镇', '20');
INSERT INTO `tb_opt` VALUES ('14232', '19', '14227', '乌坡镇', '乌坡镇', '25');
INSERT INTO `tb_opt` VALUES ('14233', '19', '14227', '南吕镇', '南吕镇', '30');
INSERT INTO `tb_opt` VALUES ('14234', '19', '14227', '南坤镇', '南坤镇', '35');
INSERT INTO `tb_opt` VALUES ('14235', '19', '14227', '中建农场', '中建农场', '40');
INSERT INTO `tb_opt` VALUES ('14236', '19', '14227', '坡心镇', '坡心镇', '45');
INSERT INTO `tb_opt` VALUES ('14237', '19', '14227', '中坤农场', '中坤农场', '50');
INSERT INTO `tb_opt` VALUES ('14238', '19', '14227', '西昌镇', '西昌镇', '55');
INSERT INTO `tb_opt` VALUES ('14239', '19', '14042', '昌江县', '昌江县', '65');
INSERT INTO `tb_opt` VALUES ('14240', '19', '14239', '红林农场', '红林农场', '5');
INSERT INTO `tb_opt` VALUES ('14241', '19', '14239', '城区', '城区', '10');
INSERT INTO `tb_opt` VALUES ('14242', '19', '14239', '石碌镇', '石碌镇', '15');
INSERT INTO `tb_opt` VALUES ('14243', '19', '14239', '叉河镇', '叉河镇', '20');
INSERT INTO `tb_opt` VALUES ('14244', '19', '14239', '十月田镇', '十月田镇', '25');
INSERT INTO `tb_opt` VALUES ('14245', '19', '14239', '乌烈镇', '乌烈镇', '30');
INSERT INTO `tb_opt` VALUES ('14246', '19', '14239', '昌化镇', '昌化镇', '35');
INSERT INTO `tb_opt` VALUES ('14247', '19', '14239', '海尾镇', '海尾镇', '40');
INSERT INTO `tb_opt` VALUES ('14248', '19', '14239', '七叉镇', '七叉镇', '45');
INSERT INTO `tb_opt` VALUES ('14249', '19', '14239', '王下乡', '王下乡', '50');
INSERT INTO `tb_opt` VALUES ('14250', '19', '14239', '海南矿业公司', '海南矿业公司', '55');
INSERT INTO `tb_opt` VALUES ('14251', '19', '14239', '霸王岭林场', '霸王岭林场', '60');
INSERT INTO `tb_opt` VALUES ('14252', '19', '14042', '白沙县', '白沙县', '70');
INSERT INTO `tb_opt` VALUES ('14253', '19', '14252', '南开乡', '南开乡', '5');
INSERT INTO `tb_opt` VALUES ('14254', '19', '14252', '阜龙乡', '阜龙乡', '10');
INSERT INTO `tb_opt` VALUES ('14255', '19', '14252', '青松乡', '青松乡', '15');
INSERT INTO `tb_opt` VALUES ('14256', '19', '14252', '金波乡', '金波乡', '20');
INSERT INTO `tb_opt` VALUES ('14257', '19', '14252', '荣邦乡', '荣邦乡', '25');
INSERT INTO `tb_opt` VALUES ('14258', '19', '14252', '城区', '城区', '30');
INSERT INTO `tb_opt` VALUES ('14259', '19', '14252', '白沙农场', '白沙农场', '35');
INSERT INTO `tb_opt` VALUES ('14260', '19', '14252', '牙叉镇', '牙叉镇', '40');
INSERT INTO `tb_opt` VALUES ('14261', '19', '14252', '龙江农场', '龙江农场', '45');
INSERT INTO `tb_opt` VALUES ('14262', '19', '14252', '七坊镇', '七坊镇', '50');
INSERT INTO `tb_opt` VALUES ('14263', '19', '14252', '邦溪农场', '邦溪农场', '55');
INSERT INTO `tb_opt` VALUES ('14264', '19', '14252', '邦溪镇', '邦溪镇', '60');
INSERT INTO `tb_opt` VALUES ('14265', '19', '14252', '打安镇', '打安镇', '65');
INSERT INTO `tb_opt` VALUES ('14266', '19', '14252', '细水乡', '细水乡', '70');
INSERT INTO `tb_opt` VALUES ('14267', '19', '14252', '元门乡', '元门乡', '75');
INSERT INTO `tb_opt` VALUES ('14268', '19', '14042', '琼中县', '琼中县', '75');
INSERT INTO `tb_opt` VALUES ('14269', '19', '14268', '吊罗山乡', '吊罗山乡', '5');
INSERT INTO `tb_opt` VALUES ('14270', '19', '14268', '黎母山林业公司', '黎母山林业公司', '10');
INSERT INTO `tb_opt` VALUES ('14271', '19', '14268', '阳江农场', '阳江农场', '15');
INSERT INTO `tb_opt` VALUES ('14272', '19', '14268', '乌石农场', '乌石农场', '20');
INSERT INTO `tb_opt` VALUES ('14273', '19', '14268', '加钗农场', '加钗农场', '25');
INSERT INTO `tb_opt` VALUES ('14274', '19', '14268', '长征农场', '长征农场', '30');
INSERT INTO `tb_opt` VALUES ('14275', '19', '14268', '营根镇', '营根镇', '35');
INSERT INTO `tb_opt` VALUES ('14276', '19', '14268', '湾岭镇', '湾岭镇', '40');
INSERT INTO `tb_opt` VALUES ('14277', '19', '14268', '黎母山镇', '黎母山镇', '45');
INSERT INTO `tb_opt` VALUES ('14278', '19', '14268', '和平镇', '和平镇', '50');
INSERT INTO `tb_opt` VALUES ('14279', '19', '14268', '长征镇', '长征镇', '55');
INSERT INTO `tb_opt` VALUES ('14280', '19', '14268', '红毛镇', '红毛镇', '60');
INSERT INTO `tb_opt` VALUES ('14281', '19', '14268', '中平镇', '中平镇', '65');
INSERT INTO `tb_opt` VALUES ('14282', '19', '14268', '上安乡', '上安乡', '70');
INSERT INTO `tb_opt` VALUES ('14283', '19', '14268', '什运乡', '什运乡', '75');
INSERT INTO `tb_opt` VALUES ('14284', '19', '14268', '城区', '城区', '80');
INSERT INTO `tb_opt` VALUES ('14285', '19', '14042', '陵水县', '陵水县', '80');
INSERT INTO `tb_opt` VALUES ('14286', '19', '14285', '吊罗山林业公司', '吊罗山林业公司', '5');
INSERT INTO `tb_opt` VALUES ('14287', '19', '14285', '岭门农场', '岭门农场', '10');
INSERT INTO `tb_opt` VALUES ('14288', '19', '14285', '南平农场', '南平农场', '15');
INSERT INTO `tb_opt` VALUES ('14289', '19', '14285', '椰林镇', '椰林镇', '20');
INSERT INTO `tb_opt` VALUES ('14290', '19', '14285', '光坡镇', '光坡镇', '25');
INSERT INTO `tb_opt` VALUES ('14291', '19', '14285', '三才镇', '三才镇', '30');
INSERT INTO `tb_opt` VALUES ('14292', '19', '14285', '英州镇', '英州镇', '35');
INSERT INTO `tb_opt` VALUES ('14293', '19', '14285', '隆广镇', '隆广镇', '40');
INSERT INTO `tb_opt` VALUES ('14294', '19', '14285', '文罗镇', '文罗镇', '45');
INSERT INTO `tb_opt` VALUES ('14295', '19', '14285', '本号镇', '本号镇', '50');
INSERT INTO `tb_opt` VALUES ('14296', '19', '14285', '新村镇', '新村镇', '55');
INSERT INTO `tb_opt` VALUES ('14297', '19', '14285', '黎安镇', '黎安镇', '60');
INSERT INTO `tb_opt` VALUES ('14298', '19', '14285', '提蒙乡', '提蒙乡', '65');
INSERT INTO `tb_opt` VALUES ('14299', '19', '14285', '群英乡', '群英乡', '70');
INSERT INTO `tb_opt` VALUES ('14300', '19', '14285', '城区', '城区', '75');
INSERT INTO `tb_opt` VALUES ('14301', '19', '14042', '保亭县', '保亭县', '85');
INSERT INTO `tb_opt` VALUES ('14302', '19', '14301', '保亭研究所', '保亭研究所', '5');
INSERT INTO `tb_opt` VALUES ('14303', '19', '14301', '新星农场', '新星农场', '10');
INSERT INTO `tb_opt` VALUES ('14304', '19', '14301', '金江农场', '金江农场', '15');
INSERT INTO `tb_opt` VALUES ('14305', '19', '14301', '三道农场', '三道农场', '20');
INSERT INTO `tb_opt` VALUES ('14306', '19', '14301', '保城镇', '保城镇', '25');
INSERT INTO `tb_opt` VALUES ('14307', '19', '14301', '什玲镇', '什玲镇', '30');
INSERT INTO `tb_opt` VALUES ('14308', '19', '14301', '加茂镇', '加茂镇', '35');
INSERT INTO `tb_opt` VALUES ('14309', '19', '14301', '响水镇', '响水镇', '40');
INSERT INTO `tb_opt` VALUES ('14310', '19', '14301', '新政镇', '新政镇', '45');
INSERT INTO `tb_opt` VALUES ('14311', '19', '14301', '三道镇', '三道镇', '50');
INSERT INTO `tb_opt` VALUES ('14312', '19', '14301', '六弓乡', '六弓乡', '55');
INSERT INTO `tb_opt` VALUES ('14313', '19', '14301', '南林乡', '南林乡', '60');
INSERT INTO `tb_opt` VALUES ('14314', '19', '14301', '毛感乡', '毛感乡', '65');
INSERT INTO `tb_opt` VALUES ('14315', '19', '14042', '乐东县', '乐东县', '90');
INSERT INTO `tb_opt` VALUES ('14316', '19', '14315', '尖峰岭林业公司', '尖峰岭林业公司', '5');
INSERT INTO `tb_opt` VALUES ('14317', '19', '14315', '莺歌海盐场', '莺歌海盐场', '10');
INSERT INTO `tb_opt` VALUES ('14318', '19', '14315', '山荣农场', '山荣农场', '15');
INSERT INTO `tb_opt` VALUES ('14319', '19', '14315', '乐光农场', '乐光农场', '20');
INSERT INTO `tb_opt` VALUES ('14320', '19', '14315', '抱由镇', '抱由镇', '25');
INSERT INTO `tb_opt` VALUES ('14321', '19', '14315', '保国农场', '保国农场', '30');
INSERT INTO `tb_opt` VALUES ('14322', '19', '14315', '万冲镇', '万冲镇', '35');
INSERT INTO `tb_opt` VALUES ('14323', '19', '14315', '大安镇', '大安镇', '40');
INSERT INTO `tb_opt` VALUES ('14324', '19', '14315', '志仲镇', '志仲镇', '45');
INSERT INTO `tb_opt` VALUES ('14325', '19', '14315', '千家镇', '千家镇', '50');
INSERT INTO `tb_opt` VALUES ('14326', '19', '14315', '九所镇', '九所镇', '55');
INSERT INTO `tb_opt` VALUES ('14327', '19', '14315', '利国镇', '利国镇', '60');
INSERT INTO `tb_opt` VALUES ('14328', '19', '14315', '黄流镇', '黄流镇', '65');
INSERT INTO `tb_opt` VALUES ('14329', '19', '14315', '佛罗镇', '佛罗镇', '70');
INSERT INTO `tb_opt` VALUES ('14330', '19', '14315', '尖峰镇', '尖峰镇', '75');
INSERT INTO `tb_opt` VALUES ('14331', '19', '14315', '莺歌海镇', '莺歌海镇', '80');
INSERT INTO `tb_opt` VALUES ('14332', '19', '14315', '城区', '城区', '85');
INSERT INTO `tb_opt` VALUES ('14333', '19', '14042', '三沙市', '三沙市', '95');
INSERT INTO `tb_opt` VALUES ('14334', '19', '14333', '中沙群岛', '中沙群岛', '5');
INSERT INTO `tb_opt` VALUES ('14335', '19', '14333', '西沙群岛', '西沙群岛', '10');
INSERT INTO `tb_opt` VALUES ('14336', '19', '14333', '南沙群岛', '南沙群岛', '15');
INSERT INTO `tb_opt` VALUES ('14337', '19', '0', '贵州省', '贵州省', '120');
INSERT INTO `tb_opt` VALUES ('14338', '19', '14337', '贵阳市', '贵阳市', '5');
INSERT INTO `tb_opt` VALUES ('14339', '19', '14338', '南明区', '南明区', '5');
INSERT INTO `tb_opt` VALUES ('14340', '19', '14338', '云岩区', '云岩区', '10');
INSERT INTO `tb_opt` VALUES ('14341', '19', '14338', '花溪区', '花溪区', '15');
INSERT INTO `tb_opt` VALUES ('14342', '19', '14338', '小河区', '小河区', '20');
INSERT INTO `tb_opt` VALUES ('14343', '19', '14338', '白云区', '白云区', '25');
INSERT INTO `tb_opt` VALUES ('14344', '19', '14338', '清镇市', '清镇市', '30');
INSERT INTO `tb_opt` VALUES ('14345', '19', '14338', '开阳县', '开阳县', '35');
INSERT INTO `tb_opt` VALUES ('14346', '19', '14338', '修文县', '修文县', '40');
INSERT INTO `tb_opt` VALUES ('14347', '19', '14338', '息烽县', '息烽县', '45');
INSERT INTO `tb_opt` VALUES ('14348', '19', '14338', '乌当区', '乌当区', '50');
INSERT INTO `tb_opt` VALUES ('14349', '19', '14338', '观山湖区', '观山湖区', '55');
INSERT INTO `tb_opt` VALUES ('14350', '19', '14337', '六盘水市', '六盘水市', '10');
INSERT INTO `tb_opt` VALUES ('14351', '19', '14350', '盘县', '盘县', '5');
INSERT INTO `tb_opt` VALUES ('14352', '19', '14350', '六枝特区', '六枝特区', '10');
INSERT INTO `tb_opt` VALUES ('14353', '19', '14350', '水城县', '水城县', '15');
INSERT INTO `tb_opt` VALUES ('14354', '19', '14350', '钟山区', '钟山区', '20');
INSERT INTO `tb_opt` VALUES ('14355', '19', '14337', '遵义市', '遵义市', '15');
INSERT INTO `tb_opt` VALUES ('14356', '19', '14355', '红花岗区', '红花岗区', '5');
INSERT INTO `tb_opt` VALUES ('14357', '19', '14355', '汇川区', '汇川区', '10');
INSERT INTO `tb_opt` VALUES ('14358', '19', '14355', '赤水市', '赤水市', '15');
INSERT INTO `tb_opt` VALUES ('14359', '19', '14355', '仁怀市', '仁怀市', '20');
INSERT INTO `tb_opt` VALUES ('14360', '19', '14355', '遵义县', '遵义县', '25');
INSERT INTO `tb_opt` VALUES ('14361', '19', '14355', '桐梓县', '桐梓县', '30');
INSERT INTO `tb_opt` VALUES ('14362', '19', '14355', '绥阳县', '绥阳县', '35');
INSERT INTO `tb_opt` VALUES ('14363', '19', '14355', '习水县', '习水县', '40');
INSERT INTO `tb_opt` VALUES ('14364', '19', '14355', '凤冈县', '凤冈县', '45');
INSERT INTO `tb_opt` VALUES ('14365', '19', '14355', '正安县', '正安县', '50');
INSERT INTO `tb_opt` VALUES ('14366', '19', '14355', '湄潭县', '湄潭县', '55');
INSERT INTO `tb_opt` VALUES ('14367', '19', '14355', '余庆县', '余庆县', '60');
INSERT INTO `tb_opt` VALUES ('14368', '19', '14355', '道真县', '道真县', '65');
INSERT INTO `tb_opt` VALUES ('14369', '19', '14355', '务川县', '务川县', '70');
INSERT INTO `tb_opt` VALUES ('14370', '19', '14337', '铜仁市', '铜仁市', '20');
INSERT INTO `tb_opt` VALUES ('14371', '19', '14370', '碧江区', '碧江区', '5');
INSERT INTO `tb_opt` VALUES ('14372', '19', '14370', '德江县', '德江县', '10');
INSERT INTO `tb_opt` VALUES ('14373', '19', '14370', '江口县', '江口县', '15');
INSERT INTO `tb_opt` VALUES ('14374', '19', '14370', '思南县', '思南县', '20');
INSERT INTO `tb_opt` VALUES ('14375', '19', '14370', '万山区', '万山区', '25');
INSERT INTO `tb_opt` VALUES ('14376', '19', '14370', '石阡县', '石阡县', '30');
INSERT INTO `tb_opt` VALUES ('14377', '19', '14370', '玉屏侗族自治县', '玉屏侗族自治县', '35');
INSERT INTO `tb_opt` VALUES ('14378', '19', '14370', '松桃苗族自治县', '松桃苗族自治县', '40');
INSERT INTO `tb_opt` VALUES ('14379', '19', '14370', '印江土家族苗族自治县', '印江土家族苗族自治县', '45');
INSERT INTO `tb_opt` VALUES ('14380', '19', '14370', '沿河土家族自治县', '沿河土家族自治县', '50');
INSERT INTO `tb_opt` VALUES ('14381', '19', '14337', '毕节市', '毕节市', '25');
INSERT INTO `tb_opt` VALUES ('14382', '19', '14381', '七星关区', '七星关区', '5');
INSERT INTO `tb_opt` VALUES ('14383', '19', '14381', '黔西县', '黔西县', '10');
INSERT INTO `tb_opt` VALUES ('14384', '19', '14381', '大方县', '大方县', '15');
INSERT INTO `tb_opt` VALUES ('14385', '19', '14381', '织金县', '织金县', '20');
INSERT INTO `tb_opt` VALUES ('14386', '19', '14381', '金沙县', '金沙县', '25');
INSERT INTO `tb_opt` VALUES ('14387', '19', '14381', '赫章县', '赫章县', '30');
INSERT INTO `tb_opt` VALUES ('14388', '19', '14381', '纳雍县', '纳雍县', '35');
INSERT INTO `tb_opt` VALUES ('14389', '19', '14381', '威宁彝族回族苗族自治县', '威宁彝族回族苗族自治县', '40');
INSERT INTO `tb_opt` VALUES ('14390', '19', '14337', '安顺市', '安顺市', '30');
INSERT INTO `tb_opt` VALUES ('14391', '19', '14390', '西秀区', '西秀区', '5');
INSERT INTO `tb_opt` VALUES ('14392', '19', '14390', '普定县', '普定县', '10');
INSERT INTO `tb_opt` VALUES ('14393', '19', '14390', '平坝县', '平坝县', '15');
INSERT INTO `tb_opt` VALUES ('14394', '19', '14390', '镇宁布依族苗族自治县', '镇宁布依族苗族自治县', '20');
INSERT INTO `tb_opt` VALUES ('14395', '19', '14390', '关岭布依族苗族自治县', '关岭布依族苗族自治县', '25');
INSERT INTO `tb_opt` VALUES ('14396', '19', '14390', '紫云苗族布依族自治县', '紫云苗族布依族自治县', '30');
INSERT INTO `tb_opt` VALUES ('14397', '19', '14337', '黔西南州', '黔西南州', '35');
INSERT INTO `tb_opt` VALUES ('14398', '19', '14397', '兴义市', '兴义市', '5');
INSERT INTO `tb_opt` VALUES ('14399', '19', '14397', '望谟县', '望谟县', '10');
INSERT INTO `tb_opt` VALUES ('14400', '19', '14397', '兴仁县', '兴仁县', '15');
INSERT INTO `tb_opt` VALUES ('14401', '19', '14397', '普安县', '普安县', '20');
INSERT INTO `tb_opt` VALUES ('14402', '19', '14397', '册亨县', '册亨县', '25');
INSERT INTO `tb_opt` VALUES ('14403', '19', '14397', '晴隆县', '晴隆县', '30');
INSERT INTO `tb_opt` VALUES ('14404', '19', '14397', '贞丰县', '贞丰县', '35');
INSERT INTO `tb_opt` VALUES ('14405', '19', '14397', '安龙县', '安龙县', '40');
INSERT INTO `tb_opt` VALUES ('14406', '19', '14337', '黔东南州', '黔东南州', '40');
INSERT INTO `tb_opt` VALUES ('14407', '19', '14406', '凯里市', '凯里市', '5');
INSERT INTO `tb_opt` VALUES ('14408', '19', '14406', '施秉市', '施秉市', '10');
INSERT INTO `tb_opt` VALUES ('14409', '19', '14406', '从江县', '从江县', '15');
INSERT INTO `tb_opt` VALUES ('14410', '19', '14406', '锦屏县', '锦屏县', '20');
INSERT INTO `tb_opt` VALUES ('14411', '19', '14406', '镇远县', '镇远县', '25');
INSERT INTO `tb_opt` VALUES ('14412', '19', '14406', '麻江县', '麻江县', '30');
INSERT INTO `tb_opt` VALUES ('14413', '19', '14406', '台江县', '台江县', '35');
INSERT INTO `tb_opt` VALUES ('14414', '19', '14406', '天柱县', '天柱县', '40');
INSERT INTO `tb_opt` VALUES ('14415', '19', '14406', '黄平县', '黄平县', '45');
INSERT INTO `tb_opt` VALUES ('14416', '19', '14406', '榕江县', '榕江县', '50');
INSERT INTO `tb_opt` VALUES ('14417', '19', '14406', '剑河县', '剑河县', '55');
INSERT INTO `tb_opt` VALUES ('14418', '19', '14406', '三穗县', '三穗县', '60');
INSERT INTO `tb_opt` VALUES ('14419', '19', '14406', '雷山县', '雷山县', '65');
INSERT INTO `tb_opt` VALUES ('14420', '19', '14406', '黎平县', '黎平县', '70');
INSERT INTO `tb_opt` VALUES ('14421', '19', '14406', '岑巩县', '岑巩县', '75');
INSERT INTO `tb_opt` VALUES ('14422', '19', '14406', '丹寨县', '丹寨县', '80');
INSERT INTO `tb_opt` VALUES ('14423', '19', '14337', '黔南州', '黔南州', '45');
INSERT INTO `tb_opt` VALUES ('14424', '19', '14423', '都匀市', '都匀市', '5');
INSERT INTO `tb_opt` VALUES ('14425', '19', '14423', '福泉市', '福泉市', '10');
INSERT INTO `tb_opt` VALUES ('14426', '19', '14423', '贵定县', '贵定县', '15');
INSERT INTO `tb_opt` VALUES ('14427', '19', '14423', '惠水县', '惠水县', '20');
INSERT INTO `tb_opt` VALUES ('14428', '19', '14423', '罗甸县', '罗甸县', '25');
INSERT INTO `tb_opt` VALUES ('14429', '19', '14423', '瓮安县', '瓮安县', '30');
INSERT INTO `tb_opt` VALUES ('14430', '19', '14423', '荔波县', '荔波县', '35');
INSERT INTO `tb_opt` VALUES ('14431', '19', '14423', '龙里县', '龙里县', '40');
INSERT INTO `tb_opt` VALUES ('14432', '19', '14423', '平塘县', '平塘县', '45');
INSERT INTO `tb_opt` VALUES ('14433', '19', '14423', '长顺县', '长顺县', '50');
INSERT INTO `tb_opt` VALUES ('14434', '19', '14423', '独山县', '独山县', '55');
INSERT INTO `tb_opt` VALUES ('14435', '19', '14423', '三都县', '三都县', '60');
INSERT INTO `tb_opt` VALUES ('14436', '19', '0', '云南省', '云南省', '125');
INSERT INTO `tb_opt` VALUES ('14437', '19', '14436', '昆明市', '昆明市', '5');
INSERT INTO `tb_opt` VALUES ('14438', '19', '14437', '盘龙区', '盘龙区', '5');
INSERT INTO `tb_opt` VALUES ('14439', '19', '14437', '五华区', '五华区', '10');
INSERT INTO `tb_opt` VALUES ('14440', '19', '14437', '西山区', '西山区', '15');
INSERT INTO `tb_opt` VALUES ('14441', '19', '14437', '官渡区', '官渡区', '20');
INSERT INTO `tb_opt` VALUES ('14442', '19', '14437', '呈贡区', '呈贡区', '25');
INSERT INTO `tb_opt` VALUES ('14443', '19', '14437', '东川区', '东川区', '30');
INSERT INTO `tb_opt` VALUES ('14444', '19', '14437', '安宁市', '安宁市', '35');
INSERT INTO `tb_opt` VALUES ('14445', '19', '14437', '富民县', '富民县', '40');
INSERT INTO `tb_opt` VALUES ('14446', '19', '14437', '嵩明县', '嵩明县', '45');
INSERT INTO `tb_opt` VALUES ('14447', '19', '14437', '晋宁县', '晋宁县', '50');
INSERT INTO `tb_opt` VALUES ('14448', '19', '14437', '宜良县', '宜良县', '55');
INSERT INTO `tb_opt` VALUES ('14449', '19', '14437', '禄劝县', '禄劝县', '60');
INSERT INTO `tb_opt` VALUES ('14450', '19', '14437', '石林县', '石林县', '65');
INSERT INTO `tb_opt` VALUES ('14451', '19', '14437', '寻甸县', '寻甸县', '70');
INSERT INTO `tb_opt` VALUES ('14452', '19', '14436', '曲靖市', '曲靖市', '10');
INSERT INTO `tb_opt` VALUES ('14453', '19', '14452', '麒麟区', '麒麟区', '5');
INSERT INTO `tb_opt` VALUES ('14454', '19', '14452', '马龙县', '马龙县', '10');
INSERT INTO `tb_opt` VALUES ('14455', '19', '14452', '宣威市', '宣威市', '15');
INSERT INTO `tb_opt` VALUES ('14456', '19', '14452', '富源县', '富源县', '20');
INSERT INTO `tb_opt` VALUES ('14457', '19', '14452', '会泽县', '会泽县', '25');
INSERT INTO `tb_opt` VALUES ('14458', '19', '14452', '陆良县', '陆良县', '30');
INSERT INTO `tb_opt` VALUES ('14459', '19', '14452', '师宗县', '师宗县', '35');
INSERT INTO `tb_opt` VALUES ('14460', '19', '14452', '罗平县', '罗平县', '40');
INSERT INTO `tb_opt` VALUES ('14461', '19', '14452', '沾益县', '沾益县', '45');
INSERT INTO `tb_opt` VALUES ('14462', '19', '14436', '玉溪市', '玉溪市', '15');
INSERT INTO `tb_opt` VALUES ('14463', '19', '14462', '红塔区', '红塔区', '5');
INSERT INTO `tb_opt` VALUES ('14464', '19', '14462', '华宁县', '华宁县', '10');
INSERT INTO `tb_opt` VALUES ('14465', '19', '14462', '澄江县', '澄江县', '15');
INSERT INTO `tb_opt` VALUES ('14466', '19', '14462', '易门县', '易门县', '20');
INSERT INTO `tb_opt` VALUES ('14467', '19', '14462', '通海县', '通海县', '25');
INSERT INTO `tb_opt` VALUES ('14468', '19', '14462', '江川县', '江川县', '30');
INSERT INTO `tb_opt` VALUES ('14469', '19', '14462', '元江县', '元江县', '35');
INSERT INTO `tb_opt` VALUES ('14470', '19', '14462', '新平县', '新平县', '40');
INSERT INTO `tb_opt` VALUES ('14471', '19', '14462', '峨山县', '峨山县', '45');
INSERT INTO `tb_opt` VALUES ('14472', '19', '14436', '昭通市', '昭通市', '20');
INSERT INTO `tb_opt` VALUES ('14473', '19', '14472', '鲁甸县', '鲁甸县', '5');
INSERT INTO `tb_opt` VALUES ('14474', '19', '14472', '绥江县', '绥江县', '10');
INSERT INTO `tb_opt` VALUES ('14475', '19', '14472', '昭阳区', '昭阳区', '15');
INSERT INTO `tb_opt` VALUES ('14476', '19', '14472', '镇雄县', '镇雄县', '20');
INSERT INTO `tb_opt` VALUES ('14477', '19', '14472', '永善县', '永善县', '25');
INSERT INTO `tb_opt` VALUES ('14478', '19', '14472', '大关县', '大关县', '30');
INSERT INTO `tb_opt` VALUES ('14479', '19', '14472', '盐津县', '盐津县', '35');
INSERT INTO `tb_opt` VALUES ('14480', '19', '14472', '彝良县', '彝良县', '40');
INSERT INTO `tb_opt` VALUES ('14481', '19', '14472', '水富县', '水富县', '45');
INSERT INTO `tb_opt` VALUES ('14482', '19', '14472', '巧家县', '巧家县', '50');
INSERT INTO `tb_opt` VALUES ('14483', '19', '14472', '威信县', '威信县', '55');
INSERT INTO `tb_opt` VALUES ('14484', '19', '14436', '普洱市', '普洱市', '25');
INSERT INTO `tb_opt` VALUES ('14485', '19', '14484', '孟连县', '孟连县', '5');
INSERT INTO `tb_opt` VALUES ('14486', '19', '14484', '思茅区', '思茅区', '10');
INSERT INTO `tb_opt` VALUES ('14487', '19', '14484', '宁洱县', '宁洱县', '15');
INSERT INTO `tb_opt` VALUES ('14488', '19', '14484', '景东县', '景东县', '20');
INSERT INTO `tb_opt` VALUES ('14489', '19', '14484', '镇沅县', '镇沅县', '25');
INSERT INTO `tb_opt` VALUES ('14490', '19', '14484', '景谷县', '景谷县', '30');
INSERT INTO `tb_opt` VALUES ('14491', '19', '14484', '墨江县', '墨江县', '35');
INSERT INTO `tb_opt` VALUES ('14492', '19', '14484', '澜沧县', '澜沧县', '40');
INSERT INTO `tb_opt` VALUES ('14493', '19', '14484', '西盟县', '西盟县', '45');
INSERT INTO `tb_opt` VALUES ('14494', '19', '14484', '江城县', '江城县', '50');
INSERT INTO `tb_opt` VALUES ('14495', '19', '14436', '临沧市', '临沧市', '30');
INSERT INTO `tb_opt` VALUES ('14496', '19', '14495', '双江县', '双江县', '5');
INSERT INTO `tb_opt` VALUES ('14497', '19', '14495', '沧源县', '沧源县', '10');
INSERT INTO `tb_opt` VALUES ('14498', '19', '14495', '临翔区', '临翔区', '15');
INSERT INTO `tb_opt` VALUES ('14499', '19', '14495', '镇康县', '镇康县', '20');
INSERT INTO `tb_opt` VALUES ('14500', '19', '14495', '凤庆县', '凤庆县', '25');
INSERT INTO `tb_opt` VALUES ('14501', '19', '14495', '云县', '云县', '30');
INSERT INTO `tb_opt` VALUES ('14502', '19', '14495', '永德县', '永德县', '35');
INSERT INTO `tb_opt` VALUES ('14503', '19', '14495', '耿马县', '耿马县', '40');
INSERT INTO `tb_opt` VALUES ('14504', '19', '14436', '保山市', '保山市', '35');
INSERT INTO `tb_opt` VALUES ('14505', '19', '14504', '隆阳区', '隆阳区', '5');
INSERT INTO `tb_opt` VALUES ('14506', '19', '14504', '施甸县', '施甸县', '10');
INSERT INTO `tb_opt` VALUES ('14507', '19', '14504', '昌宁县', '昌宁县', '15');
INSERT INTO `tb_opt` VALUES ('14508', '19', '14504', '龙陵县', '龙陵县', '20');
INSERT INTO `tb_opt` VALUES ('14509', '19', '14504', '腾冲县', '腾冲县', '25');
INSERT INTO `tb_opt` VALUES ('14510', '19', '14436', '丽江市', '丽江市', '40');
INSERT INTO `tb_opt` VALUES ('14511', '19', '14510', '玉龙县', '玉龙县', '5');
INSERT INTO `tb_opt` VALUES ('14512', '19', '14510', '华坪县', '华坪县', '10');
INSERT INTO `tb_opt` VALUES ('14513', '19', '14510', '永胜县', '永胜县', '15');
INSERT INTO `tb_opt` VALUES ('14514', '19', '14510', '宁蒗县', '宁蒗县', '20');
INSERT INTO `tb_opt` VALUES ('14515', '19', '14510', '古城区', '古城区', '25');
INSERT INTO `tb_opt` VALUES ('14516', '19', '14436', '文山州', '文山州', '45');
INSERT INTO `tb_opt` VALUES ('14517', '19', '14516', '文山市', '文山市', '5');
INSERT INTO `tb_opt` VALUES ('14518', '19', '14516', '麻栗坡县', '麻栗坡县', '10');
INSERT INTO `tb_opt` VALUES ('14519', '19', '14516', '砚山县', '砚山县', '15');
INSERT INTO `tb_opt` VALUES ('14520', '19', '14516', '广南县', '广南县', '20');
INSERT INTO `tb_opt` VALUES ('14521', '19', '14516', '马关县', '马关县', '25');
INSERT INTO `tb_opt` VALUES ('14522', '19', '14516', '富宁县', '富宁县', '30');
INSERT INTO `tb_opt` VALUES ('14523', '19', '14516', '西畴县', '西畴县', '35');
INSERT INTO `tb_opt` VALUES ('14524', '19', '14516', '丘北县', '丘北县', '40');
INSERT INTO `tb_opt` VALUES ('14525', '19', '14436', '红河州', '红河州', '50');
INSERT INTO `tb_opt` VALUES ('14526', '19', '14525', '个旧市', '个旧市', '5');
INSERT INTO `tb_opt` VALUES ('14527', '19', '14525', '开远市', '开远市', '10');
INSERT INTO `tb_opt` VALUES ('14528', '19', '14525', '弥勒县', '弥勒县', '15');
INSERT INTO `tb_opt` VALUES ('14529', '19', '14525', '红河县', '红河县', '20');
INSERT INTO `tb_opt` VALUES ('14530', '19', '14525', '绿春县', '绿春县', '25');
INSERT INTO `tb_opt` VALUES ('14531', '19', '14525', '蒙自市', '蒙自市', '30');
INSERT INTO `tb_opt` VALUES ('14532', '19', '14525', '泸西县', '泸西县', '35');
INSERT INTO `tb_opt` VALUES ('14533', '19', '14525', '建水县', '建水县', '40');
INSERT INTO `tb_opt` VALUES ('14534', '19', '14525', '元阳县', '元阳县', '45');
INSERT INTO `tb_opt` VALUES ('14535', '19', '14525', '石屏县', '石屏县', '50');
INSERT INTO `tb_opt` VALUES ('14536', '19', '14525', '金平县', '金平县', '55');
INSERT INTO `tb_opt` VALUES ('14537', '19', '14525', '屏边县', '屏边县', '60');
INSERT INTO `tb_opt` VALUES ('14538', '19', '14525', '河口县', '河口县', '65');
INSERT INTO `tb_opt` VALUES ('14539', '19', '14436', '西双版纳州', '西双版纳州', '55');
INSERT INTO `tb_opt` VALUES ('14540', '19', '14539', '景洪市', '景洪市', '5');
INSERT INTO `tb_opt` VALUES ('14541', '19', '14539', '勐海县', '勐海县', '10');
INSERT INTO `tb_opt` VALUES ('14542', '19', '14539', '勐腊县', '勐腊县', '15');
INSERT INTO `tb_opt` VALUES ('14543', '19', '14436', '楚雄州', '楚雄州', '60');
INSERT INTO `tb_opt` VALUES ('14544', '19', '14543', '元谋县', '元谋县', '5');
INSERT INTO `tb_opt` VALUES ('14545', '19', '14543', '南华县', '南华县', '10');
INSERT INTO `tb_opt` VALUES ('14546', '19', '14543', '牟定县', '牟定县', '15');
INSERT INTO `tb_opt` VALUES ('14547', '19', '14543', '武定县', '武定县', '20');
INSERT INTO `tb_opt` VALUES ('14548', '19', '14543', '大姚县', '大姚县', '25');
INSERT INTO `tb_opt` VALUES ('14549', '19', '14543', '双柏县', '双柏县', '30');
INSERT INTO `tb_opt` VALUES ('14550', '19', '14543', '禄丰县', '禄丰县', '35');
INSERT INTO `tb_opt` VALUES ('14551', '19', '14543', '永仁县', '永仁县', '40');
INSERT INTO `tb_opt` VALUES ('14552', '19', '14543', '姚安县', '姚安县', '45');
INSERT INTO `tb_opt` VALUES ('14553', '19', '14543', '楚雄市', '楚雄市', '50');
INSERT INTO `tb_opt` VALUES ('14554', '19', '14436', '大理州', '大理州', '65');
INSERT INTO `tb_opt` VALUES ('14555', '19', '14554', '剑川县', '剑川县', '5');
INSERT INTO `tb_opt` VALUES ('14556', '19', '14554', '弥渡县', '弥渡县', '10');
INSERT INTO `tb_opt` VALUES ('14557', '19', '14554', '云龙县', '云龙县', '15');
INSERT INTO `tb_opt` VALUES ('14558', '19', '14554', '洱源县', '洱源县', '20');
INSERT INTO `tb_opt` VALUES ('14559', '19', '14554', '鹤庆县', '鹤庆县', '25');
INSERT INTO `tb_opt` VALUES ('14560', '19', '14554', '宾川县', '宾川县', '30');
INSERT INTO `tb_opt` VALUES ('14561', '19', '14554', '祥云县', '祥云县', '35');
INSERT INTO `tb_opt` VALUES ('14562', '19', '14554', '永平县', '永平县', '40');
INSERT INTO `tb_opt` VALUES ('14563', '19', '14554', '巍山县', '巍山县', '45');
INSERT INTO `tb_opt` VALUES ('14564', '19', '14554', '漾濞县', '漾濞县', '50');
INSERT INTO `tb_opt` VALUES ('14565', '19', '14554', '南涧县', '南涧县', '55');
INSERT INTO `tb_opt` VALUES ('14566', '19', '14554', '大理市', '大理市', '60');
INSERT INTO `tb_opt` VALUES ('14567', '19', '14436', '德宏州', '德宏州', '70');
INSERT INTO `tb_opt` VALUES ('14568', '19', '14567', '芒市', '芒市', '5');
INSERT INTO `tb_opt` VALUES ('14569', '19', '14567', '瑞丽市', '瑞丽市', '10');
INSERT INTO `tb_opt` VALUES ('14570', '19', '14567', '盈江县', '盈江县', '15');
INSERT INTO `tb_opt` VALUES ('14571', '19', '14567', '梁河县', '梁河县', '20');
INSERT INTO `tb_opt` VALUES ('14572', '19', '14567', '陇川县', '陇川县', '25');
INSERT INTO `tb_opt` VALUES ('14573', '19', '14436', '怒江州', '怒江州', '75');
INSERT INTO `tb_opt` VALUES ('14574', '19', '14573', '泸水县', '泸水县', '5');
INSERT INTO `tb_opt` VALUES ('14575', '19', '14573', '福贡县', '福贡县', '10');
INSERT INTO `tb_opt` VALUES ('14576', '19', '14573', '兰坪县', '兰坪县', '15');
INSERT INTO `tb_opt` VALUES ('14577', '19', '14573', '贡山县', '贡山县', '20');
INSERT INTO `tb_opt` VALUES ('14578', '19', '14436', '迪庆州', '迪庆州', '80');
INSERT INTO `tb_opt` VALUES ('14579', '19', '14578', '香格里拉县', '香格里拉县', '5');
INSERT INTO `tb_opt` VALUES ('14580', '19', '14578', '德钦县', '德钦县', '10');
INSERT INTO `tb_opt` VALUES ('14581', '19', '14578', '维西县', '维西县', '15');
INSERT INTO `tb_opt` VALUES ('14582', '19', '0', '西藏自治区', '西藏自治区', '130');
INSERT INTO `tb_opt` VALUES ('14583', '19', '14582', '拉萨市', '拉萨市', '5');
INSERT INTO `tb_opt` VALUES ('14584', '19', '14583', '城关区', '城关区', '5');
INSERT INTO `tb_opt` VALUES ('14585', '19', '14583', '林周县', '林周县', '10');
INSERT INTO `tb_opt` VALUES ('14586', '19', '14583', '当雄县', '当雄县', '15');
INSERT INTO `tb_opt` VALUES ('14587', '19', '14583', '尼木县', '尼木县', '20');
INSERT INTO `tb_opt` VALUES ('14588', '19', '14583', '曲水县', '曲水县', '25');
INSERT INTO `tb_opt` VALUES ('14589', '19', '14583', '堆龙德庆县', '堆龙德庆县', '30');
INSERT INTO `tb_opt` VALUES ('14590', '19', '14583', '达孜县', '达孜县', '35');
INSERT INTO `tb_opt` VALUES ('14591', '19', '14583', '墨竹工卡县', '墨竹工卡县', '40');
INSERT INTO `tb_opt` VALUES ('14592', '19', '14582', '那曲地区', '那曲地区', '10');
INSERT INTO `tb_opt` VALUES ('14593', '19', '14592', '索县', '索县', '5');
INSERT INTO `tb_opt` VALUES ('14594', '19', '14592', '那曲县', '那曲县', '10');
INSERT INTO `tb_opt` VALUES ('14595', '19', '14592', '嘉黎县', '嘉黎县', '15');
INSERT INTO `tb_opt` VALUES ('14596', '19', '14592', '比如县', '比如县', '20');
INSERT INTO `tb_opt` VALUES ('14597', '19', '14592', '聂荣县', '聂荣县', '25');
INSERT INTO `tb_opt` VALUES ('14598', '19', '14592', '安多县', '安多县', '30');
INSERT INTO `tb_opt` VALUES ('14599', '19', '14592', '申扎县', '申扎县', '35');
INSERT INTO `tb_opt` VALUES ('14600', '19', '14592', '班戈县', '班戈县', '40');
INSERT INTO `tb_opt` VALUES ('14601', '19', '14592', '巴青县', '巴青县', '45');
INSERT INTO `tb_opt` VALUES ('14602', '19', '14592', '尼玛县', '尼玛县', '50');
INSERT INTO `tb_opt` VALUES ('14603', '19', '14582', '山南地区', '山南地区', '15');
INSERT INTO `tb_opt` VALUES ('14604', '19', '14603', '贡嘎县', '贡嘎县', '5');
INSERT INTO `tb_opt` VALUES ('14605', '19', '14603', '扎囊县', '扎囊县', '10');
INSERT INTO `tb_opt` VALUES ('14606', '19', '14603', '乃东县', '乃东县', '15');
INSERT INTO `tb_opt` VALUES ('14607', '19', '14603', '桑日县', '桑日县', '20');
INSERT INTO `tb_opt` VALUES ('14608', '19', '14603', '琼结县', '琼结县', '25');
INSERT INTO `tb_opt` VALUES ('14609', '19', '14603', '曲松县', '曲松县', '30');
INSERT INTO `tb_opt` VALUES ('14610', '19', '14603', '措美县', '措美县', '35');
INSERT INTO `tb_opt` VALUES ('14611', '19', '14603', '洛扎县', '洛扎县', '40');
INSERT INTO `tb_opt` VALUES ('14612', '19', '14603', '加查县', '加查县', '45');
INSERT INTO `tb_opt` VALUES ('14613', '19', '14603', '隆子县', '隆子县', '50');
INSERT INTO `tb_opt` VALUES ('14614', '19', '14603', '错那县', '错那县', '55');
INSERT INTO `tb_opt` VALUES ('14615', '19', '14603', '浪卡子县', '浪卡子县', '60');
INSERT INTO `tb_opt` VALUES ('14616', '19', '14582', '昌都地区', '昌都地区', '20');
INSERT INTO `tb_opt` VALUES ('14617', '19', '14616', '昌都县', '昌都县', '5');
INSERT INTO `tb_opt` VALUES ('14618', '19', '14616', '江达县', '江达县', '10');
INSERT INTO `tb_opt` VALUES ('14619', '19', '14616', '贡觉县', '贡觉县', '15');
INSERT INTO `tb_opt` VALUES ('14620', '19', '14616', '类乌齐县', '类乌齐县', '20');
INSERT INTO `tb_opt` VALUES ('14621', '19', '14616', '丁青县', '丁青县', '25');
INSERT INTO `tb_opt` VALUES ('14622', '19', '14616', '察雅县', '察雅县', '30');
INSERT INTO `tb_opt` VALUES ('14623', '19', '14616', '八宿县', '八宿县', '35');
INSERT INTO `tb_opt` VALUES ('14624', '19', '14616', '左贡县', '左贡县', '40');
INSERT INTO `tb_opt` VALUES ('14625', '19', '14616', '芒康县', '芒康县', '45');
INSERT INTO `tb_opt` VALUES ('14626', '19', '14616', '洛隆县', '洛隆县', '50');
INSERT INTO `tb_opt` VALUES ('14627', '19', '14616', '边坝县', '边坝县', '55');
INSERT INTO `tb_opt` VALUES ('14628', '19', '14582', '日喀则地区', '日喀则地区', '25');
INSERT INTO `tb_opt` VALUES ('14629', '19', '14628', '聂拉木县', '聂拉木县', '5');
INSERT INTO `tb_opt` VALUES ('14630', '19', '14628', '昂仁县', '昂仁县', '10');
INSERT INTO `tb_opt` VALUES ('14631', '19', '14628', '日喀则市', '日喀则市', '15');
INSERT INTO `tb_opt` VALUES ('14632', '19', '14628', '南木林县', '南木林县', '20');
INSERT INTO `tb_opt` VALUES ('14633', '19', '14628', '江孜县', '江孜县', '25');
INSERT INTO `tb_opt` VALUES ('14634', '19', '14628', '定日县', '定日县', '30');
INSERT INTO `tb_opt` VALUES ('14635', '19', '14628', '萨迦县　', '萨迦县　', '35');
INSERT INTO `tb_opt` VALUES ('14636', '19', '14628', '拉孜县', '拉孜县', '40');
INSERT INTO `tb_opt` VALUES ('14637', '19', '14628', '谢通门县', '谢通门县', '45');
INSERT INTO `tb_opt` VALUES ('14638', '19', '14628', '白朗县', '白朗县', '50');
INSERT INTO `tb_opt` VALUES ('14639', '19', '14628', '仁布县', '仁布县', '55');
INSERT INTO `tb_opt` VALUES ('14640', '19', '14628', '康马县', '康马县', '60');
INSERT INTO `tb_opt` VALUES ('14641', '19', '14628', '定结县', '定结县', '65');
INSERT INTO `tb_opt` VALUES ('14642', '19', '14628', '仲巴县', '仲巴县', '70');
INSERT INTO `tb_opt` VALUES ('14643', '19', '14628', '亚东县', '亚东县', '75');
INSERT INTO `tb_opt` VALUES ('14644', '19', '14628', '吉隆县', '吉隆县', '80');
INSERT INTO `tb_opt` VALUES ('14645', '19', '14628', '萨嘎县', '萨嘎县', '85');
INSERT INTO `tb_opt` VALUES ('14646', '19', '14628', '岗巴县', '岗巴县', '90');
INSERT INTO `tb_opt` VALUES ('14647', '19', '14582', '阿里地区', '阿里地区', '30');
INSERT INTO `tb_opt` VALUES ('14648', '19', '14647', '噶尔县', '噶尔县', '5');
INSERT INTO `tb_opt` VALUES ('14649', '19', '14647', '普兰县', '普兰县', '10');
INSERT INTO `tb_opt` VALUES ('14650', '19', '14647', '札达县　', '札达县　', '15');
INSERT INTO `tb_opt` VALUES ('14651', '19', '14647', '日土县', '日土县', '20');
INSERT INTO `tb_opt` VALUES ('14652', '19', '14647', '革吉县', '革吉县', '25');
INSERT INTO `tb_opt` VALUES ('14653', '19', '14647', '改则县', '改则县', '30');
INSERT INTO `tb_opt` VALUES ('14654', '19', '14647', '措勤县', '措勤县', '35');
INSERT INTO `tb_opt` VALUES ('14655', '19', '14582', '林芝地区', '林芝地区', '35');
INSERT INTO `tb_opt` VALUES ('14656', '19', '14655', '林芝县', '林芝县', '5');
INSERT INTO `tb_opt` VALUES ('14657', '19', '14655', '工布江达县', '工布江达县', '10');
INSERT INTO `tb_opt` VALUES ('14658', '19', '14655', '米林县', '米林县', '15');
INSERT INTO `tb_opt` VALUES ('14659', '19', '14655', '墨脱县', '墨脱县', '20');
INSERT INTO `tb_opt` VALUES ('14660', '19', '14655', '波密县', '波密县', '25');
INSERT INTO `tb_opt` VALUES ('14661', '19', '14655', '察隅县', '察隅县', '30');
INSERT INTO `tb_opt` VALUES ('14662', '19', '14655', '朗县', '朗县', '35');
INSERT INTO `tb_opt` VALUES ('14663', '19', '0', '陕西省', '陕西省', '135');
INSERT INTO `tb_opt` VALUES ('14664', '19', '14663', '西安市', '西安市', '5');
INSERT INTO `tb_opt` VALUES ('14665', '19', '14664', '新城区', '新城区', '5');
INSERT INTO `tb_opt` VALUES ('14666', '19', '14664', '雁塔区', '雁塔区', '10');
INSERT INTO `tb_opt` VALUES ('14667', '19', '14664', '未央区', '未央区', '15');
INSERT INTO `tb_opt` VALUES ('14668', '19', '14664', '长安区', '长安区', '20');
INSERT INTO `tb_opt` VALUES ('14669', '19', '14664', '灞桥区', '灞桥区', '25');
INSERT INTO `tb_opt` VALUES ('14670', '19', '14664', '碑林区', '碑林区', '30');
INSERT INTO `tb_opt` VALUES ('14671', '19', '14664', '莲湖区', '莲湖区', '35');
INSERT INTO `tb_opt` VALUES ('14672', '19', '14664', '临潼区', '临潼区', '40');
INSERT INTO `tb_opt` VALUES ('14673', '19', '14664', '阎良区', '阎良区', '45');
INSERT INTO `tb_opt` VALUES ('14674', '19', '14664', '杨凌农业示范区', '杨凌农业示范区', '50');
INSERT INTO `tb_opt` VALUES ('14675', '19', '14664', '西安武警工程学院', '西安武警工程学院', '55');
INSERT INTO `tb_opt` VALUES ('14676', '19', '14664', '高陵县', '高陵县', '60');
INSERT INTO `tb_opt` VALUES ('14677', '19', '14664', '蓝田县', '蓝田县', '65');
INSERT INTO `tb_opt` VALUES ('14678', '19', '14664', '户县', '户县', '70');
INSERT INTO `tb_opt` VALUES ('14679', '19', '14664', '周至县', '周至县', '75');
INSERT INTO `tb_opt` VALUES ('14680', '19', '14663', '铜川市', '铜川市', '10');
INSERT INTO `tb_opt` VALUES ('14681', '19', '14680', '印台区', '印台区', '5');
INSERT INTO `tb_opt` VALUES ('14682', '19', '14680', '宜君县', '宜君县', '10');
INSERT INTO `tb_opt` VALUES ('14683', '19', '14680', '王益区', '王益区', '15');
INSERT INTO `tb_opt` VALUES ('14684', '19', '14680', '耀州区', '耀州区', '20');
INSERT INTO `tb_opt` VALUES ('14685', '19', '14663', '宝鸡市', '宝鸡市', '15');
INSERT INTO `tb_opt` VALUES ('14686', '19', '14685', '渭滨区', '渭滨区', '5');
INSERT INTO `tb_opt` VALUES ('14687', '19', '14685', '金台区', '金台区', '10');
INSERT INTO `tb_opt` VALUES ('14688', '19', '14685', '岐山县', '岐山县', '15');
INSERT INTO `tb_opt` VALUES ('14689', '19', '14685', '太白县', '太白县', '20');
INSERT INTO `tb_opt` VALUES ('14690', '19', '14685', '凤翔县', '凤翔县', '25');
INSERT INTO `tb_opt` VALUES ('14691', '19', '14685', '陇县', '陇县', '30');
INSERT INTO `tb_opt` VALUES ('14692', '19', '14685', '麟游县', '麟游县', '35');
INSERT INTO `tb_opt` VALUES ('14693', '19', '14685', '千阳县', '千阳县', '40');
INSERT INTO `tb_opt` VALUES ('14694', '19', '14685', '扶风县', '扶风县', '45');
INSERT INTO `tb_opt` VALUES ('14695', '19', '14685', '凤县', '凤县', '50');
INSERT INTO `tb_opt` VALUES ('14696', '19', '14685', '眉县', '眉县', '55');
INSERT INTO `tb_opt` VALUES ('14697', '19', '14685', '陈仓区', '陈仓区', '60');
INSERT INTO `tb_opt` VALUES ('14698', '19', '14663', '咸阳市', '咸阳市', '20');
INSERT INTO `tb_opt` VALUES ('14699', '19', '14698', '秦都区', '秦都区', '5');
INSERT INTO `tb_opt` VALUES ('14700', '19', '14698', '渭城区', '渭城区', '10');
INSERT INTO `tb_opt` VALUES ('14701', '19', '14698', '兴平市', '兴平市', '15');
INSERT INTO `tb_opt` VALUES ('14702', '19', '14698', '礼泉县', '礼泉县', '20');
INSERT INTO `tb_opt` VALUES ('14703', '19', '14698', '泾阳县', '泾阳县', '25');
INSERT INTO `tb_opt` VALUES ('14704', '19', '14698', '永寿县', '永寿县', '30');
INSERT INTO `tb_opt` VALUES ('14705', '19', '14698', '三原县', '三原县', '35');
INSERT INTO `tb_opt` VALUES ('14706', '19', '14698', '彬县', '彬县', '40');
INSERT INTO `tb_opt` VALUES ('14707', '19', '14698', '旬邑县', '旬邑县', '45');
INSERT INTO `tb_opt` VALUES ('14708', '19', '14698', '长武县', '长武县', '50');
INSERT INTO `tb_opt` VALUES ('14709', '19', '14698', '乾县', '乾县', '55');
INSERT INTO `tb_opt` VALUES ('14710', '19', '14698', '武功县', '武功县', '60');
INSERT INTO `tb_opt` VALUES ('14711', '19', '14698', '淳化县', '淳化县', '65');
INSERT INTO `tb_opt` VALUES ('14712', '19', '14698', '杨陵区', '杨陵区', '70');
INSERT INTO `tb_opt` VALUES ('14713', '19', '14663', '渭南市', '渭南市', '25');
INSERT INTO `tb_opt` VALUES ('14714', '19', '14713', '韩城市', '韩城市', '5');
INSERT INTO `tb_opt` VALUES ('14715', '19', '14713', '华阴市', '华阴市', '10');
INSERT INTO `tb_opt` VALUES ('14716', '19', '14713', '蒲城县', '蒲城县', '15');
INSERT INTO `tb_opt` VALUES ('14717', '19', '14713', '华县', '华县', '20');
INSERT INTO `tb_opt` VALUES ('14718', '19', '14713', '潼关县', '潼关县', '25');
INSERT INTO `tb_opt` VALUES ('14719', '19', '14713', '大荔县', '大荔县', '30');
INSERT INTO `tb_opt` VALUES ('14720', '19', '14713', '澄城县', '澄城县', '35');
INSERT INTO `tb_opt` VALUES ('14721', '19', '14713', '合阳县', '合阳县', '40');
INSERT INTO `tb_opt` VALUES ('14722', '19', '14713', '白水县', '白水县', '45');
INSERT INTO `tb_opt` VALUES ('14723', '19', '14713', '富平县', '富平县', '50');
INSERT INTO `tb_opt` VALUES ('14724', '19', '14713', '临渭区', '临渭区', '55');
INSERT INTO `tb_opt` VALUES ('14725', '19', '14663', '延安市', '延安市', '30');
INSERT INTO `tb_opt` VALUES ('14726', '19', '14725', '宝塔区', '宝塔区', '5');
INSERT INTO `tb_opt` VALUES ('14727', '19', '14725', '安塞县', '安塞县', '10');
INSERT INTO `tb_opt` VALUES ('14728', '19', '14725', '洛川县', '洛川县', '15');
INSERT INTO `tb_opt` VALUES ('14729', '19', '14725', '子长县', '子长县', '20');
INSERT INTO `tb_opt` VALUES ('14730', '19', '14725', '黄陵县', '黄陵县', '25');
INSERT INTO `tb_opt` VALUES ('14731', '19', '14725', '延长县', '延长县', '30');
INSERT INTO `tb_opt` VALUES ('14732', '19', '14725', '宜川县', '宜川县', '35');
INSERT INTO `tb_opt` VALUES ('14733', '19', '14725', '延川县', '延川县', '40');
INSERT INTO `tb_opt` VALUES ('14734', '19', '14725', '甘泉县', '甘泉县', '45');
INSERT INTO `tb_opt` VALUES ('14735', '19', '14725', '富县', '富县', '50');
INSERT INTO `tb_opt` VALUES ('14736', '19', '14725', '志丹县', '志丹县', '55');
INSERT INTO `tb_opt` VALUES ('14737', '19', '14725', '黄龙县', '黄龙县', '60');
INSERT INTO `tb_opt` VALUES ('14738', '19', '14725', '吴起县', '吴起县', '65');
INSERT INTO `tb_opt` VALUES ('14739', '19', '14663', '汉中市', '汉中市', '35');
INSERT INTO `tb_opt` VALUES ('14740', '19', '14739', '汉台区', '汉台区', '5');
INSERT INTO `tb_opt` VALUES ('14741', '19', '14739', '南郑县', '南郑县', '10');
INSERT INTO `tb_opt` VALUES ('14742', '19', '14739', '城固县', '城固县', '15');
INSERT INTO `tb_opt` VALUES ('14743', '19', '14739', '洋县', '洋县', '20');
INSERT INTO `tb_opt` VALUES ('14744', '19', '14739', '佛坪县', '佛坪县', '25');
INSERT INTO `tb_opt` VALUES ('14745', '19', '14739', '留坝县', '留坝县', '30');
INSERT INTO `tb_opt` VALUES ('14746', '19', '14739', '镇巴县', '镇巴县', '35');
INSERT INTO `tb_opt` VALUES ('14747', '19', '14739', '西乡县', '西乡县', '40');
INSERT INTO `tb_opt` VALUES ('14748', '19', '14739', '勉县', '勉县', '45');
INSERT INTO `tb_opt` VALUES ('14749', '19', '14739', '略阳县', '略阳县', '50');
INSERT INTO `tb_opt` VALUES ('14750', '19', '14739', '宁强县', '宁强县', '55');
INSERT INTO `tb_opt` VALUES ('14751', '19', '14663', '榆林市', '榆林市', '40');
INSERT INTO `tb_opt` VALUES ('14752', '19', '14751', '清涧县', '清涧县', '5');
INSERT INTO `tb_opt` VALUES ('14753', '19', '14751', '绥德县', '绥德县', '10');
INSERT INTO `tb_opt` VALUES ('14754', '19', '14751', '佳县', '佳县', '15');
INSERT INTO `tb_opt` VALUES ('14755', '19', '14751', '神木县', '神木县', '20');
INSERT INTO `tb_opt` VALUES ('14756', '19', '14751', '府谷县', '府谷县', '25');
INSERT INTO `tb_opt` VALUES ('14757', '19', '14751', '子洲县', '子洲县', '30');
INSERT INTO `tb_opt` VALUES ('14758', '19', '14751', '横山县', '横山县', '35');
INSERT INTO `tb_opt` VALUES ('14759', '19', '14751', '米脂县', '米脂县', '40');
INSERT INTO `tb_opt` VALUES ('14760', '19', '14751', '吴堡县', '吴堡县', '45');
INSERT INTO `tb_opt` VALUES ('14761', '19', '14751', '定边县', '定边县', '50');
INSERT INTO `tb_opt` VALUES ('14762', '19', '14751', '榆阳区', '榆阳区', '55');
INSERT INTO `tb_opt` VALUES ('14763', '19', '14751', '靖边县', '靖边县', '60');
INSERT INTO `tb_opt` VALUES ('14764', '19', '14663', '商洛市', '商洛市', '45');
INSERT INTO `tb_opt` VALUES ('14765', '19', '14764', '商州区', '商州区', '5');
INSERT INTO `tb_opt` VALUES ('14766', '19', '14764', '镇安县', '镇安县', '10');
INSERT INTO `tb_opt` VALUES ('14767', '19', '14764', '山阳县', '山阳县', '15');
INSERT INTO `tb_opt` VALUES ('14768', '19', '14764', '洛南县', '洛南县', '20');
INSERT INTO `tb_opt` VALUES ('14769', '19', '14764', '商南县', '商南县', '25');
INSERT INTO `tb_opt` VALUES ('14770', '19', '14764', '丹凤县', '丹凤县', '30');
INSERT INTO `tb_opt` VALUES ('14771', '19', '14764', '柞水县', '柞水县', '35');
INSERT INTO `tb_opt` VALUES ('14772', '19', '14663', '安康市', '安康市', '50');
INSERT INTO `tb_opt` VALUES ('14773', '19', '14772', '汉滨区', '汉滨区', '5');
INSERT INTO `tb_opt` VALUES ('14774', '19', '14772', '紫阳县', '紫阳县', '10');
INSERT INTO `tb_opt` VALUES ('14775', '19', '14772', '岚皋县', '岚皋县', '15');
INSERT INTO `tb_opt` VALUES ('14776', '19', '14772', '旬阳县', '旬阳县', '20');
INSERT INTO `tb_opt` VALUES ('14777', '19', '14772', '镇坪县', '镇坪县', '25');
INSERT INTO `tb_opt` VALUES ('14778', '19', '14772', '平利县', '平利县', '30');
INSERT INTO `tb_opt` VALUES ('14779', '19', '14772', '宁陕县', '宁陕县', '35');
INSERT INTO `tb_opt` VALUES ('14780', '19', '14772', '汉阴县', '汉阴县', '40');
INSERT INTO `tb_opt` VALUES ('14781', '19', '14772', '石泉县', '石泉县', '45');
INSERT INTO `tb_opt` VALUES ('14782', '19', '14772', '白河县', '白河县', '50');
INSERT INTO `tb_opt` VALUES ('14783', '19', '0', '甘肃省', '甘肃省', '140');
INSERT INTO `tb_opt` VALUES ('14784', '19', '14783', '兰州市', '兰州市', '5');
INSERT INTO `tb_opt` VALUES ('14785', '19', '14784', '七里河区', '七里河区', '5');
INSERT INTO `tb_opt` VALUES ('14786', '19', '14784', '安宁区', '安宁区', '10');
INSERT INTO `tb_opt` VALUES ('14787', '19', '14784', '城关区', '城关区', '15');
INSERT INTO `tb_opt` VALUES ('14788', '19', '14784', '西固区', '西固区', '20');
INSERT INTO `tb_opt` VALUES ('14789', '19', '14784', '红古区', '红古区', '25');
INSERT INTO `tb_opt` VALUES ('14790', '19', '14784', '永登县', '永登县', '30');
INSERT INTO `tb_opt` VALUES ('14791', '19', '14784', '榆中县', '榆中县', '35');
INSERT INTO `tb_opt` VALUES ('14792', '19', '14784', '皋兰县', '皋兰县', '40');
INSERT INTO `tb_opt` VALUES ('14793', '19', '14783', '金昌市', '金昌市', '10');
INSERT INTO `tb_opt` VALUES ('14794', '19', '14793', '永昌县', '永昌县', '5');
INSERT INTO `tb_opt` VALUES ('14795', '19', '14793', '金川区', '金川区', '10');
INSERT INTO `tb_opt` VALUES ('14796', '19', '14783', '白银市', '白银市', '15');
INSERT INTO `tb_opt` VALUES ('14797', '19', '14796', '白银区', '白银区', '5');
INSERT INTO `tb_opt` VALUES ('14798', '19', '14796', '平川区', '平川区', '10');
INSERT INTO `tb_opt` VALUES ('14799', '19', '14796', '靖远县', '靖远县', '15');
INSERT INTO `tb_opt` VALUES ('14800', '19', '14796', '景泰县', '景泰县', '20');
INSERT INTO `tb_opt` VALUES ('14801', '19', '14796', '会宁县', '会宁县', '25');
INSERT INTO `tb_opt` VALUES ('14802', '19', '14783', '天水市', '天水市', '20');
INSERT INTO `tb_opt` VALUES ('14803', '19', '14802', '麦积区', '麦积区', '5');
INSERT INTO `tb_opt` VALUES ('14804', '19', '14802', '秦州区', '秦州区', '10');
INSERT INTO `tb_opt` VALUES ('14805', '19', '14802', '甘谷县', '甘谷县', '15');
INSERT INTO `tb_opt` VALUES ('14806', '19', '14802', '武山县', '武山县', '20');
INSERT INTO `tb_opt` VALUES ('14807', '19', '14802', '清水县', '清水县', '25');
INSERT INTO `tb_opt` VALUES ('14808', '19', '14802', '秦安县', '秦安县', '30');
INSERT INTO `tb_opt` VALUES ('14809', '19', '14802', '张家川县', '张家川县', '35');
INSERT INTO `tb_opt` VALUES ('14810', '19', '14783', '嘉峪关市', '嘉峪关市', '25');
INSERT INTO `tb_opt` VALUES ('14811', '19', '14810', '长城区', '长城区', '5');
INSERT INTO `tb_opt` VALUES ('14812', '19', '14810', '镜铁区', '镜铁区', '10');
INSERT INTO `tb_opt` VALUES ('14813', '19', '14810', '雄关区', '雄关区', '15');
INSERT INTO `tb_opt` VALUES ('14814', '19', '14783', '平凉市', '平凉市', '30');
INSERT INTO `tb_opt` VALUES ('14815', '19', '14814', '静宁县', '静宁县', '5');
INSERT INTO `tb_opt` VALUES ('14816', '19', '14814', '崆峒区', '崆峒区', '10');
INSERT INTO `tb_opt` VALUES ('14817', '19', '14814', '华亭县', '华亭县', '15');
INSERT INTO `tb_opt` VALUES ('14818', '19', '14814', '崇信县', '崇信县', '20');
INSERT INTO `tb_opt` VALUES ('14819', '19', '14814', '泾川县', '泾川县', '25');
INSERT INTO `tb_opt` VALUES ('14820', '19', '14814', '灵台县', '灵台县', '30');
INSERT INTO `tb_opt` VALUES ('14821', '19', '14814', '镇原县', '镇原县', '35');
INSERT INTO `tb_opt` VALUES ('14822', '19', '14814', '庄浪县', '庄浪县', '40');
INSERT INTO `tb_opt` VALUES ('14823', '19', '14783', '庆阳市', '庆阳市', '35');
INSERT INTO `tb_opt` VALUES ('14824', '19', '14823', '庆城县', '庆城县', '5');
INSERT INTO `tb_opt` VALUES ('14825', '19', '14823', '西峰区', '西峰区', '10');
INSERT INTO `tb_opt` VALUES ('14826', '19', '14823', '镇原县', '镇原县', '15');
INSERT INTO `tb_opt` VALUES ('14827', '19', '14823', '合水县', '合水县', '20');
INSERT INTO `tb_opt` VALUES ('14828', '19', '14823', '华池县', '华池县', '25');
INSERT INTO `tb_opt` VALUES ('14829', '19', '14823', '环县', '环县', '30');
INSERT INTO `tb_opt` VALUES ('14830', '19', '14823', '宁县', '宁县', '35');
INSERT INTO `tb_opt` VALUES ('14831', '19', '14823', '正宁县', '正宁县', '40');
INSERT INTO `tb_opt` VALUES ('14832', '19', '14783', '陇南市', '陇南市', '40');
INSERT INTO `tb_opt` VALUES ('14833', '19', '14832', '成县', '成县', '5');
INSERT INTO `tb_opt` VALUES ('14834', '19', '14832', '礼县', '礼县', '10');
INSERT INTO `tb_opt` VALUES ('14835', '19', '14832', '康县', '康县', '15');
INSERT INTO `tb_opt` VALUES ('14836', '19', '14832', '武都区', '武都区', '20');
INSERT INTO `tb_opt` VALUES ('14837', '19', '14832', '文县', '文县', '25');
INSERT INTO `tb_opt` VALUES ('14838', '19', '14832', '两当县', '两当县', '30');
INSERT INTO `tb_opt` VALUES ('14839', '19', '14832', '徽县', '徽县', '35');
INSERT INTO `tb_opt` VALUES ('14840', '19', '14832', '宕昌县', '宕昌县', '40');
INSERT INTO `tb_opt` VALUES ('14841', '19', '14832', '西和县', '西和县', '45');
INSERT INTO `tb_opt` VALUES ('14842', '19', '14783', '武威市', '武威市', '45');
INSERT INTO `tb_opt` VALUES ('14843', '19', '14842', '凉州区', '凉州区', '5');
INSERT INTO `tb_opt` VALUES ('14844', '19', '14842', '古浪县', '古浪县', '10');
INSERT INTO `tb_opt` VALUES ('14845', '19', '14842', '天祝县', '天祝县', '15');
INSERT INTO `tb_opt` VALUES ('14846', '19', '14842', '民勤县', '民勤县', '20');
INSERT INTO `tb_opt` VALUES ('14847', '19', '14783', '张掖市', '张掖市', '50');
INSERT INTO `tb_opt` VALUES ('14848', '19', '14847', '甘州区', '甘州区', '5');
INSERT INTO `tb_opt` VALUES ('14849', '19', '14847', '山丹县', '山丹县', '10');
INSERT INTO `tb_opt` VALUES ('14850', '19', '14847', '临泽县', '临泽县', '15');
INSERT INTO `tb_opt` VALUES ('14851', '19', '14847', '高台县', '高台县', '20');
INSERT INTO `tb_opt` VALUES ('14852', '19', '14847', '肃南县', '肃南县', '25');
INSERT INTO `tb_opt` VALUES ('14853', '19', '14847', '民乐县', '民乐县', '30');
INSERT INTO `tb_opt` VALUES ('14854', '19', '14783', '酒泉市', '酒泉市', '55');
INSERT INTO `tb_opt` VALUES ('14855', '19', '14854', '金塔县', '金塔县', '5');
INSERT INTO `tb_opt` VALUES ('14856', '19', '14854', '阿克塞县', '阿克塞县', '10');
INSERT INTO `tb_opt` VALUES ('14857', '19', '14854', '肃北县', '肃北县', '15');
INSERT INTO `tb_opt` VALUES ('14858', '19', '14854', '瓜州县', '瓜州县', '20');
INSERT INTO `tb_opt` VALUES ('14859', '19', '14854', '肃州区', '肃州区', '25');
INSERT INTO `tb_opt` VALUES ('14860', '19', '14854', '玉门市', '玉门市', '30');
INSERT INTO `tb_opt` VALUES ('14861', '19', '14854', '敦煌市', '敦煌市', '35');
INSERT INTO `tb_opt` VALUES ('14862', '19', '14783', '甘南州', '甘南州', '60');
INSERT INTO `tb_opt` VALUES ('14863', '19', '14862', '合作市', '合作市', '5');
INSERT INTO `tb_opt` VALUES ('14864', '19', '14862', '夏河县', '夏河县', '10');
INSERT INTO `tb_opt` VALUES ('14865', '19', '14862', '碌曲县', '碌曲县', '15');
INSERT INTO `tb_opt` VALUES ('14866', '19', '14862', '舟曲县', '舟曲县', '20');
INSERT INTO `tb_opt` VALUES ('14867', '19', '14862', '玛曲县', '玛曲县', '25');
INSERT INTO `tb_opt` VALUES ('14868', '19', '14862', '迭部县', '迭部县', '30');
INSERT INTO `tb_opt` VALUES ('14869', '19', '14862', '临潭县', '临潭县', '35');
INSERT INTO `tb_opt` VALUES ('14870', '19', '14862', '卓尼县', '卓尼县', '40');
INSERT INTO `tb_opt` VALUES ('14871', '19', '14783', '临夏州', '临夏州', '65');
INSERT INTO `tb_opt` VALUES ('14872', '19', '14871', '临夏县', '临夏县', '5');
INSERT INTO `tb_opt` VALUES ('14873', '19', '14871', '康乐县', '康乐县', '10');
INSERT INTO `tb_opt` VALUES ('14874', '19', '14871', '永靖县', '永靖县', '15');
INSERT INTO `tb_opt` VALUES ('14875', '19', '14871', '和政县', '和政县', '20');
INSERT INTO `tb_opt` VALUES ('14876', '19', '14871', '东乡族自治县', '东乡族自治县', '25');
INSERT INTO `tb_opt` VALUES ('14877', '19', '14871', '积石山县', '积石山县', '30');
INSERT INTO `tb_opt` VALUES ('14878', '19', '14871', '临夏市', '临夏市', '35');
INSERT INTO `tb_opt` VALUES ('14879', '19', '14871', '广河县', '广河县', '40');
INSERT INTO `tb_opt` VALUES ('14880', '19', '14783', '定西市', '定西市', '70');
INSERT INTO `tb_opt` VALUES ('14881', '19', '14880', '岷县', '岷县', '5');
INSERT INTO `tb_opt` VALUES ('14882', '19', '14880', '安定区', '安定区', '10');
INSERT INTO `tb_opt` VALUES ('14883', '19', '14880', '通渭县', '通渭县', '15');
INSERT INTO `tb_opt` VALUES ('14884', '19', '14880', '临洮县', '临洮县', '20');
INSERT INTO `tb_opt` VALUES ('14885', '19', '14880', '漳县', '漳县', '25');
INSERT INTO `tb_opt` VALUES ('14886', '19', '14880', '渭源县', '渭源县', '30');
INSERT INTO `tb_opt` VALUES ('14887', '19', '14880', '陇西县', '陇西县', '35');
INSERT INTO `tb_opt` VALUES ('14888', '19', '0', '青海省', '青海省', '145');
INSERT INTO `tb_opt` VALUES ('14889', '19', '14888', '西宁市', '西宁市', '5');
INSERT INTO `tb_opt` VALUES ('14890', '19', '14889', '湟中县', '湟中县', '5');
INSERT INTO `tb_opt` VALUES ('14891', '19', '14889', '湟源县', '湟源县', '10');
INSERT INTO `tb_opt` VALUES ('14892', '19', '14889', '大通县', '大通县', '15');
INSERT INTO `tb_opt` VALUES ('14893', '19', '14889', '城中区', '城中区', '20');
INSERT INTO `tb_opt` VALUES ('14894', '19', '14889', '城东区', '城东区', '25');
INSERT INTO `tb_opt` VALUES ('14895', '19', '14889', '城西区', '城西区', '30');
INSERT INTO `tb_opt` VALUES ('14896', '19', '14889', '城北区', '城北区', '35');
INSERT INTO `tb_opt` VALUES ('14897', '19', '14888', '海东地区', '海东地区', '10');
INSERT INTO `tb_opt` VALUES ('14898', '19', '14897', '平安县', '平安县', '5');
INSERT INTO `tb_opt` VALUES ('14899', '19', '14897', '乐都县', '乐都县', '10');
INSERT INTO `tb_opt` VALUES ('14900', '19', '14897', '民和县', '民和县', '15');
INSERT INTO `tb_opt` VALUES ('14901', '19', '14897', '互助县', '互助县', '20');
INSERT INTO `tb_opt` VALUES ('14902', '19', '14897', '化隆县', '化隆县', '25');
INSERT INTO `tb_opt` VALUES ('14903', '19', '14897', '循化县', '循化县', '30');
INSERT INTO `tb_opt` VALUES ('14904', '19', '14888', '海北州', '海北州', '15');
INSERT INTO `tb_opt` VALUES ('14905', '19', '14904', '海晏县', '海晏县', '5');
INSERT INTO `tb_opt` VALUES ('14906', '19', '14904', '祁连县', '祁连县', '10');
INSERT INTO `tb_opt` VALUES ('14907', '19', '14904', '刚察县', '刚察县', '15');
INSERT INTO `tb_opt` VALUES ('14908', '19', '14904', '门源县', '门源县', '20');
INSERT INTO `tb_opt` VALUES ('14909', '19', '14888', '黄南州', '黄南州', '20');
INSERT INTO `tb_opt` VALUES ('14910', '19', '14909', '尖扎县', '尖扎县', '5');
INSERT INTO `tb_opt` VALUES ('14911', '19', '14909', '同仁县', '同仁县', '10');
INSERT INTO `tb_opt` VALUES ('14912', '19', '14909', '泽库县', '泽库县', '15');
INSERT INTO `tb_opt` VALUES ('14913', '19', '14909', '河南县', '河南县', '20');
INSERT INTO `tb_opt` VALUES ('14914', '19', '14888', '海南州', '海南州', '25');
INSERT INTO `tb_opt` VALUES ('14915', '19', '14914', '共和县', '共和县', '5');
INSERT INTO `tb_opt` VALUES ('14916', '19', '14914', '同德县', '同德县', '10');
INSERT INTO `tb_opt` VALUES ('14917', '19', '14914', '贵德县', '贵德县', '15');
INSERT INTO `tb_opt` VALUES ('14918', '19', '14914', '兴海县', '兴海县', '20');
INSERT INTO `tb_opt` VALUES ('14919', '19', '14914', '贵南县', '贵南县', '25');
INSERT INTO `tb_opt` VALUES ('14920', '19', '14888', '果洛州', '果洛州', '30');
INSERT INTO `tb_opt` VALUES ('14921', '19', '14920', '玛沁县', '玛沁县', '5');
INSERT INTO `tb_opt` VALUES ('14922', '19', '14920', '甘德县', '甘德县', '10');
INSERT INTO `tb_opt` VALUES ('14923', '19', '14920', '达日县', '达日县', '15');
INSERT INTO `tb_opt` VALUES ('14924', '19', '14920', '班玛县', '班玛县', '20');
INSERT INTO `tb_opt` VALUES ('14925', '19', '14920', '久治县', '久治县', '25');
INSERT INTO `tb_opt` VALUES ('14926', '19', '14920', '玛多县', '玛多县', '30');
INSERT INTO `tb_opt` VALUES ('14927', '19', '14888', '玉树州', '玉树州', '35');
INSERT INTO `tb_opt` VALUES ('14928', '19', '14927', '玉树县', '玉树县', '5');
INSERT INTO `tb_opt` VALUES ('14929', '19', '14927', '称多县', '称多县', '10');
INSERT INTO `tb_opt` VALUES ('14930', '19', '14927', '囊谦县', '囊谦县', '15');
INSERT INTO `tb_opt` VALUES ('14931', '19', '14927', '杂多县', '杂多县', '20');
INSERT INTO `tb_opt` VALUES ('14932', '19', '14927', '治多县', '治多县', '25');
INSERT INTO `tb_opt` VALUES ('14933', '19', '14927', '曲麻莱县', '曲麻莱县', '30');
INSERT INTO `tb_opt` VALUES ('14934', '19', '14888', '海西州', '海西州', '40');
INSERT INTO `tb_opt` VALUES ('14935', '19', '14934', '德令哈市', '德令哈市', '5');
INSERT INTO `tb_opt` VALUES ('14936', '19', '14934', '乌兰县', '乌兰县', '10');
INSERT INTO `tb_opt` VALUES ('14937', '19', '14934', '天峻县', '天峻县', '15');
INSERT INTO `tb_opt` VALUES ('14938', '19', '14934', '都兰县', '都兰县', '20');
INSERT INTO `tb_opt` VALUES ('14939', '19', '14934', '大柴旦行委', '大柴旦行委', '25');
INSERT INTO `tb_opt` VALUES ('14940', '19', '14934', '冷湖行委', '冷湖行委', '30');
INSERT INTO `tb_opt` VALUES ('14941', '19', '14934', '茫崖行委', '茫崖行委', '35');
INSERT INTO `tb_opt` VALUES ('14942', '19', '14934', '格尔木市', '格尔木市', '40');
INSERT INTO `tb_opt` VALUES ('14943', '19', '0', '宁夏回族自治区', '宁夏回族自治区', '150');
INSERT INTO `tb_opt` VALUES ('14944', '19', '14943', '银川市', '银川市', '5');
INSERT INTO `tb_opt` VALUES ('14945', '19', '14944', '灵武市', '灵武市', '5');
INSERT INTO `tb_opt` VALUES ('14946', '19', '14944', '永宁县', '永宁县', '10');
INSERT INTO `tb_opt` VALUES ('14947', '19', '14944', '贺兰县', '贺兰县', '15');
INSERT INTO `tb_opt` VALUES ('14948', '19', '14944', '兴庆区', '兴庆区', '20');
INSERT INTO `tb_opt` VALUES ('14949', '19', '14944', '金凤区', '金凤区', '25');
INSERT INTO `tb_opt` VALUES ('14950', '19', '14944', '西夏区', '西夏区', '30');
INSERT INTO `tb_opt` VALUES ('14951', '19', '14943', '石嘴山市', '石嘴山市', '10');
INSERT INTO `tb_opt` VALUES ('14952', '19', '14951', '平罗县', '平罗县', '5');
INSERT INTO `tb_opt` VALUES ('14953', '19', '14951', '惠农区', '惠农区', '10');
INSERT INTO `tb_opt` VALUES ('14954', '19', '14951', '大武口区', '大武口区', '15');
INSERT INTO `tb_opt` VALUES ('14955', '19', '14943', '吴忠市', '吴忠市', '15');
INSERT INTO `tb_opt` VALUES ('14956', '19', '14955', '青铜峡市', '青铜峡市', '5');
INSERT INTO `tb_opt` VALUES ('14957', '19', '14955', '同心县', '同心县', '10');
INSERT INTO `tb_opt` VALUES ('14958', '19', '14955', '盐池县', '盐池县', '15');
INSERT INTO `tb_opt` VALUES ('14959', '19', '14955', '红寺堡开发区', '红寺堡开发区', '20');
INSERT INTO `tb_opt` VALUES ('14960', '19', '14955', '利通区', '利通区', '25');
INSERT INTO `tb_opt` VALUES ('14961', '19', '14943', '固原市', '固原市', '20');
INSERT INTO `tb_opt` VALUES ('14962', '19', '14961', '西吉县', '西吉县', '5');
INSERT INTO `tb_opt` VALUES ('14963', '19', '14961', '隆德县', '隆德县', '10');
INSERT INTO `tb_opt` VALUES ('14964', '19', '14961', '泾源县', '泾源县', '15');
INSERT INTO `tb_opt` VALUES ('14965', '19', '14961', '彭阳县', '彭阳县', '20');
INSERT INTO `tb_opt` VALUES ('14966', '19', '14961', '原州区', '原州区', '25');
INSERT INTO `tb_opt` VALUES ('14967', '19', '14943', '中卫市', '中卫市', '25');
INSERT INTO `tb_opt` VALUES ('14968', '19', '14967', '中宁县', '中宁县', '5');
INSERT INTO `tb_opt` VALUES ('14969', '19', '14967', '海原县', '海原县', '10');
INSERT INTO `tb_opt` VALUES ('14970', '19', '14967', '沙坡头区', '沙坡头区', '15');
INSERT INTO `tb_opt` VALUES ('14971', '19', '0', '新疆维吾尔自治区', '新疆维吾尔自治区', '155');
INSERT INTO `tb_opt` VALUES ('14972', '19', '14971', '乌鲁木齐市', '乌鲁木齐市', '5');
INSERT INTO `tb_opt` VALUES ('14973', '19', '14972', '天山区', '天山区', '5');
INSERT INTO `tb_opt` VALUES ('14974', '19', '14972', '头屯河区', '头屯河区', '10');
INSERT INTO `tb_opt` VALUES ('14975', '19', '14972', '达坂城区', '达坂城区', '15');
INSERT INTO `tb_opt` VALUES ('14976', '19', '14972', '米东区', '米东区', '20');
INSERT INTO `tb_opt` VALUES ('14977', '19', '14972', '新市区', '新市区', '25');
INSERT INTO `tb_opt` VALUES ('14978', '19', '14972', '沙依巴克区', '沙依巴克区', '30');
INSERT INTO `tb_opt` VALUES ('14979', '19', '14972', '水磨沟区', '水磨沟区', '35');
INSERT INTO `tb_opt` VALUES ('14980', '19', '14972', '乌鲁木齐县', '乌鲁木齐县', '40');
INSERT INTO `tb_opt` VALUES ('14981', '19', '14971', '克拉玛依市', '克拉玛依市', '10');
INSERT INTO `tb_opt` VALUES ('14982', '19', '14981', '克拉玛依区', '克拉玛依区', '5');
INSERT INTO `tb_opt` VALUES ('14983', '19', '14981', '独山子区', '独山子区', '10');
INSERT INTO `tb_opt` VALUES ('14984', '19', '14981', '乌尔禾区', '乌尔禾区', '15');
INSERT INTO `tb_opt` VALUES ('14985', '19', '14981', '白碱滩区', '白碱滩区', '20');
INSERT INTO `tb_opt` VALUES ('14986', '19', '14971', '石河子市', '石河子市', '15');
INSERT INTO `tb_opt` VALUES ('14987', '19', '14986', '石河子市', '石河子市', '5');
INSERT INTO `tb_opt` VALUES ('14988', '19', '14971', '吐鲁番地区', '吐鲁番地区', '20');
INSERT INTO `tb_opt` VALUES ('14989', '19', '14988', '吐鲁番市', '吐鲁番市', '5');
INSERT INTO `tb_opt` VALUES ('14990', '19', '14988', '托克逊县', '托克逊县', '10');
INSERT INTO `tb_opt` VALUES ('14991', '19', '14988', '鄯善县', '鄯善县', '15');
INSERT INTO `tb_opt` VALUES ('14992', '19', '14971', '哈密地区', '哈密地区', '25');
INSERT INTO `tb_opt` VALUES ('14993', '19', '14992', '哈密市', '哈密市', '5');
INSERT INTO `tb_opt` VALUES ('14994', '19', '14992', '巴里坤县', '巴里坤县', '10');
INSERT INTO `tb_opt` VALUES ('14995', '19', '14992', '伊吾县', '伊吾县', '15');
INSERT INTO `tb_opt` VALUES ('14996', '19', '14971', '和田地区', '和田地区', '30');
INSERT INTO `tb_opt` VALUES ('14997', '19', '14996', '和田县', '和田县', '5');
INSERT INTO `tb_opt` VALUES ('14998', '19', '14996', '和田市', '和田市', '10');
INSERT INTO `tb_opt` VALUES ('14999', '19', '14996', '墨玉县', '墨玉县', '15');
INSERT INTO `tb_opt` VALUES ('15000', '19', '14996', '洛浦县', '洛浦县', '20');
INSERT INTO `tb_opt` VALUES ('15001', '19', '14996', '策勒县', '策勒县', '25');
INSERT INTO `tb_opt` VALUES ('15002', '19', '14996', '于田县', '于田县', '30');
INSERT INTO `tb_opt` VALUES ('15003', '19', '14996', '民丰县', '民丰县', '35');
INSERT INTO `tb_opt` VALUES ('15004', '19', '14996', '皮山县', '皮山县', '40');
INSERT INTO `tb_opt` VALUES ('15005', '19', '14971', '阿克苏地区', '阿克苏地区', '35');
INSERT INTO `tb_opt` VALUES ('15006', '19', '15005', '阿拉尔市', '阿拉尔市', '5');
INSERT INTO `tb_opt` VALUES ('15007', '19', '15005', '阿克苏市', '阿克苏市', '10');
INSERT INTO `tb_opt` VALUES ('15008', '19', '15005', '温宿县', '温宿县', '15');
INSERT INTO `tb_opt` VALUES ('15009', '19', '15005', '沙雅县', '沙雅县', '20');
INSERT INTO `tb_opt` VALUES ('15010', '19', '15005', '拜城县', '拜城县', '25');
INSERT INTO `tb_opt` VALUES ('15011', '19', '15005', '阿瓦提县', '阿瓦提县', '30');
INSERT INTO `tb_opt` VALUES ('15012', '19', '15005', '库车县', '库车县', '35');
INSERT INTO `tb_opt` VALUES ('15013', '19', '15005', '柯坪县', '柯坪县', '40');
INSERT INTO `tb_opt` VALUES ('15014', '19', '15005', '新和县', '新和县', '45');
INSERT INTO `tb_opt` VALUES ('15015', '19', '15005', '乌什县', '乌什县', '50');
INSERT INTO `tb_opt` VALUES ('15016', '19', '14971', '喀什地区', '喀什地区', '40');
INSERT INTO `tb_opt` VALUES ('15017', '19', '15016', '喀什市', '喀什市', '5');
INSERT INTO `tb_opt` VALUES ('15018', '19', '15016', '巴楚县', '巴楚县', '10');
INSERT INTO `tb_opt` VALUES ('15019', '19', '15016', '泽普县', '泽普县', '15');
INSERT INTO `tb_opt` VALUES ('15020', '19', '15016', '伽师县', '伽师县', '20');
INSERT INTO `tb_opt` VALUES ('15021', '19', '15016', '叶城县', '叶城县', '25');
INSERT INTO `tb_opt` VALUES ('15022', '19', '15016', '岳普湖县', '岳普湖县', '30');
INSERT INTO `tb_opt` VALUES ('15023', '19', '15016', '疏附县', '疏附县', '35');
INSERT INTO `tb_opt` VALUES ('15024', '19', '15016', '疏勒县', '疏勒县', '40');
INSERT INTO `tb_opt` VALUES ('15025', '19', '15016', '英吉沙县', '英吉沙县', '45');
INSERT INTO `tb_opt` VALUES ('15026', '19', '15016', '麦盖提县', '麦盖提县', '50');
INSERT INTO `tb_opt` VALUES ('15027', '19', '15016', '莎车县', '莎车县', '55');
INSERT INTO `tb_opt` VALUES ('15028', '19', '15016', '塔什库尔干县', '塔什库尔干县', '60');
INSERT INTO `tb_opt` VALUES ('15029', '19', '14971', '克孜勒苏州', '克孜勒苏州', '45');
INSERT INTO `tb_opt` VALUES ('15030', '19', '15029', '阿图什市', '阿图什市', '5');
INSERT INTO `tb_opt` VALUES ('15031', '19', '15029', '阿合奇县', '阿合奇县', '10');
INSERT INTO `tb_opt` VALUES ('15032', '19', '15029', '乌恰县', '乌恰县', '15');
INSERT INTO `tb_opt` VALUES ('15033', '19', '15029', '阿克陶县', '阿克陶县', '20');
INSERT INTO `tb_opt` VALUES ('15034', '19', '14971', '巴音郭楞州', '巴音郭楞州', '50');
INSERT INTO `tb_opt` VALUES ('15035', '19', '15034', '库尔勒市', '库尔勒市', '5');
INSERT INTO `tb_opt` VALUES ('15036', '19', '15034', '尉犁县', '尉犁县', '10');
INSERT INTO `tb_opt` VALUES ('15037', '19', '15034', '和静县', '和静县', '15');
INSERT INTO `tb_opt` VALUES ('15038', '19', '15034', '博湖县', '博湖县', '20');
INSERT INTO `tb_opt` VALUES ('15039', '19', '15034', '和硕县', '和硕县', '25');
INSERT INTO `tb_opt` VALUES ('15040', '19', '15034', '轮台县', '轮台县', '30');
INSERT INTO `tb_opt` VALUES ('15041', '19', '15034', '若羌县', '若羌县', '35');
INSERT INTO `tb_opt` VALUES ('15042', '19', '15034', '且末县', '且末县', '40');
INSERT INTO `tb_opt` VALUES ('15043', '19', '15034', '焉耆县', '焉耆县', '45');
INSERT INTO `tb_opt` VALUES ('15044', '19', '14971', '昌吉州', '昌吉州', '55');
INSERT INTO `tb_opt` VALUES ('15045', '19', '15044', '昌吉市', '昌吉市', '5');
INSERT INTO `tb_opt` VALUES ('15046', '19', '15044', '阜康市', '阜康市', '10');
INSERT INTO `tb_opt` VALUES ('15047', '19', '15044', '奇台县', '奇台县', '15');
INSERT INTO `tb_opt` VALUES ('15048', '19', '15044', '玛纳斯县', '玛纳斯县', '20');
INSERT INTO `tb_opt` VALUES ('15049', '19', '15044', '吉木萨尔县', '吉木萨尔县', '25');
INSERT INTO `tb_opt` VALUES ('15050', '19', '15044', '呼图壁县', '呼图壁县', '30');
INSERT INTO `tb_opt` VALUES ('15051', '19', '15044', '木垒县', '木垒县', '35');
INSERT INTO `tb_opt` VALUES ('15052', '19', '14971', '博尔塔拉州', '博尔塔拉州', '60');
INSERT INTO `tb_opt` VALUES ('15053', '19', '15052', '博乐市', '博乐市', '5');
INSERT INTO `tb_opt` VALUES ('15054', '19', '15052', '精河县', '精河县', '10');
INSERT INTO `tb_opt` VALUES ('15055', '19', '15052', '温泉县', '温泉县', '15');
INSERT INTO `tb_opt` VALUES ('15056', '19', '14971', '伊犁州', '伊犁州', '65');
INSERT INTO `tb_opt` VALUES ('15057', '19', '15056', '伊宁县', '伊宁县', '5');
INSERT INTO `tb_opt` VALUES ('15058', '19', '15056', '伊宁市', '伊宁市', '10');
INSERT INTO `tb_opt` VALUES ('15059', '19', '15056', '特克斯县', '特克斯县', '15');
INSERT INTO `tb_opt` VALUES ('15060', '19', '15056', '尼勒克县', '尼勒克县', '20');
INSERT INTO `tb_opt` VALUES ('15061', '19', '15056', '昭苏县', '昭苏县', '25');
INSERT INTO `tb_opt` VALUES ('15062', '19', '15056', '新源县', '新源县', '30');
INSERT INTO `tb_opt` VALUES ('15063', '19', '15056', '霍城县', '霍城县', '35');
INSERT INTO `tb_opt` VALUES ('15064', '19', '15056', '察布查尔县', '察布查尔县', '40');
INSERT INTO `tb_opt` VALUES ('15065', '19', '15056', '巩留县', '巩留县', '45');
INSERT INTO `tb_opt` VALUES ('15066', '19', '15056', '奎屯市', '奎屯市', '50');
INSERT INTO `tb_opt` VALUES ('15067', '19', '14971', '塔城地区', '塔城地区', '70');
INSERT INTO `tb_opt` VALUES ('15068', '19', '15067', '塔城市', '塔城市', '5');
INSERT INTO `tb_opt` VALUES ('15069', '19', '15067', '乌苏市', '乌苏市', '10');
INSERT INTO `tb_opt` VALUES ('15070', '19', '15067', '额敏县', '额敏县', '15');
INSERT INTO `tb_opt` VALUES ('15071', '19', '15067', '裕民县', '裕民县', '20');
INSERT INTO `tb_opt` VALUES ('15072', '19', '15067', '沙湾县', '沙湾县', '25');
INSERT INTO `tb_opt` VALUES ('15073', '19', '15067', '托里县', '托里县', '30');
INSERT INTO `tb_opt` VALUES ('15074', '19', '15067', '和布克赛尔县', '和布克赛尔县', '35');
INSERT INTO `tb_opt` VALUES ('15075', '19', '14971', '阿勒泰地区', '阿勒泰地区', '75');
INSERT INTO `tb_opt` VALUES ('15076', '19', '15075', '北屯市', '北屯市', '5');
INSERT INTO `tb_opt` VALUES ('15077', '19', '15075', '阿勒泰市', '阿勒泰市', '10');
INSERT INTO `tb_opt` VALUES ('15078', '19', '15075', '富蕴县', '富蕴县', '15');
INSERT INTO `tb_opt` VALUES ('15079', '19', '15075', '青河县', '青河县', '20');
INSERT INTO `tb_opt` VALUES ('15080', '19', '15075', '吉木乃县', '吉木乃县', '25');
INSERT INTO `tb_opt` VALUES ('15081', '19', '15075', '布尔津县', '布尔津县', '30');
INSERT INTO `tb_opt` VALUES ('15082', '19', '15075', '福海县', '福海县', '35');
INSERT INTO `tb_opt` VALUES ('15083', '19', '15075', '哈巴河县', '哈巴河县', '40');
INSERT INTO `tb_opt` VALUES ('15084', '19', '14971', '五家渠市', '五家渠市', '80');
INSERT INTO `tb_opt` VALUES ('15085', '19', '15084', '五家渠市', '五家渠市', '5');
INSERT INTO `tb_opt` VALUES ('15086', '19', '14971', '阿拉尔市', '阿拉尔市', '85');
INSERT INTO `tb_opt` VALUES ('15087', '19', '15086', '阿拉尔市', '阿拉尔市', '5');
INSERT INTO `tb_opt` VALUES ('15088', '19', '14971', '图木舒克市', '图木舒克市', '90');
INSERT INTO `tb_opt` VALUES ('15089', '19', '15088', '图木舒克市', '图木舒克市', '5');
INSERT INTO `tb_opt` VALUES ('15090', '19', '0', '台湾省', '台湾省', '160');
INSERT INTO `tb_opt` VALUES ('15091', '19', '15090', '台北', '台北', '5');
INSERT INTO `tb_opt` VALUES ('15092', '19', '15091', '台北县', '台北县', '5');
INSERT INTO `tb_opt` VALUES ('15093', '19', '15091', '台北市', '台北市', '10');
INSERT INTO `tb_opt` VALUES ('15094', '19', '15090', '高雄', '高雄', '10');
INSERT INTO `tb_opt` VALUES ('15095', '19', '15094', '市区', '市区', '5');
INSERT INTO `tb_opt` VALUES ('15096', '19', '15094', '东港', '东港', '10');
INSERT INTO `tb_opt` VALUES ('15097', '19', '15094', '大武', '大武', '15');
INSERT INTO `tb_opt` VALUES ('15098', '19', '15094', '恒春', '恒春', '20');
INSERT INTO `tb_opt` VALUES ('15099', '19', '15094', '兰屿', '兰屿', '25');
INSERT INTO `tb_opt` VALUES ('15100', '19', '15090', '台南', '台南', '15');
INSERT INTO `tb_opt` VALUES ('15101', '19', '15090', '台中', '台中', '20');
INSERT INTO `tb_opt` VALUES ('15102', '19', '15090', '桃园', '桃园', '25');
INSERT INTO `tb_opt` VALUES ('15103', '19', '15090', '新竹', '新竹', '30');
INSERT INTO `tb_opt` VALUES ('15104', '19', '15103', '新竹县', '新竹县', '5');
INSERT INTO `tb_opt` VALUES ('15105', '19', '15103', '新竹市', '新竹市', '10');
INSERT INTO `tb_opt` VALUES ('15106', '19', '15103', '公馆', '公馆', '15');
INSERT INTO `tb_opt` VALUES ('15107', '19', '15090', '宜兰', '宜兰', '35');
INSERT INTO `tb_opt` VALUES ('15108', '19', '15090', '澎湖', '澎湖', '40');
INSERT INTO `tb_opt` VALUES ('15109', '19', '15108', '马公', '马公', '5');
INSERT INTO `tb_opt` VALUES ('15110', '19', '15108', '东吉屿', '东吉屿', '10');
INSERT INTO `tb_opt` VALUES ('15111', '19', '15090', '嘉义', '嘉义', '45');
INSERT INTO `tb_opt` VALUES ('15112', '19', '15111', '嘉义', '嘉义', '5');
INSERT INTO `tb_opt` VALUES ('15113', '19', '15111', '阿里山', '阿里山', '10');
INSERT INTO `tb_opt` VALUES ('15114', '19', '15111', '玉山', '玉山', '15');
INSERT INTO `tb_opt` VALUES ('15115', '19', '15111', '新港', '新港', '20');
INSERT INTO `tb_opt` VALUES ('15116', '19', '15090', '花莲', '花莲', '50');
INSERT INTO `tb_opt` VALUES ('15117', '19', '15090', '台东', '台东', '55');
INSERT INTO `tb_opt` VALUES ('15118', '19', '15090', '基隆', '基隆', '60');
INSERT INTO `tb_opt` VALUES ('15119', '19', '15118', '彭佳屿', '彭佳屿', '5');
INSERT INTO `tb_opt` VALUES ('15120', '19', '0', '香港特别行政区', '香港特别行政区', '165');
INSERT INTO `tb_opt` VALUES ('15121', '19', '15120', '市区', '市区', '5');
INSERT INTO `tb_opt` VALUES ('15122', '19', '15120', '九龙', '九龙', '10');
INSERT INTO `tb_opt` VALUES ('15123', '19', '15120', '新界', '新界', '15');
INSERT INTO `tb_opt` VALUES ('15124', '19', '15120', '中环', '中环', '20');
INSERT INTO `tb_opt` VALUES ('15125', '19', '15120', '铜锣湾', '铜锣湾', '25');
INSERT INTO `tb_opt` VALUES ('15126', '19', '0', '澳门特别行政区', '澳门特别行政区', '170');
INSERT INTO `tb_opt` VALUES ('15127', '19', '15126', '市区内', '市区内', '5');
INSERT INTO `tb_opt` VALUES ('15128', '1', '0', '女', '2', '20');
INSERT INTO `tb_opt` VALUES ('15129', '13', '0', '一分钟', '60', '5');
INSERT INTO `tb_opt` VALUES ('15130', '13', '0', '十分钟', '600', '30');
INSERT INTO `tb_opt` VALUES ('15131', '13', '0', '三十分钟', '1800', '40');
INSERT INTO `tb_opt` VALUES ('15132', '20', '0', 'QQ客服', 'qq', '10');
INSERT INTO `tb_opt` VALUES ('15133', '20', '0', '微信客服', 'weixin', '20');
INSERT INTO `tb_opt` VALUES ('15134', '21', '0', 'vue', 'vue', '10');
INSERT INTO `tb_opt` VALUES ('15135', '21', '0', 'node', 'node', '20');
INSERT INTO `tb_opt` VALUES ('15136', '21', '0', 'express', 'express', '30');
INSERT INTO `tb_opt` VALUES ('15137', '21', '0', 'uni-app', 'uni-app', '40');
INSERT INTO `tb_opt` VALUES ('15138', '21', '0', 'java', 'java', '50');
INSERT INTO `tb_opt` VALUES ('15139', '22', '0', '是', '1', '10');
INSERT INTO `tb_opt` VALUES ('15140', '22', '0', '否', '0', '20');

-- ----------------------------
-- Table structure for tb_opt_group
-- ----------------------------
DROP TABLE IF EXISTS `tb_opt_group`;
CREATE TABLE `tb_opt_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID ',
  `title` varchar(100) NOT NULL COMMENT '名称，用于后台管理',
  `link_symbol` varchar(10) NOT NULL COMMENT '连接字符，未设置使用英文竖线',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='可选菜单管理器';

-- ----------------------------
-- Records of tb_opt_group
-- ----------------------------
INSERT INTO `tb_opt_group` VALUES ('1', '性别', '');
INSERT INTO `tb_opt_group` VALUES ('4', '是与否', '');
INSERT INTO `tb_opt_group` VALUES ('6', '窗口打开方式', '');
INSERT INTO `tb_opt_group` VALUES ('7', '注册', '');
INSERT INTO `tb_opt_group` VALUES ('8', '邮件编码', '');
INSERT INTO `tb_opt_group` VALUES ('12', '置顶属性', '');
INSERT INTO `tb_opt_group` VALUES ('13', '等候时间', '');
INSERT INTO `tb_opt_group` VALUES ('14', '微信菜单类型', '');
INSERT INTO `tb_opt_group` VALUES ('19', '中国省市县信息', '|');
INSERT INTO `tb_opt_group` VALUES ('20', '客服类型', '');
INSERT INTO `tb_opt_group` VALUES ('21', '博客标签', '/');
INSERT INTO `tb_opt_group` VALUES ('22', '是否通过', '/');

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID号',
  `sn` varchar(255) NOT NULL COMMENT '订单编号，唯一值',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID号，为0表示游客',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `price` decimal(10,4) NOT NULL DEFAULT '0.0000' COMMENT '金额',
  `currency_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '货币类型',
  `currency_rate` decimal(13,8) unsigned NOT NULL DEFAULT '1.00000000' COMMENT '货币汇率',
  `status` varchar(255) NOT NULL COMMENT '订单的最后状态',
  `status_title` varchar(255) NOT NULL COMMENT '订单状态说明',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '结束时间',
  `passwd` varchar(255) NOT NULL COMMENT '密码串',
  `ext` text NOT NULL COMMENT '扩展内容信息，可用于存储一些扩展信息',
  `note` text NOT NULL COMMENT '摘要',
  `email` varchar(255) NOT NULL COMMENT '邮箱，用于接收通知',
  `mobile` varchar(50) NOT NULL COMMENT '手机号，用于短信发送',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ordersn` (`sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单中心';

-- ----------------------------
-- Records of tb_order
-- ----------------------------

-- ----------------------------
-- Table structure for tb_order_address
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_address`;
CREATE TABLE `tb_order_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单ID',
  `country` varchar(255) NOT NULL DEFAULT '中国' COMMENT '国家',
  `country_code` varchar(255) NOT NULL COMMENT '国家代码',
  `province` varchar(255) NOT NULL COMMENT '省信息',
  `city` varchar(255) NOT NULL COMMENT '市',
  `county` varchar(255) NOT NULL COMMENT '县',
  `address` varchar(255) NOT NULL COMMENT '地址信息（不含国家，省市县镇区信息）',
  `address2` varchar(255) NOT NULL COMMENT '第二行地址，适用于第一行地址太多补全',
  `mobile` varchar(100) NOT NULL COMMENT '手机号码',
  `tel` varchar(100) NOT NULL COMMENT '电话号码',
  `email` varchar(100) NOT NULL COMMENT '邮箱',
  `fullname` varchar(100) NOT NULL COMMENT '联系人姓名',
  `firstname` varchar(255) NOT NULL COMMENT '名字',
  `lastname` varchar(255) NOT NULL COMMENT '姓氏',
  `zipcode` varchar(50) NOT NULL COMMENT '邮编',
  `type` varchar(255) NOT NULL DEFAULT 'shipping' COMMENT '地址类型，shipping表示收货地址，billing表示账单地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单地址库';

-- ----------------------------
-- Records of tb_order_address
-- ----------------------------

-- ----------------------------
-- Table structure for tb_order_express
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_express`;
CREATE TABLE `tb_order_express` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单ID号',
  `express_id` int(11) NOT NULL DEFAULT '0' COMMENT '物流ID号',
  `code` varchar(255) NOT NULL COMMENT '物流查询编码，可用于查询快递进度',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登记时间',
  `last_query_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后一次检索时间',
  `title` varchar(255) NOT NULL COMMENT '快递名称',
  `homepage` varchar(255) NOT NULL COMMENT '快递官网',
  `company` varchar(255) NOT NULL COMMENT '快递的公司全称',
  `is_end` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未结束1已结束',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单中涉及到的物流分配';

-- ----------------------------
-- Records of tb_order_express
-- ----------------------------

-- ----------------------------
-- Table structure for tb_order_invoice
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_invoice`;
CREATE TABLE `tb_order_invoice` (
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单ID号',
  `type` varchar(100) NOT NULL COMMENT '发票类型',
  `title` varchar(255) NOT NULL COMMENT '发票抬头',
  `content` text NOT NULL COMMENT '发票内容',
  `note` text NOT NULL COMMENT '发票的备注信息',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单发票';

-- ----------------------------
-- Records of tb_order_invoice
-- ----------------------------

-- ----------------------------
-- Table structure for tb_order_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_log`;
CREATE TABLE `tb_order_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单ID',
  `order_express_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '定单中的物流ID',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  `who` varchar(255) NOT NULL COMMENT '操作人名称（可以是公司名称，也可以是用户名，可以是物流等）',
  `note` text NOT NULL COMMENT '操作内容',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单日志，用于了解当前的订单处理进度';

-- ----------------------------
-- Records of tb_order_log
-- ----------------------------

-- ----------------------------
-- Table structure for tb_order_payment
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_payment`;
CREATE TABLE `tb_order_payment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单ID',
  `payment_id` varchar(255) NOT NULL DEFAULT '0' COMMENT '支付方式ID，数字表示网上业务支付，字母为财富支付',
  `title` varchar(255) NOT NULL COMMENT '支付方式名称',
  `price` decimal(10,4) NOT NULL DEFAULT '0.0000' COMMENT '支付金额',
  `currency_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '货币ID，为0使用订单默认货币',
  `currency_rate` decimal(13,8) unsigned NOT NULL DEFAULT '0.00000000' COMMENT '货币汇率',
  `startdate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '开始支付操作',
  `dateline` int(11) NOT NULL DEFAULT '0' COMMENT '支付时间',
  `ext` text NOT NULL COMMENT '其他常用扩展信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单支付';

-- ----------------------------
-- Records of tb_order_payment
-- ----------------------------

-- ----------------------------
-- Table structure for tb_order_price
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_price`;
CREATE TABLE `tb_order_price` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID号',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单ID号',
  `code` varchar(255) NOT NULL COMMENT '编码',
  `price` decimal(10,4) NOT NULL DEFAULT '0.0000' COMMENT '金额，-号表示优惠',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单金额明细清单';

-- ----------------------------
-- Records of tb_order_price
-- ----------------------------

-- ----------------------------
-- Table structure for tb_order_product
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_product`;
CREATE TABLE `tb_order_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID号',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单ID号',
  `tid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '主题ID',
  `title` varchar(255) NOT NULL COMMENT '产品名称',
  `price` decimal(10,4) NOT NULL DEFAULT '0.0000' COMMENT '产品单价',
  `qty` int(11) NOT NULL DEFAULT '0' COMMENT '产品数量',
  `thumb` varchar(255) NOT NULL COMMENT '产品图片地址',
  `ext` text NOT NULL COMMENT '产品扩展属性',
  `weight` varchar(50) NOT NULL COMMENT '重量',
  `volume` varchar(50) NOT NULL COMMENT '体积',
  `unit` varchar(50) NOT NULL COMMENT '单位',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `is_virtual` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0实物1虚拟或服务',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单的产品信息';

-- ----------------------------
-- Records of tb_order_product
-- ----------------------------

-- ----------------------------
-- Table structure for tb_payment
-- ----------------------------
DROP TABLE IF EXISTS `tb_payment`;
CREATE TABLE `tb_payment` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID号',
  `gid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '付款组',
  `code` varchar(100) NOT NULL COMMENT '标识ID',
  `title` varchar(255) NOT NULL COMMENT '主题',
  `currency` varchar(30) NOT NULL COMMENT '可使用的货币ID',
  `logo1` varchar(255) NOT NULL COMMENT 'LOGO小图',
  `logo2` varchar(255) NOT NULL COMMENT 'LOGO中图',
  `logo3` varchar(255) NOT NULL COMMENT 'LOGO大图',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态0未使用1正在使用中',
  `taxis` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序，值越小越往前靠',
  `note` text NOT NULL COMMENT '付款注意事项说明',
  `param` text NOT NULL COMMENT '参数',
  `wap` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0PC端1手机端',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='支付方案';

-- ----------------------------
-- Records of tb_payment
-- ----------------------------
INSERT INTO `tb_payment` VALUES ('15', '1', 'alipay', '支付宝', 'CNY', '', '', '', '1', '10', '', 'a:5:{s:3:\"pid\";s:16:\"2088802450390810\";s:3:\"key\";s:5:\"*****\";s:5:\"email\";s:15:\"admin@phpok.com\";s:7:\"envtype\";s:7:\"product\";s:5:\"ptype\";s:25:\"create_direct_pay_by_user\";}', '0');
INSERT INTO `tb_payment` VALUES ('19', '1', 'wxpay', '微信支付', 'CNY', '', '', '', '1', '20', '', 'a:11:{s:6:\"mch_id\";s:10:\"1283067101\";s:7:\"app_key\";s:6:\"******\";s:5:\"appid\";s:18:\"wxd61676fe9d7468ed\";s:10:\"app_secret\";s:32:\"5239321d1305a4786f23cd106f5ab479\";s:11:\"device_info\";s:3:\"WEB\";s:10:\"trade_type\";s:6:\"native\";s:8:\"pem_cert\";s:0:\"\";s:7:\"pem_key\";s:0:\"\";s:6:\"pem_ca\";s:0:\"\";s:10:\"proxy_host\";s:7:\"0.0.0.0\";s:10:\"proxy_port\";s:0:\"\";}', '0');
INSERT INTO `tb_payment` VALUES ('42', '1', 'allinpay', '通华收银', 'CNY', '', '', '', '1', '255', '', 'a:8:{s:6:\"mch_no\";s:15:\"852999958120001\";s:11:\"access_code\";s:10:\"2012345678\";s:11:\"private_key\";s:24:\"pem/f83d1a19f0dcd1bc.pem\";s:10:\"public_key\";s:24:\"pem/03f3ac877530b921.pem\";s:5:\"utype\";s:12:\"alipay_pcweb\";s:8:\"wx_appid\";s:0:\"\";s:11:\"institution\";s:8:\"alipayhk\";s:3:\"env\";s:4:\"demo\";}', '0');
INSERT INTO `tb_payment` VALUES ('40', '10', 'alipay', '支付宝', 'CNY', '', '', '', '1', '255', '', 'a:5:{s:3:\"pid\";s:16:\"2088802450390810\";s:3:\"key\";s:5:\"*****\";s:5:\"email\";s:15:\"admin@phpok.com\";s:7:\"envtype\";s:7:\"product\";s:5:\"ptype\";s:25:\"create_direct_pay_by_user\";}', '1');

-- ----------------------------
-- Table structure for tb_payment_group
-- ----------------------------
DROP TABLE IF EXISTS `tb_payment_group`;
CREATE TABLE `tb_payment_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `site_id` int(11) NOT NULL DEFAULT '0' COMMENT '站点ID，为0表示全部',
  `title` varchar(255) NOT NULL COMMENT '付款组名称',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0不启用1启用',
  `taxis` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序，值越小越往前靠',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1默认组0普通组',
  `is_wap` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0是PC端，1是手机端',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='付款组管理';

-- ----------------------------
-- Records of tb_payment_group
-- ----------------------------
INSERT INTO `tb_payment_group` VALUES ('1', '1', '快捷支付', '1', '10', '0', '0');
INSERT INTO `tb_payment_group` VALUES ('10', '1', '快捷支付', '1', '20', '0', '1');

-- ----------------------------
-- Table structure for tb_payment_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_payment_log`;
CREATE TABLE `tb_payment_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `sn` varchar(255) NOT NULL COMMENT '支付编号',
  `type` varchar(100) NOT NULL COMMENT 'order订单,recharge充值other其他',
  `payment_id` varchar(255) NOT NULL DEFAULT '0' COMMENT '支付方式，为数字时表示payment表中的主要支付方式，为字母数字混合表示财富付款',
  `title` varchar(255) NOT NULL COMMENT '主题',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '记录时间',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '价格',
  `currency_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '货币ID',
  `currency_rate` decimal(13,8) unsigned NOT NULL DEFAULT '0.00000000' COMMENT '货币汇率',
  `content` varchar(255) NOT NULL COMMENT '内容',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未支付成功1已支付成功',
  `ext` text NOT NULL COMMENT '扩展',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付日志';

-- ----------------------------
-- Records of tb_payment_log
-- ----------------------------

-- ----------------------------
-- Table structure for tb_phpok
-- ----------------------------
DROP TABLE IF EXISTS `tb_phpok`;
CREATE TABLE `tb_phpok` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID号',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '项目ID',
  `type_id` varchar(255) NOT NULL COMMENT '调用类型',
  `identifier` varchar(100) NOT NULL COMMENT '标识串，同一个站点中只能唯一',
  `site_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '站点ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `cateid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `ext` text NOT NULL COMMENT '扩展属性',
  `is_api` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0不支持API调用，1支持',
  `sqlinfo` text NOT NULL COMMENT 'SQL语句',
  PRIMARY KEY (`id`),
  UNIQUE KEY `identifier` (`identifier`,`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='数据调用中心';

-- ----------------------------
-- Records of tb_phpok
-- ----------------------------

-- ----------------------------
-- Table structure for tb_plugins
-- ----------------------------
DROP TABLE IF EXISTS `tb_plugins`;
CREATE TABLE `tb_plugins` (
  `id` varchar(100) NOT NULL COMMENT '插件ID，仅限字母，数字及下划线',
  `title` varchar(255) NOT NULL COMMENT '插件名称',
  `author` varchar(255) NOT NULL COMMENT '开发者',
  `version` varchar(50) NOT NULL COMMENT '插件版本号',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0禁用1使用',
  `taxis` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '值越小越往前靠',
  `note` varchar(255) NOT NULL COMMENT '摘要说明',
  `param` text NOT NULL COMMENT '参数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='插件管理器';

-- ----------------------------
-- Records of tb_plugins
-- ----------------------------

-- ----------------------------
-- Table structure for tb_popedom
-- ----------------------------
DROP TABLE IF EXISTS `tb_popedom`;
CREATE TABLE `tb_popedom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '权限ID，即自增ID',
  `gid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '所属组ID，对应sysmenu表中的ID',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '项目ID，仅在list中有效',
  `title` varchar(255) NOT NULL COMMENT '名称，如：添加，修改等',
  `identifier` varchar(255) NOT NULL COMMENT '字符串，如add，modify等',
  `taxis` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=1829 DEFAULT CHARSET=utf8 COMMENT='权限明细';

-- ----------------------------
-- Records of tb_popedom
-- ----------------------------
INSERT INTO `tb_popedom` VALUES ('2', '19', '0', '配置全局', 'gset', '10');
INSERT INTO `tb_popedom` VALUES ('3', '19', '0', '内容', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('4', '29', '0', '添加', 'add', '10');
INSERT INTO `tb_popedom` VALUES ('5', '29', '0', '修改', 'modify', '20');
INSERT INTO `tb_popedom` VALUES ('6', '29', '0', '删除', 'delete', '30');
INSERT INTO `tb_popedom` VALUES ('7', '18', '0', '添加', 'add', '10');
INSERT INTO `tb_popedom` VALUES ('8', '18', '0', '编辑', 'modify', '20');
INSERT INTO `tb_popedom` VALUES ('9', '18', '0', '删除', 'delete', '30');
INSERT INTO `tb_popedom` VALUES ('10', '23', '0', '添加', 'add', '10');
INSERT INTO `tb_popedom` VALUES ('11', '23', '0', '编辑', 'modify', '20');
INSERT INTO `tb_popedom` VALUES ('12', '23', '0', '删除', 'delete', '30');
INSERT INTO `tb_popedom` VALUES ('14', '22', '0', 'GD配置', 'gd', '10');
INSERT INTO `tb_popedom` VALUES ('15', '22', '0', '附件分类维护', 'cate', '20');
INSERT INTO `tb_popedom` VALUES ('16', '22', '0', '批处理', 'pl', '30');
INSERT INTO `tb_popedom` VALUES ('17', '16', '0', '配置', 'config', '10');
INSERT INTO `tb_popedom` VALUES ('18', '16', '0', '安装', 'install', '20');
INSERT INTO `tb_popedom` VALUES ('19', '16', '0', '卸载', 'uninstall', '30');
INSERT INTO `tb_popedom` VALUES ('20', '16', '0', '删除', 'delete', '40');
INSERT INTO `tb_popedom` VALUES ('21', '17', '0', '添加', 'add', '20');
INSERT INTO `tb_popedom` VALUES ('22', '13', '0', '添加', 'add', '10');
INSERT INTO `tb_popedom` VALUES ('23', '13', '0', '修改', 'modify', '20');
INSERT INTO `tb_popedom` VALUES ('24', '13', '0', '删除', 'delete', '30');
INSERT INTO `tb_popedom` VALUES ('25', '13', '0', '查看', 'list', '5');
INSERT INTO `tb_popedom` VALUES ('26', '19', '0', '查看', 'list', '5');
INSERT INTO `tb_popedom` VALUES ('33', '21', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('34', '21', '0', '添加', 'add', '20');
INSERT INTO `tb_popedom` VALUES ('35', '21', '0', '编辑', 'modify', '30');
INSERT INTO `tb_popedom` VALUES ('36', '21', '0', '删除', 'delete', '40');
INSERT INTO `tb_popedom` VALUES ('37', '18', '0', '查看', 'list', '5');
INSERT INTO `tb_popedom` VALUES ('38', '23', '0', '查看', 'list', '5');
INSERT INTO `tb_popedom` VALUES ('40', '16', '0', '查看', 'list', '5');
INSERT INTO `tb_popedom` VALUES ('41', '17', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('42', '18', '0', '扩展', 'ext', '40');
INSERT INTO `tb_popedom` VALUES ('43', '19', '0', '扩展', 'ext', '30');
INSERT INTO `tb_popedom` VALUES ('44', '14', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('45', '14', '0', '添加', 'add', '20');
INSERT INTO `tb_popedom` VALUES ('46', '14', '0', '修改', 'modify', '30');
INSERT INTO `tb_popedom` VALUES ('47', '14', '0', '删除', 'delete', '40');
INSERT INTO `tb_popedom` VALUES ('48', '25', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('49', '25', '0', '配置', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('52', '29', '0', '查看', 'list', '5');
INSERT INTO `tb_popedom` VALUES ('53', '27', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('54', '27', '0', '配置', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('58', '8', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('59', '8', '0', '维护', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('63', '6', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('64', '6', '0', '维护', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('67', '7', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('68', '7', '0', '添加', 'add', '20');
INSERT INTO `tb_popedom` VALUES ('69', '7', '0', '修改', 'modify', '30');
INSERT INTO `tb_popedom` VALUES ('70', '7', '0', '删除', 'delete', '40');
INSERT INTO `tb_popedom` VALUES ('71', '28', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('72', '28', '0', '添加', 'add', '20');
INSERT INTO `tb_popedom` VALUES ('73', '28', '0', '修改', 'modify', '30');
INSERT INTO `tb_popedom` VALUES ('74', '28', '0', '删除', 'delete', '40');
INSERT INTO `tb_popedom` VALUES ('75', '9', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('76', '9', '0', '添加', 'add', '20');
INSERT INTO `tb_popedom` VALUES ('77', '9', '0', '修改', 'modify', '30');
INSERT INTO `tb_popedom` VALUES ('78', '9', '0', '启用/禁用', 'status', '40');
INSERT INTO `tb_popedom` VALUES ('79', '29', '0', '启用/禁用', 'status', '40');
INSERT INTO `tb_popedom` VALUES ('80', '14', '0', '启用/禁用', 'status', '50');
INSERT INTO `tb_popedom` VALUES ('81', '19', '0', '网站', 'site', '40');
INSERT INTO `tb_popedom` VALUES ('82', '19', '0', '域名', 'domain', '50');
INSERT INTO `tb_popedom` VALUES ('83', '16', '0', '启用/禁用', 'status', '50');
INSERT INTO `tb_popedom` VALUES ('133', '30', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('134', '30', '0', '设置', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('135', '30', '0', '文件管理', 'filelist', '30');
INSERT INTO `tb_popedom` VALUES ('136', '30', '0', '删除', 'delete', '40');
INSERT INTO `tb_popedom` VALUES ('142', '13', '0', '审核', 'status', '40');
INSERT INTO `tb_popedom` VALUES ('143', '20', '41', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('144', '20', '41', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('145', '20', '41', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('146', '20', '41', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('147', '20', '41', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('153', '20', '43', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('154', '20', '43', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('155', '20', '43', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('156', '20', '43', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('157', '20', '43', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('159', '31', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('160', '31', '0', '删除', 'delete', '20');
INSERT INTO `tb_popedom` VALUES ('161', '31', '0', '设为默认', 'default', '30');
INSERT INTO `tb_popedom` VALUES ('162', '31', '0', '添加站点', 'add', '40');
INSERT INTO `tb_popedom` VALUES ('165', '20', '45', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('166', '20', '45', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('167', '20', '45', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('168', '20', '45', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('169', '20', '45', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('170', '19', '0', '添加站点', 'add', '60');
INSERT INTO `tb_popedom` VALUES ('344', '32', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('345', '32', '0', '启用/禁用', 'status', '20');
INSERT INTO `tb_popedom` VALUES ('346', '32', '0', '删除', 'delete', '30');
INSERT INTO `tb_popedom` VALUES ('347', '32', '0', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('348', '32', '0', '回复', 'reply', '50');
INSERT INTO `tb_popedom` VALUES ('349', '20', '87', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('350', '20', '87', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('351', '20', '87', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('352', '20', '87', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('353', '20', '87', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('388', '20', '96', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('389', '20', '96', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('390', '20', '96', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('391', '20', '96', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('392', '20', '96', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('476', '33', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('477', '33', '0', '添加', 'add', '20');
INSERT INTO `tb_popedom` VALUES ('478', '33', '0', '修改', 'modify', '30');
INSERT INTO `tb_popedom` VALUES ('479', '33', '0', '删除', 'delete', '40');
INSERT INTO `tb_popedom` VALUES ('480', '33', '0', '启用/禁用', 'status', '50');
INSERT INTO `tb_popedom` VALUES ('601', '34', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('602', '34', '0', '添加', 'add', '20');
INSERT INTO `tb_popedom` VALUES ('603', '34', '0', '修改', 'modify', '30');
INSERT INTO `tb_popedom` VALUES ('604', '34', '0', '审核', 'status', '40');
INSERT INTO `tb_popedom` VALUES ('605', '34', '0', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1434', '98', '0', '设置', 'setting', '10');
INSERT INTO `tb_popedom` VALUES ('612', '20', '144', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('613', '20', '144', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('614', '20', '144', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('615', '20', '144', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('616', '20', '144', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('617', '42', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('618', '42', '0', '执行', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('619', '43', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('620', '44', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('621', '45', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('622', '45', '0', '升级', 'update', '20');
INSERT INTO `tb_popedom` VALUES ('623', '45', '0', '配置升级服务器', 'set', '30');
INSERT INTO `tb_popedom` VALUES ('624', '46', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('625', '9', '0', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('626', '52', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('627', '52', '0', '添加组', 'groupadd', '20');
INSERT INTO `tb_popedom` VALUES ('628', '52', '0', '修改组', 'groupedit', '30');
INSERT INTO `tb_popedom` VALUES ('629', '52', '0', '删除组', 'groupdelete', '40');
INSERT INTO `tb_popedom` VALUES ('630', '52', '0', '添加', 'add', '50');
INSERT INTO `tb_popedom` VALUES ('631', '52', '0', '修改', 'edit', '60');
INSERT INTO `tb_popedom` VALUES ('632', '52', '0', '删除', 'delete', '70');
INSERT INTO `tb_popedom` VALUES ('633', '52', '0', '启用/禁用', 'status', '80');
INSERT INTO `tb_popedom` VALUES ('634', '52', '0', '组启用/禁用', 'groupstatus', '35');
INSERT INTO `tb_popedom` VALUES ('635', '54', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('636', '54', '0', '添加', 'add', '20');
INSERT INTO `tb_popedom` VALUES ('637', '54', '0', '修改', 'modify', '30');
INSERT INTO `tb_popedom` VALUES ('638', '54', '0', '删除', 'delete', '40');
INSERT INTO `tb_popedom` VALUES ('639', '54', '0', '审核', 'status', '50');
INSERT INTO `tb_popedom` VALUES ('640', '54', '0', '排序', 'taxis', '60');
INSERT INTO `tb_popedom` VALUES ('647', '55', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('648', '55', '0', '更新HTML', 'create', '20');
INSERT INTO `tb_popedom` VALUES ('657', '20', '148', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('658', '20', '148', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('659', '20', '148', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('660', '20', '148', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('661', '20', '148', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('662', '20', '148', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('669', '20', '150', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('670', '20', '150', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('671', '20', '151', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('672', '20', '151', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('673', '20', '151', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('674', '20', '151', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('675', '20', '151', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('676', '20', '151', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('677', '20', '152', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('678', '20', '152', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('679', '20', '152', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('680', '20', '152', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('681', '20', '152', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('682', '20', '152', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('689', '20', '144', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('690', '57', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('691', '57', '0', '创建备份', 'create', '20');
INSERT INTO `tb_popedom` VALUES ('692', '57', '0', '删除备份', 'delete', '30');
INSERT INTO `tb_popedom` VALUES ('693', '57', '0', '恢复备份', 'recover', '40');
INSERT INTO `tb_popedom` VALUES ('694', '57', '0', '优化', 'optimize', '50');
INSERT INTO `tb_popedom` VALUES ('695', '57', '0', '修复', 'repair', '60');
INSERT INTO `tb_popedom` VALUES ('696', '58', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('697', '58', '0', '添加', 'add', '20');
INSERT INTO `tb_popedom` VALUES ('698', '58', '0', '修改', 'modify', '30');
INSERT INTO `tb_popedom` VALUES ('699', '58', '0', '删除', 'delete', '40');
INSERT INTO `tb_popedom` VALUES ('700', '18', '0', '状态', 'status', '50');
INSERT INTO `tb_popedom` VALUES ('701', '59', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('702', '59', '0', '设置', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('703', '59', '0', '删除', 'delete', '30');
INSERT INTO `tb_popedom` VALUES ('704', '27', '0', '扩展', 'ext', '30');
INSERT INTO `tb_popedom` VALUES ('748', '62', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('749', '62', '0', '添加', 'add', '20');
INSERT INTO `tb_popedom` VALUES ('750', '62', '0', '编辑', 'modify', '30');
INSERT INTO `tb_popedom` VALUES ('751', '62', '0', '删除', 'delete', '40');
INSERT INTO `tb_popedom` VALUES ('752', '63', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('753', '63', '0', '添加', 'add', '20');
INSERT INTO `tb_popedom` VALUES ('754', '63', '0', '修改', 'modify', '30');
INSERT INTO `tb_popedom` VALUES ('755', '63', '0', '删除', 'delete', '40');
INSERT INTO `tb_popedom` VALUES ('757', '20', '43', '评论', 'comment', '80');
INSERT INTO `tb_popedom` VALUES ('758', '66', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('759', '66', '0', '添加', 'add', '20');
INSERT INTO `tb_popedom` VALUES ('760', '66', '0', '修改', 'modify', '30');
INSERT INTO `tb_popedom` VALUES ('761', '66', '0', '配置', 'setting', '40');
INSERT INTO `tb_popedom` VALUES ('762', '66', '0', '删除', 'delete', '60');
INSERT INTO `tb_popedom` VALUES ('763', '66', '0', '状态', 'status', '50');
INSERT INTO `tb_popedom` VALUES ('764', '67', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('765', '67', '0', '添加', 'add', '20');
INSERT INTO `tb_popedom` VALUES ('766', '67', '0', '修改', 'modify', '30');
INSERT INTO `tb_popedom` VALUES ('767', '67', '0', '删除', 'delete', '40');
INSERT INTO `tb_popedom` VALUES ('768', '68', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('769', '68', '0', '添加', 'add', '20');
INSERT INTO `tb_popedom` VALUES ('770', '68', '0', '修改', 'modify', '30');
INSERT INTO `tb_popedom` VALUES ('771', '68', '0', '删除', 'delete', '40');
INSERT INTO `tb_popedom` VALUES ('772', '77', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('773', '77', '0', '添加', 'add', '20');
INSERT INTO `tb_popedom` VALUES ('774', '77', '0', '修改', 'modify', '30');
INSERT INTO `tb_popedom` VALUES ('775', '77', '0', '删除', 'delete', '40');
INSERT INTO `tb_popedom` VALUES ('776', '77', '0', '状态', 'status', '50');
INSERT INTO `tb_popedom` VALUES ('777', '34', '0', '配置', 'set', '60');
INSERT INTO `tb_popedom` VALUES ('778', '31', '0', '订单配置', 'order', '50');
INSERT INTO `tb_popedom` VALUES ('779', '78', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('780', '78', '0', '添加', 'add', '20');
INSERT INTO `tb_popedom` VALUES ('781', '78', '0', '修改', 'modify', '30');
INSERT INTO `tb_popedom` VALUES ('782', '78', '0', '删除', 'delete', '40');
INSERT INTO `tb_popedom` VALUES ('783', '78', '0', '审核', 'status', '50');
INSERT INTO `tb_popedom` VALUES ('784', '78', '0', '设为默认', 'isdefault', '60');
INSERT INTO `tb_popedom` VALUES ('793', '80', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('794', '80', '0', '添加', 'add', '20');
INSERT INTO `tb_popedom` VALUES ('795', '80', '0', '修改', 'modify', '30');
INSERT INTO `tb_popedom` VALUES ('796', '80', '0', '删除', 'delete', '40');
INSERT INTO `tb_popedom` VALUES ('965', '20', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('966', '20', '0', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('967', '20', '0', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('968', '20', '0', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('969', '20', '0', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('970', '20', '0', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('971', '20', '0', '扩展', 'ext', '70');
INSERT INTO `tb_popedom` VALUES ('972', '20', '0', '评论', 'comment', '80');
INSERT INTO `tb_popedom` VALUES ('981', '20', '43', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('982', '20', '43', '扩展', 'ext', '70');
INSERT INTO `tb_popedom` VALUES ('983', '20', '311', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('984', '20', '311', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('985', '20', '311', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('986', '20', '311', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('987', '20', '311', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('988', '20', '312', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('989', '20', '312', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('990', '20', '312', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('991', '20', '312', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('992', '20', '312', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('993', '20', '313', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('994', '20', '313', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('995', '20', '313', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('996', '20', '313', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('997', '20', '313', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('998', '20', '313', '评论', 'comment', '80');
INSERT INTO `tb_popedom` VALUES ('999', '20', '313', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1000', '20', '313', '扩展', 'ext', '70');
INSERT INTO `tb_popedom` VALUES ('1001', '20', '314', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1002', '20', '314', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1003', '20', '314', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1004', '20', '314', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1005', '20', '314', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1006', '20', '315', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1007', '20', '315', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1008', '20', '315', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1009', '20', '315', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1010', '20', '315', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1011', '20', '316', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1012', '20', '316', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1013', '20', '317', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1014', '20', '317', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1015', '20', '318', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1016', '20', '318', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1017', '20', '319', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1018', '20', '319', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1019', '20', '320', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1020', '20', '320', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1021', '20', '320', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1022', '20', '320', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1023', '20', '320', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1024', '20', '320', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1025', '20', '321', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1026', '20', '321', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1027', '20', '321', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1028', '20', '321', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1029', '20', '321', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1030', '20', '322', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1031', '20', '322', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1032', '20', '322', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1033', '20', '322', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1034', '20', '322', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1035', '20', '322', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1036', '20', '323', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1037', '20', '323', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1038', '20', '323', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1039', '20', '323', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1040', '20', '323', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1041', '20', '323', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1042', '20', '324', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1043', '20', '324', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1044', '20', '324', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1045', '20', '324', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1046', '20', '324', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1047', '20', '324', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1048', '20', '325', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1049', '20', '325', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1050', '20', '325', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1051', '20', '325', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1052', '20', '325', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1053', '20', '325', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1054', '20', '326', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1055', '20', '326', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1056', '20', '327', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1057', '20', '327', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1058', '20', '328', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1059', '20', '328', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1060', '20', '328', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1061', '20', '328', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1062', '20', '328', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1063', '20', '328', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1064', '20', '329', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1065', '20', '329', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1066', '20', '329', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1067', '20', '329', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1068', '20', '329', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1069', '20', '330', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1070', '20', '330', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1071', '20', '330', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1072', '20', '330', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1073', '20', '330', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1074', '20', '331', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1075', '20', '331', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1076', '20', '331', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1077', '20', '331', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1078', '20', '331', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1079', '20', '331', '评论', 'comment', '80');
INSERT INTO `tb_popedom` VALUES ('1080', '20', '331', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1081', '20', '331', '扩展', 'ext', '70');
INSERT INTO `tb_popedom` VALUES ('1082', '20', '332', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1083', '20', '332', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1084', '20', '332', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1085', '20', '332', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1086', '20', '332', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1087', '20', '333', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1088', '20', '333', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1089', '20', '333', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1090', '20', '333', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1091', '20', '333', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1092', '20', '334', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1093', '20', '334', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1094', '20', '335', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1095', '20', '335', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1096', '20', '336', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1097', '20', '336', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1098', '20', '337', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1099', '20', '337', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1100', '20', '338', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1101', '20', '338', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1102', '20', '338', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1103', '20', '338', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1104', '20', '338', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1105', '20', '338', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1106', '20', '339', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1107', '20', '339', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1108', '20', '339', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1109', '20', '339', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1110', '20', '339', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1111', '20', '340', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1112', '20', '340', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1113', '20', '340', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1114', '20', '340', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1115', '20', '340', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1116', '20', '340', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1117', '20', '341', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1118', '20', '341', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1119', '20', '341', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1120', '20', '341', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1121', '20', '341', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1122', '20', '341', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1123', '20', '342', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1124', '20', '342', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1125', '20', '342', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1126', '20', '342', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1127', '20', '342', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1128', '20', '342', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1129', '20', '343', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1130', '20', '343', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1131', '20', '343', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1132', '20', '343', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1133', '20', '343', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1134', '20', '343', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1135', '20', '344', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1136', '20', '344', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1137', '20', '345', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1138', '20', '345', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1139', '20', '346', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1140', '20', '346', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1141', '20', '346', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1142', '20', '346', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1143', '20', '346', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1144', '20', '346', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1145', '20', '347', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1146', '20', '347', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1147', '20', '347', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1148', '20', '347', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1149', '20', '347', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1150', '20', '348', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1151', '20', '348', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1152', '20', '348', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1153', '20', '348', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1154', '20', '348', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1155', '20', '349', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1156', '20', '349', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1157', '20', '349', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1158', '20', '349', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1159', '20', '349', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1160', '20', '349', '评论', 'comment', '80');
INSERT INTO `tb_popedom` VALUES ('1161', '20', '349', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1162', '20', '349', '扩展', 'ext', '70');
INSERT INTO `tb_popedom` VALUES ('1163', '20', '350', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1164', '20', '350', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1165', '20', '350', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1166', '20', '350', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1167', '20', '350', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1168', '20', '351', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1169', '20', '351', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1170', '20', '351', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1171', '20', '351', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1172', '20', '351', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1173', '20', '352', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1174', '20', '352', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1175', '20', '353', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1176', '20', '353', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1177', '20', '354', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1178', '20', '354', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1179', '20', '355', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1180', '20', '355', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1181', '20', '356', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1182', '20', '356', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1183', '20', '356', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1184', '20', '356', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1185', '20', '356', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1186', '20', '356', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1187', '20', '357', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1188', '20', '357', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1189', '20', '357', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1190', '20', '357', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1191', '20', '357', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1192', '20', '358', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1193', '20', '358', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1194', '20', '358', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1195', '20', '358', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1196', '20', '358', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1197', '20', '358', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1198', '20', '359', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1199', '20', '359', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1200', '20', '359', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1201', '20', '359', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1202', '20', '359', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1203', '20', '359', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1204', '20', '360', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1205', '20', '360', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1206', '20', '360', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1207', '20', '360', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1208', '20', '360', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1209', '20', '360', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1210', '20', '361', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1211', '20', '361', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1212', '20', '361', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1213', '20', '361', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1214', '20', '361', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1215', '20', '361', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1216', '20', '362', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1217', '20', '362', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1218', '20', '363', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1219', '20', '363', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1220', '20', '364', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1221', '20', '364', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1222', '20', '364', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1223', '20', '364', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1224', '20', '364', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1225', '20', '364', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1307', '20', '87', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1308', '20', '87', '扩展', 'ext', '70');
INSERT INTO `tb_popedom` VALUES ('1309', '20', '87', '评论', 'comment', '80');
INSERT INTO `tb_popedom` VALUES ('1310', '20', '45', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1311', '20', '45', '扩展', 'ext', '70');
INSERT INTO `tb_popedom` VALUES ('1312', '20', '45', '评论', 'comment', '80');
INSERT INTO `tb_popedom` VALUES ('1345', '34', '0', '取消', 'cancel', '70');
INSERT INTO `tb_popedom` VALUES ('1346', '34', '0', '结束', 'stop', '80');
INSERT INTO `tb_popedom` VALUES ('1347', '34', '0', '完成', 'end', '90');
INSERT INTO `tb_popedom` VALUES ('1364', '88', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1365', '88', '0', '添加', 'add', '20');
INSERT INTO `tb_popedom` VALUES ('1366', '88', '0', '修改', 'modify', '30');
INSERT INTO `tb_popedom` VALUES ('1367', '88', '0', '删除', 'delete', '40');
INSERT INTO `tb_popedom` VALUES ('1400', '92', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1401', '92', '0', '生成', 'save', '20');
INSERT INTO `tb_popedom` VALUES ('1402', '92', '0', '删除', 'delete', '30');
INSERT INTO `tb_popedom` VALUES ('1403', '95', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1404', '95', '0', '安装', 'install', '20');
INSERT INTO `tb_popedom` VALUES ('1405', '95', '0', '卸载', 'uninstall', '30');
INSERT INTO `tb_popedom` VALUES ('1406', '95', '0', '配置', 'setting', '15');
INSERT INTO `tb_popedom` VALUES ('1407', '95', '0', '远程获取', 'remote', '40');
INSERT INTO `tb_popedom` VALUES ('1426', '20', '389', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1427', '20', '389', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1428', '20', '389', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1429', '20', '389', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1430', '20', '389', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1431', '20', '389', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1432', '20', '389', '扩展', 'ext', '70');
INSERT INTO `tb_popedom` VALUES ('1433', '20', '389', '评论', 'comment', '80');
INSERT INTO `tb_popedom` VALUES ('1435', '20', '390', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1436', '20', '390', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1437', '20', '390', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1438', '20', '390', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1439', '20', '390', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1440', '20', '390', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1441', '20', '390', '扩展', 'ext', '70');
INSERT INTO `tb_popedom` VALUES ('1442', '20', '390', '评论', 'comment', '80');
INSERT INTO `tb_popedom` VALUES ('1443', '20', '392', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1444', '20', '392', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1445', '20', '392', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1446', '20', '392', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1447', '20', '392', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1448', '20', '393', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1449', '20', '393', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1450', '20', '393', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1451', '20', '393', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1452', '20', '393', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1453', '20', '394', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1454', '20', '394', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1455', '20', '394', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1456', '20', '394', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1457', '20', '394', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1458', '20', '394', '评论', 'comment', '80');
INSERT INTO `tb_popedom` VALUES ('1459', '20', '394', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1460', '20', '394', '扩展', 'ext', '70');
INSERT INTO `tb_popedom` VALUES ('1461', '20', '395', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1462', '20', '395', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1463', '20', '395', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1464', '20', '395', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1465', '20', '395', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1466', '20', '395', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1467', '20', '395', '扩展', 'ext', '70');
INSERT INTO `tb_popedom` VALUES ('1468', '20', '395', '评论', 'comment', '80');
INSERT INTO `tb_popedom` VALUES ('1469', '20', '396', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1470', '20', '396', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1471', '20', '396', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1472', '20', '396', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1473', '20', '396', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1474', '20', '396', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1475', '20', '396', '扩展', 'ext', '70');
INSERT INTO `tb_popedom` VALUES ('1476', '20', '396', '评论', 'comment', '80');
INSERT INTO `tb_popedom` VALUES ('1477', '20', '397', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1478', '20', '397', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1479', '20', '397', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1480', '20', '397', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1481', '20', '397', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1482', '20', '398', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1483', '20', '398', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1484', '20', '398', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1485', '20', '398', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1486', '20', '398', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1487', '20', '398', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1488', '20', '399', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1489', '20', '399', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1490', '20', '399', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1491', '20', '399', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1492', '20', '399', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1493', '20', '399', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1494', '20', '400', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1495', '20', '400', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1496', '20', '400', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1497', '20', '400', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1498', '20', '400', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1499', '20', '400', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1500', '20', '401', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1501', '20', '401', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1502', '20', '402', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1503', '20', '402', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1504', '20', '402', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1505', '20', '402', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1506', '20', '402', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1507', '20', '402', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1508', '20', '403', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1509', '20', '403', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1510', '20', '403', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1511', '20', '403', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1512', '20', '403', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1513', '20', '403', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1514', '20', '404', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1515', '20', '404', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1516', '20', '404', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1517', '20', '404', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1518', '20', '404', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1519', '20', '404', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1520', '20', '404', '扩展', 'ext', '70');
INSERT INTO `tb_popedom` VALUES ('1521', '20', '404', '评论', 'comment', '80');
INSERT INTO `tb_popedom` VALUES ('1522', '20', '405', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1523', '20', '405', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1524', '20', '405', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1525', '20', '405', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1526', '20', '405', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1527', '20', '405', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1528', '20', '405', '扩展', 'ext', '70');
INSERT INTO `tb_popedom` VALUES ('1529', '20', '405', '评论', 'comment', '80');
INSERT INTO `tb_popedom` VALUES ('1530', '20', '406', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1531', '20', '406', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1532', '20', '406', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1533', '20', '406', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1534', '20', '406', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1535', '20', '406', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1536', '20', '406', '扩展', 'ext', '70');
INSERT INTO `tb_popedom` VALUES ('1537', '20', '406', '评论', 'comment', '80');
INSERT INTO `tb_popedom` VALUES ('1538', '20', '407', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1539', '20', '407', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1540', '20', '407', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1541', '20', '407', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1542', '20', '407', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1543', '20', '408', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1544', '20', '408', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1545', '20', '408', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1546', '20', '408', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1547', '20', '408', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1548', '20', '409', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1549', '20', '409', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1550', '20', '409', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1551', '20', '409', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1552', '20', '409', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1553', '20', '409', '评论', 'comment', '80');
INSERT INTO `tb_popedom` VALUES ('1554', '20', '409', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1555', '20', '409', '扩展', 'ext', '70');
INSERT INTO `tb_popedom` VALUES ('1556', '20', '410', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1557', '20', '410', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1558', '20', '410', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1559', '20', '410', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1560', '20', '410', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1561', '20', '410', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1562', '20', '410', '扩展', 'ext', '70');
INSERT INTO `tb_popedom` VALUES ('1563', '20', '410', '评论', 'comment', '80');
INSERT INTO `tb_popedom` VALUES ('1564', '20', '411', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1565', '20', '411', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1566', '20', '411', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1567', '20', '411', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1568', '20', '411', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1569', '20', '411', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1570', '20', '411', '扩展', 'ext', '70');
INSERT INTO `tb_popedom` VALUES ('1571', '20', '411', '评论', 'comment', '80');
INSERT INTO `tb_popedom` VALUES ('1572', '20', '412', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1573', '20', '412', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1574', '20', '412', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1575', '20', '412', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1576', '20', '412', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1577', '20', '413', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1578', '20', '413', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1579', '20', '413', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1580', '20', '413', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1581', '20', '413', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1582', '20', '413', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1583', '20', '414', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1584', '20', '414', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1585', '20', '414', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1586', '20', '414', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1587', '20', '414', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1588', '20', '414', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1589', '20', '415', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1590', '20', '415', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1591', '20', '415', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1592', '20', '415', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1593', '20', '415', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1594', '20', '415', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1595', '20', '416', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1596', '20', '416', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1597', '20', '417', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1598', '20', '417', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1599', '20', '417', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1600', '20', '417', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1601', '20', '417', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1602', '20', '417', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1603', '20', '418', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1604', '20', '418', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1605', '20', '418', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1606', '20', '418', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1607', '20', '418', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1608', '20', '418', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1609', '20', '419', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1610', '20', '419', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1611', '20', '419', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1612', '20', '419', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1613', '20', '419', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1614', '20', '419', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1615', '20', '419', '扩展', 'ext', '70');
INSERT INTO `tb_popedom` VALUES ('1616', '20', '419', '评论', 'comment', '80');
INSERT INTO `tb_popedom` VALUES ('1617', '20', '420', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1618', '20', '420', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1619', '20', '420', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1620', '20', '420', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1621', '20', '420', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1622', '20', '420', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1623', '20', '420', '扩展', 'ext', '70');
INSERT INTO `tb_popedom` VALUES ('1624', '20', '420', '评论', 'comment', '80');
INSERT INTO `tb_popedom` VALUES ('1625', '20', '421', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1626', '20', '421', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1627', '20', '421', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1628', '20', '421', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1629', '20', '421', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1630', '20', '421', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1631', '20', '421', '扩展', 'ext', '70');
INSERT INTO `tb_popedom` VALUES ('1632', '20', '421', '评论', 'comment', '80');
INSERT INTO `tb_popedom` VALUES ('1748', '95', '0', '文件查看', 'filelist', '50');
INSERT INTO `tb_popedom` VALUES ('1749', '95', '0', '文件编辑', 'fedit', '60');
INSERT INTO `tb_popedom` VALUES ('1756', '105', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1757', '105', '0', '添加', 'add', '20');
INSERT INTO `tb_popedom` VALUES ('1758', '105', '0', '编辑', 'edit', '30');
INSERT INTO `tb_popedom` VALUES ('1759', '105', '0', '上传', 'upload', '40');
INSERT INTO `tb_popedom` VALUES ('1760', '105', '0', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1761', '106', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1762', '106', '0', '删除', 'delete', '10');
INSERT INTO `tb_popedom` VALUES ('1771', '107', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1772', '107', '0', '设置', 'setting', '20');
INSERT INTO `tb_popedom` VALUES ('1773', '108', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1774', '108', '0', '添加', 'add', '20');
INSERT INTO `tb_popedom` VALUES ('1775', '108', '0', '修改', 'modify', '30');
INSERT INTO `tb_popedom` VALUES ('1776', '108', '0', '审核', 'status', '40');
INSERT INTO `tb_popedom` VALUES ('1777', '108', '0', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1778', '108', '0', '组管理', 'group', '60');
INSERT INTO `tb_popedom` VALUES ('1779', '109', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1780', '109', '0', '配置', 'setting', '20');
INSERT INTO `tb_popedom` VALUES ('1781', '109', '0', '检测', 'checking', '30');
INSERT INTO `tb_popedom` VALUES ('1782', '109', '0', '删除', 'delete', '40');
INSERT INTO `tb_popedom` VALUES ('1783', '20', '440', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1784', '20', '440', '编辑', 'set', '20');
INSERT INTO `tb_popedom` VALUES ('1785', '20', '440', '添加', 'add', '30');
INSERT INTO `tb_popedom` VALUES ('1786', '20', '440', '修改', 'modify', '40');
INSERT INTO `tb_popedom` VALUES ('1787', '20', '440', '删除', 'delete', '50');
INSERT INTO `tb_popedom` VALUES ('1788', '20', '440', '启用/禁用', 'status', '60');
INSERT INTO `tb_popedom` VALUES ('1789', '20', '440', '扩展', 'ext', '70');
INSERT INTO `tb_popedom` VALUES ('1790', '20', '440', '评论', 'comment', '80');
INSERT INTO `tb_popedom` VALUES ('1817', '113', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1818', '113', '0', '配置', 'setting', '10');
INSERT INTO `tb_popedom` VALUES ('1819', '114', '0', '查看', 'list', '10');
INSERT INTO `tb_popedom` VALUES ('1820', '114', '0', '删除', 'delete', '10');

-- ----------------------------
-- Table structure for tb_project
-- ----------------------------
DROP TABLE IF EXISTS `tb_project`;
CREATE TABLE `tb_project` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID，也是应用ID',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上一级ID',
  `site_id` mediumint(8) unsigned NOT NULL COMMENT '网站ID',
  `module` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '指定模型ID，为0表页面空白',
  `cate` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '绑定根分类ID',
  `title` varchar(255) NOT NULL COMMENT '名称',
  `nick_title` varchar(255) NOT NULL COMMENT '后台别称',
  `taxis` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序，值越小越往前靠',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0不使用1使用',
  `tpl_index` varchar(255) NOT NULL COMMENT '封面页',
  `tpl_list` varchar(255) NOT NULL COMMENT '列表页',
  `tpl_content` varchar(255) NOT NULL COMMENT '详细页',
  `is_identifier` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否自定义标识',
  `ico` varchar(255) NOT NULL COMMENT '图标',
  `orderby` text NOT NULL COMMENT '排序',
  `alias_title` varchar(255) NOT NULL COMMENT '主题别名',
  `alias_note` varchar(255) NOT NULL COMMENT '主题备注',
  `psize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0表示不限制，每页显示数量',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID号，为0表示管理员维护',
  `identifier` varchar(255) NOT NULL COMMENT '标识',
  `seo_title` varchar(255) NOT NULL COMMENT 'SEO标题',
  `seo_keywords` varchar(255) NOT NULL COMMENT 'SEO关键字',
  `seo_desc` varchar(255) NOT NULL COMMENT 'SEO描述',
  `subtopics` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否启用子主题功能',
  `is_search` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否支持搜索',
  `is_tag` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '必填Tag',
  `is_biz` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '0不启用电商，1启用电商',
  `is_userid` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否绑定会员',
  `is_tpl_content` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否自定义内容模板',
  `is_seo` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否默认使用seo',
  `currency_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '默认货币ID',
  `admin_note` text NOT NULL COMMENT '管理员备注，给编辑人员使用的',
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0显示1隐藏',
  `post_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '发布模式，0不启用1启用',
  `comment_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '启用评论功能',
  `post_tpl` varchar(255) NOT NULL COMMENT '发布页模板',
  `etpl_admin` varchar(255) NOT NULL COMMENT '通知管理员邮件模板',
  `etpl_user` varchar(255) NOT NULL COMMENT '发布邮件通知会员模板',
  `etpl_comment_admin` varchar(255) NOT NULL COMMENT '评论邮件通知管理员模板',
  `etpl_comment_user` varchar(255) NOT NULL COMMENT '评论邮件通知会员',
  `is_attr` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1启用主题属性0不启用',
  `tag` varchar(255) NOT NULL COMMENT '自身Tag设置',
  `cate_multiple` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0分类单选1分类支持多选',
  `biz_attr` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '产品属性，0不使用1使用',
  `freight` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '运费模板ID',
  `list_fields` varchar(255) NOT NULL COMMENT '列表读取长度，如为空读全部',
  `style` varchar(255) NOT NULL COMMENT 'CSS样式',
  `is_front` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否直接访问前台',
  `is_api` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '0接口不可访问，1可访问',
  `psize_api` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'API接口读取的数量',
  `limit_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间间隔限制，0表示不限制',
  `limit_similar` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '相似度值限制，0表示不限制',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `site_id` (`site_id`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='项目管理器';

-- ----------------------------
-- Records of tb_project
-- ----------------------------
INSERT INTO `tb_project` VALUES ('13', '0', '1', '3', '0', '留言板', '留言板', '40', '1', '', '', '', '0', 'images/ico/default.png', 'id DESC', '', '', '30', '0', 'wordsnews', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '', '', '', '', '0', '', '0', '0', '0', '', '', '0', '0', '10', '0', '0');
INSERT INTO `tb_project` VALUES ('12', '0', '1', '2', '0', '友情链接', '友情链接', '35', '1', '', '', '', '0', 'images/ico/link.png', 'id DESC', '', '', '30', '0', 'dfilename', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '', '', '', '', '0', '', '0', '0', '0', '', '', '0', '0', '10', '0', '0');
INSERT INTO `tb_project` VALUES ('6', '0', '1', '4', '0', '我的相册', '我的相册', '20', '1', '', '', '', '0', 'images/ico/pictures.png', 'id DESC', '', '', '30', '0', 'picture', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '', '', '', '', '0', '', '0', '0', '0', '', '', '0', '0', '10', '0', '0');
INSERT INTO `tb_project` VALUES ('7', '0', '1', '5', '0', ' 站点信息', ' 站点信息', '25', '1', '', '', '', '0', 'images/ico/forum.png', '', '', '', '30', '0', 'message', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '', '', '', '', '0', '', '0', '0', '0', '', '', '0', '0', '10', '0', '0');
INSERT INTO `tb_project` VALUES ('11', '0', '1', '1', '1', '博客管理', '博客管理', '30', '1', '', '', '', '0', 'images/ico/files.png', 'l.sort ASC,l.dateline DESC,l.id DESC', '', '', '30', '0', 'ssss', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '', '', '', '', '1', '', '0', '0', '0', '*', '', '0', '0', '10', '0', '0');

-- ----------------------------
-- Table structure for tb_reply
-- ----------------------------
DROP TABLE IF EXISTS `tb_reply`;
CREATE TABLE `tb_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `tid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '主题ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父回复ID',
  `vouch` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '推荐评论',
  `star` tinyint(1) NOT NULL DEFAULT '3' COMMENT '星级',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `ip` varchar(255) NOT NULL COMMENT '回复人IP',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0未审核1审核',
  `session_id` varchar(255) NOT NULL COMMENT '游客标识',
  `content` text NOT NULL COMMENT '评论内容',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `adm_content` longtext NOT NULL COMMENT '管理员回复内容',
  `adm_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回复时间',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0为评论，非零绑定订单ID',
  `res` varchar(255) NOT NULL COMMENT '附件ID，多个附件用英文逗号隔开',
  `vtype` varchar(255) NOT NULL DEFAULT 'title' COMMENT '主题类型，titlte表示列表中的主题，project表示项目，cate表示分类',
  `title` varchar(255) NOT NULL COMMENT '评论标题，留空从主题中读取',
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='主题评论表';

-- ----------------------------
-- Records of tb_reply
-- ----------------------------
INSERT INTO `tb_reply` VALUES ('25', '0', '24', '0', '3', '0', '49.234.185.136', '1596434407', '1', '', '<p>管理员的回复</p>', '1', '', '0', '0', '', 'title', '');
INSERT INTO `tb_reply` VALUES ('41', '0', '39', '0', '3', '0', '', '1596509554', '1', '', '<p>收到，谢谢支持</p>', '1', '', '0', '0', '', 'title', '');
INSERT INTO `tb_reply` VALUES ('40', '46', '39', '0', '3', '0', '36.5.154.8', '1596509516', '0', '', '回复自己也可以的', '0', '', '0', '0', '', 'title', '安徽省网友');
INSERT INTO `tb_reply` VALUES ('39', '46', '0', '0', '3', '0', '36.5.154.8', '1596509500', '0', '', '期待ing', '0', '', '0', '0', '', 'title', '安徽省网友');

-- ----------------------------
-- Table structure for tb_res
-- ----------------------------
DROP TABLE IF EXISTS `tb_res`;
CREATE TABLE `tb_res` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '资源ID',
  `cate_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `folder` varchar(255) NOT NULL COMMENT '存储目录',
  `name` varchar(255) NOT NULL COMMENT '资源文件名',
  `ext` varchar(30) NOT NULL COMMENT '资源后缀，如jpg等',
  `filename` varchar(255) NOT NULL COMMENT '文件名带路径',
  `ico` text NOT NULL COMMENT 'ICO图标文件',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `title` varchar(255) NOT NULL COMMENT '内容',
  `attr` text NOT NULL COMMENT '附件属性',
  `note` text NOT NULL COMMENT '备注',
  `session_id` varchar(100) NOT NULL COMMENT '操作者 ID，即会员ID用于检测是否有权限删除 ',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID，当该ID为时检则sesson_id，如不相同则不能删除 ',
  `download` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `mime_type` varchar(255) NOT NULL COMMENT '附件类型',
  PRIMARY KEY (`id`),
  KEY `ext` (`ext`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='资源ID';

-- ----------------------------
-- Records of tb_res
-- ----------------------------
INSERT INTO `tb_res` VALUES ('1', '1', 'res/202007/22/', 'fa049d5abc08dc62.png', 'png', 'res/202007/22/fa049d5abc08dc62.png', 'res/_cache/_ico/1/1.png', '1595400182', '20828f842579a0d921800a06a86318c', 'a:2:{s:5:\"width\";i:125;s:6:\"height\";i:117;}', '', '', '0', '0', '1', 'image/png');
INSERT INTO `tb_res` VALUES ('2', '1', 'res/202007/22/', '84ecb412f4ff577b.png', 'png', 'res/202007/22/84ecb412f4ff577b.png', 'res/_cache/_ico/2/2.png', '1595400235', '45986518', 'a:2:{s:5:\"width\";i:376;s:6:\"height\";i:376;}', '', '', '0', '0', '1', 'image/png');
INSERT INTO `tb_res` VALUES ('3', '1', 'res/202007/22/', '8b015ee71b690190.png', 'png', 'res/202007/22/8b015ee71b690190.png', 'res/_cache/_ico/3/3.png', '1595401087', '20828f842579a0d921800a06a86318c', 'a:2:{s:5:\"width\";i:125;s:6:\"height\";i:117;}', '', '', '0', '0', '1', 'image/png');
INSERT INTO `tb_res` VALUES ('4', '1', 'res/202007/22/', '22490f1cdd12a7fb.png', 'png', 'res/202007/22/22490f1cdd12a7fb.png', 'res/_cache/_ico/4/4.png', '1595405718', '20828f842579a0d921800a06a86318c', 'a:2:{s:5:\"width\";i:125;s:6:\"height\";i:117;}', '', '', '0', '0', '1', 'image/png');
INSERT INTO `tb_res` VALUES ('6', '1', 'res/202007/23/', '', 'png', 'res/202007/23/06d854330e809ef7.png', 'res/_cache/_ico/6/6.png', '1595498382', '20828f842579a0d921800a06a86318c', 'a:2:{s:5:\"width\";i:125;s:6:\"height\";i:117;}', '', 'g408t4vjhudkkpe4u5oebqo2o0', '0', '0', '0', 'image/png');
INSERT INTO `tb_res` VALUES ('7', '1', 'res/202007/23/', '', 'jpg', 'res/202007/23/50b016b059e8f045.jpg', 'res/_cache/_ico/7/7.jpg', '1595498572', 'Snipaste_2020-07-23_18-02-38', 'a:2:{s:5:\"width\";i:197;s:6:\"height\";i:159;}', '', 'g408t4vjhudkkpe4u5oebqo2o0', '0', '0', '0', 'image/jpeg');
INSERT INTO `tb_res` VALUES ('9', '1', 'res/202007/24/', '2aa6d2621befd3de.png', 'png', 'res/202007/24/2aa6d2621befd3de.png', 'res/_cache/_ico/9/9.png', '1595570833', '图片1', 'a:2:{s:5:\"width\";i:373;s:6:\"height\";i:371;}', '', '', '0', '0', '1', 'image/png');
INSERT INTO `tb_res` VALUES ('10', '1', 'res/202007/25/', '1ec3f0d3b77317ed.png', 'png', 'res/202007/25/1ec3f0d3b77317ed.png', 'res/_cache/_ico/10/10.png', '1595669660', 'image', 'a:2:{s:5:\"width\";i:306;s:6:\"height\";i:106;}', '', '', '0', '0', '1', '');
INSERT INTO `tb_res` VALUES ('11', '1', 'res/202007/28/', '6ca07f5bccb49c43.png', 'png', 'res/202007/28/6ca07f5bccb49c43.png', 'res/_cache/_ico/11/11.png', '1595913367', '20828f842579a0d921800a06a86318c', 'a:2:{s:5:\"width\";i:125;s:6:\"height\";i:117;}', '', '', '0', '0', '1', '');
INSERT INTO `tb_res` VALUES ('12', '1', 'res/202007/28/', '93a3a07b977bd074.png', 'png', 'res/202007/28/93a3a07b977bd074.png', 'res/_cache/_ico/12/12.png', '1595913368', '45986518', 'a:2:{s:5:\"width\";i:376;s:6:\"height\";i:376;}', '', '', '0', '0', '1', '');
INSERT INTO `tb_res` VALUES ('13', '1', 'res/202008/04/', '6a7f1799dd721dd6.jpg', 'jpg', 'res/202008/04/6a7f1799dd721dd6.jpg', 'res/_cache/_ico/13/13.jpg', '1596504036', 'wechat', 'a:2:{s:5:\"width\";i:400;s:6:\"height\";i:521;}', '', '', '0', '0', '1', 'image/jpeg');
INSERT INTO `tb_res` VALUES ('14', '1', 'res/202008/04/', 'bdc35ba954e10240.jpg', 'jpg', 'res/202008/04/bdc35ba954e10240.jpg', 'res/_cache/_ico/14/14.jpg', '1596504043', 'ali', 'a:2:{s:5:\"width\";i:400;s:6:\"height\";i:460;}', '', '', '0', '0', '1', 'image/jpeg');
INSERT INTO `tb_res` VALUES ('17', '1', 'res/202008/04/', '4e252cf2b84a88e4.jpg', 'jpg', 'res/202008/04/4e252cf2b84a88e4.jpg', 'res/_cache/_ico/17/17.jpg', '1596505385', 'ali', 'a:2:{s:5:\"width\";i:350;s:6:\"height\";i:350;}', '', '', '0', '0', '1', 'image/jpeg');
INSERT INTO `tb_res` VALUES ('16', '1', 'res/202008/04/', 'b4ba26b1f5d1065c.jpg', 'jpg', 'res/202008/04/b4ba26b1f5d1065c.jpg', 'res/_cache/_ico/16/16.jpg', '1596505378', 'wechat', 'a:2:{s:5:\"width\";i:350;s:6:\"height\";i:350;}', '', '', '0', '0', '1', 'image/jpeg');
INSERT INTO `tb_res` VALUES ('18', '1', 'res/202008/04/', 'aa56dc218ada1bbf.jpg', 'jpg', 'res/202008/04/aa56dc218ada1bbf.jpg', 'res/_cache/_ico/18/18.jpg', '1596506513', '59-1912101J31V', 'a:2:{s:5:\"width\";i:700;s:6:\"height\";i:465;}', '', '', '0', '0', '1', 'image/jpeg');
INSERT INTO `tb_res` VALUES ('19', '1', 'res/202008/04/', '65517ce35d41e783.jpg', 'jpg', 'res/202008/04/65517ce35d41e783.jpg', 'res/_cache/_ico/19/19.jpg', '1596506513', '59-191202214T21', 'a:2:{s:5:\"width\";i:700;s:6:\"height\";i:401;}', '', '', '0', '0', '1', 'image/jpeg');
INSERT INTO `tb_res` VALUES ('20', '1', 'res/202008/04/', '03000136c5a4fcbf.jpg', 'jpg', 'res/202008/04/03000136c5a4fcbf.jpg', 'res/_cache/_ico/20/20.jpg', '1596506514', '59-19120222042U', 'a:2:{s:5:\"width\";i:700;s:6:\"height\";i:470;}', '', '', '0', '0', '1', 'image/jpeg');
INSERT INTO `tb_res` VALUES ('21', '1', 'res/202008/04/', '46183822dc369ac2.jpg', 'jpg', 'res/202008/04/46183822dc369ac2.jpg', 'res/_cache/_ico/21/21.jpg', '1596506515', '149-20032314300R-2', 'a:2:{s:5:\"width\";i:680;s:6:\"height\";i:453;}', '', '', '0', '0', '1', 'image/jpeg');
INSERT INTO `tb_res` VALUES ('22', '1', 'res/202008/04/', '7100200bec0cd4f4.jpg', 'jpg', 'res/202008/04/7100200bec0cd4f4.jpg', 'res/_cache/_ico/22/22.jpg', '1596506515', '149-20032314300V-1', 'a:2:{s:5:\"width\";i:680;s:6:\"height\";i:510;}', '', '', '0', '0', '1', 'image/jpeg');
INSERT INTO `tb_res` VALUES ('23', '1', 'res/202008/04/', '91cd05043fddd308.jpg', 'jpg', 'res/202008/04/91cd05043fddd308.jpg', 'res/_cache/_ico/23/23.jpg', '1596508588', 'qq群', 'a:2:{s:5:\"width\";i:540;s:6:\"height\";i:740;}', '', '', '0', '0', '1', '');
INSERT INTO `tb_res` VALUES ('24', '1', 'res/202008/04/', '37a9a3fda9531e1c_26_0.jpg', 'jpg', 'res/202008/04/37a9a3fda9531e1c_26_0.jpg', 'res/_cache/_ico/24/24.jpg', '1596508929', '1Qi5Rk4jtZnevXTIl8MK', 'a:2:{s:5:\"width\";i:900;s:6:\"height\";i:420;}', '', '', '0', '0', '1', '');
INSERT INTO `tb_res` VALUES ('25', '1', 'res/202008/04/', 'c0200cff3e402fb5_2_0.png', 'png', 'res/202008/04/c0200cff3e402fb5_2_0.png', 'res/_cache/_ico/25/25.png', '1596509004', 'wz6HYe8yrr9gJPbHba9v', 'a:2:{s:5:\"width\";i:858;s:6:\"height\";i:516;}', '', '', '0', '0', '1', '');
INSERT INTO `tb_res` VALUES ('26', '1', 'res/202008/04/', '6c9cdf0eb68f0ad8_9_0.jpg', 'jpg', 'res/202008/04/6c9cdf0eb68f0ad8_9_0.jpg', 'res/_cache/_ico/26/26.jpg', '1596509088', 'PEOR6TKmCxgaLiB6NKa8', 'a:2:{s:5:\"width\";i:900;s:6:\"height\";i:420;}', '', '', '0', '0', '1', '');
INSERT INTO `tb_res` VALUES ('27', '1', 'res/202008/04/', '2995b73d58df1076_24_0.png', 'png', 'res/202008/04/2995b73d58df1076_24_0.png', 'res/_cache/_ico/27/27.png', '1596509165', 'kbZPGmqNafad4leKYIJz', 'a:2:{s:5:\"width\";i:1280;s:6:\"height\";i:720;}', '', '', '0', '0', '1', '');

-- ----------------------------
-- Table structure for tb_res_cate
-- ----------------------------
DROP TABLE IF EXISTS `tb_res_cate`;
CREATE TABLE `tb_res_cate` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '资源分类ID',
  `title` varchar(255) NOT NULL COMMENT '分类名称',
  `root` varchar(255) NOT NULL DEFAULT '/' COMMENT '存储目录',
  `folder` varchar(255) NOT NULL DEFAULT 'Ym/d/' COMMENT '存储目录格式',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1默认0非默认',
  `filetypes` varchar(255) NOT NULL COMMENT '附件类型',
  `typeinfo` varchar(200) NOT NULL COMMENT '类型说明',
  `gdtypes` varchar(255) NOT NULL COMMENT '支持的GD方案，多个GD方案用英文ID分开',
  `gdall` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1支持全部GD方案0仅支持指定的GD方案',
  `ico` tinyint(1) NOT NULL DEFAULT '0' COMMENT '后台缩略图',
  `filemax` int(10) unsigned NOT NULL DEFAULT '2' COMMENT '上传文件大小限制',
  `etype` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0本地存储，其他数据则调用不同的网关存储',
  `upload_binary` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0传统上传，1二进制上传',
  `compress` int(11) NOT NULL DEFAULT '0' COMMENT '0不压缩，大于0的数值表示宽高超过时就压缩到这个值内',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='资源分类存储';

-- ----------------------------
-- Records of tb_res_cate
-- ----------------------------
INSERT INTO `tb_res_cate` VALUES ('1', '图片', 'res/', 'Ym/d/', '1', 'png,jpg,gif,docx', '图片', '', '1', '1', '2000', '0', '0', '0');
INSERT INTO `tb_res_cate` VALUES ('11', '压缩软件', 'res/soft/', 'Y/', '0', 'rar,zip', '压缩包', '', '0', '0', '2000', '0', '0', '0');
INSERT INTO `tb_res_cate` VALUES ('20', 'Excel', 'res/excel/', '', '0', 'xls,xlsx', 'Excel文件', '', '1', '1', '2048', '0', '0', '0');
INSERT INTO `tb_res_cate` VALUES ('24', '视频', 'res/', 'Ym/d/', '0', 'mp4,mpeg,webp,avi,flv', '视频', '', '0', '0', '2048', '0', '0', '0');
INSERT INTO `tb_res_cate` VALUES ('29', '证书', 'res/pem/', '', '0', 'pem', '证书文件', '', '1', '1', '1024', '0', '0', '0');

-- ----------------------------
-- Table structure for tb_session
-- ----------------------------
DROP TABLE IF EXISTS `tb_session`;
CREATE TABLE `tb_session` (
  `id` varchar(32) NOT NULL COMMENT 'session_id',
  `data` varchar(20485) NOT NULL COMMENT 'session 内容，最多只能放20K',
  `lasttime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SESSION操作';

-- ----------------------------
-- Records of tb_session
-- ----------------------------

-- ----------------------------
-- Table structure for tb_site
-- ----------------------------
DROP TABLE IF EXISTS `tb_site`;
CREATE TABLE `tb_site` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '应用ID',
  `domain_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '默认域名ID',
  `title` varchar(255) NOT NULL COMMENT '网站名称',
  `dir` varchar(255) NOT NULL DEFAULT '/' COMMENT '安装目录，以/结尾',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `content` text NOT NULL COMMENT '网站关闭原因',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1默认站点',
  `tpl_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '模板ID',
  `url_type` enum('default','rewrite','html') NOT NULL DEFAULT 'default' COMMENT '默认，即带?等能数，rewrite是伪静态页，html为生成的静态页',
  `logo` varchar(255) NOT NULL COMMENT '网站 LOGO ',
  `meta` text NOT NULL COMMENT '扩展配置',
  `currency_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '默认货币ID',
  `register_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0关闭注册1开启注册',
  `register_close` varchar(255) NOT NULL COMMENT '关闭注册说明',
  `login_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0关闭登录1开启',
  `login_close` varchar(255) NOT NULL COMMENT '关闭登录说明',
  `adm_logo29` varchar(255) NOT NULL COMMENT '在后台左侧LOGO地址',
  `adm_logo180` varchar(255) NOT NULL COMMENT '登录LOGO地址',
  `lang` varchar(255) NOT NULL COMMENT '语言包',
  `api` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0不走接口',
  `api_code` varchar(255) NOT NULL COMMENT 'API验证串',
  `seo_title` varchar(255) NOT NULL COMMENT 'SEO主题',
  `seo_keywords` varchar(255) NOT NULL COMMENT 'SEO关键字',
  `seo_desc` text NOT NULL COMMENT 'SEO摘要',
  `biz_sn` varchar(255) NOT NULL COMMENT '订单号生成规则',
  `biz_payment` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '默认支付方式',
  `upload_guest` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '游客上传权限',
  `upload_user` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '会员上传权限',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='网站管理';

-- ----------------------------
-- Records of tb_site
-- ----------------------------
INSERT INTO `tb_site` VALUES ('1', '1', '博客后台管理', '/blogs/', '1', '网站关闭测试', '1', '1', 'default', '', '', '1', '1', '网站关闭测试', '1', '网站关闭测试', '', '', 'cn', '0', '', '', '', '高效的企业网站建设系统，可实现高定制化的企业网站电商系统，实现企业网站到电子商务企业网站。定制功能更高，操作更简单！', 'prefix[P]-year-month-date-rand-user-number', '0', '1', '1');

-- ----------------------------
-- Table structure for tb_site_domain
-- ----------------------------
DROP TABLE IF EXISTS `tb_site_domain`;
CREATE TABLE `tb_site_domain` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `site_id` mediumint(8) unsigned NOT NULL COMMENT '网站ID',
  `domain` varchar(255) NOT NULL COMMENT '域名信息',
  `is_mobile` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1此域名强制为手机版',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='网站指定的域名';

-- ----------------------------
-- Records of tb_site_domain
-- ----------------------------
INSERT INTO `tb_site_domain` VALUES ('1', '1', 'localhost', '0');

-- ----------------------------
-- Table structure for tb_sysmenu
-- ----------------------------
DROP TABLE IF EXISTS `tb_sysmenu`;
CREATE TABLE `tb_sysmenu` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID号',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '父级ID，0为根菜单',
  `title` varchar(100) NOT NULL COMMENT '分类名称',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态0禁用1正常',
  `appfile` varchar(100) NOT NULL COMMENT '应用文件名，放在phpok/admin/目录下，记录不带.php',
  `taxis` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序，值越小越往前靠，可选0-255',
  `func` varchar(100) NOT NULL COMMENT '应用函数，为空使用index',
  `identifier` varchar(100) NOT NULL COMMENT '标识串，用于区分同一应用文件的不同内容',
  `ext` varchar(255) NOT NULL COMMENT '表单扩展',
  `if_system` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0常规项目，1系统项目',
  `site_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '0表示全局网站',
  `icon` varchar(255) NOT NULL COMMENT '图标路径',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COMMENT='PHPOK后台系统菜单';

-- ----------------------------
-- Records of tb_sysmenu
-- ----------------------------
INSERT INTO `tb_sysmenu` VALUES ('1', '0', '设置', '1', 'setting', '50', '', '', '', '1', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('2', '0', '商务', '1', '', '20', '', '', '', '1', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('3', '0', '会员', '1', 'user', '30', '', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('4', '0', '工具', '1', 'tool', '40', '', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('5', '0', '内容', '1', 'index', '10', '', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('6', '1', '表单选项', '1', 'opt', '30', '', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('7', '4', '字段维护', '1', 'fields', '20', '', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('8', '1', '模块管理', '1', 'module', '20', '', '', '', '0', '0', 'newtab');
INSERT INTO `tb_sysmenu` VALUES ('9', '1', '核心配置', '1', 'system', '50', '', '', '', '1', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('13', '3', '会员列表', '1', 'user', '10', '', '', '', '0', '0', 'newtab');
INSERT INTO `tb_sysmenu` VALUES ('14', '3', '会员组', '1', 'usergroup', '20', '', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('16', '4', '插件中心', '1', 'plugin', '30', '', '', '', '0', '0', 'newtab');
INSERT INTO `tb_sysmenu` VALUES ('18', '5', '分类管理', '1', 'cate', '30', '', '', '', '0', '0', 'folder');
INSERT INTO `tb_sysmenu` VALUES ('19', '5', '全局内容', '1', 'all', '10', '', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('20', '5', '内容管理', '1', 'list', '20', '', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('22', '5', '资源管理', '1', 'res', '60', '', '', '', '0', '0', 'attachment');
INSERT INTO `tb_sysmenu` VALUES ('23', '5', '数据调用', '1', 'call', '40', '', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('25', '3', '会员字段', '1', 'user', '30', 'fields', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('27', '1', '项目管理', '1', 'project', '10', '', '', '', '0', '0', 'newtab');
INSERT INTO `tb_sysmenu` VALUES ('28', '4', '通知模板', '1', 'email', '40', '', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('29', '1', '管理员维护', '1', 'admin', '80', '', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('30', '1', '风格管理', '1', 'tpl', '60', '', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('31', '1', '站点管理', '1', 'site', '90', '', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('32', '5', '评论管理', '1', 'reply', '50', '', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('33', '2', '货币及汇率', '1', 'currency', '30', '', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('34', '2', '订单管理', '1', 'order', '10', '', '', '', '0', '0', 'newtab');
INSERT INTO `tb_sysmenu` VALUES ('45', '4', '程序升级', '1', 'update', '10', '', '', '', '0', '0', 'newtab');
INSERT INTO `tb_sysmenu` VALUES ('52', '2', '付款方案', '1', 'payment', '20', '', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('57', '1', '数据库管理', '1', 'sql', '100', '', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('58', '5', '标签管理', '1', 'tag', '70', '', '', '', '0', '0', 'tags');
INSERT INTO `tb_sysmenu` VALUES ('59', '1', '伪静态页规则', '1', 'rewrite', '70', '', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('62', '4', '附件分类管理', '1', 'rescate', '120', '', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('63', '4', '图片规格方案', '1', 'gd', '130', '', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('66', '3', '财富方案', '1', 'wealth', '40', '', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('67', '2', '商品属性', '1', 'options', '40', '', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('68', '2', '运费模板', '1', 'freight', '50', '', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('77', '2', '物流快递', '1', 'express', '50', '', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('78', '4', '网关路由', '1', 'gateway', '110', '', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('80', '4', '计划任务', '1', 'task', '140', '', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('87', '1', '日志', '1', 'log', '110', '', '', '', '0', '1', '');
INSERT INTO `tb_sysmenu` VALUES ('88', '3', '会员地址库', '1', 'address', '50', '', '', '', '0', '1', '');
INSERT INTO `tb_sysmenu` VALUES ('92', '5', '报表统计', '1', 'report', '80', '', '', '', '0', '1', '');
INSERT INTO `tb_sysmenu` VALUES ('95', '1', '应用管理', '1', 'appsys', '115', '', '', '', '0', '1', '');
INSERT INTO `tb_sysmenu` VALUES ('98', '1', '微信小程序', '1', 'wxappconfig', '120', '', '', '', '0', '1', '');
INSERT INTO `tb_sysmenu` VALUES ('105', '5', '文件管理', '1', 'filemanage', '255', '', '', '', '0', '0', 'newtab');
INSERT INTO `tb_sysmenu` VALUES ('106', '5', '收藏夹管理', '1', 'fav', '255', '', '', '', '0', '0', '');
INSERT INTO `tb_sysmenu` VALUES ('107', '5', '脏字过滤', '1', 'dirtywords', '255', '', '', '', '0', '0', 'newtab');
INSERT INTO `tb_sysmenu` VALUES ('108', '5', '菜单导航', '1', 'menu', '90', '', '', '', '0', '1', 'menu');
INSERT INTO `tb_sysmenu` VALUES ('109', '5', '安全检测', '1', 'safecheck', '255', '', '', '', '0', '0', 'newtab');
INSERT INTO `tb_sysmenu` VALUES ('113', '1', '微信配置', '1', 'wxconfig', '255', '', '', '', '0', '0', 'newtab');
INSERT INTO `tb_sysmenu` VALUES ('114', '1', '微信会员', '1', 'wxuser', '255', '', '', '', '0', '0', 'newtab');

-- ----------------------------
-- Table structure for tb_tag
-- ----------------------------
DROP TABLE IF EXISTS `tb_tag`;
CREATE TABLE `tb_tag` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `site_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '站点ID',
  `identifier` varchar(255) NOT NULL COMMENT '标识',
  `title` varchar(255) NOT NULL COMMENT '名称',
  `url` varchar(255) NOT NULL COMMENT '关键字网址',
  `target` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0原窗口打开，1新窗口打开',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `alt` varchar(255) NOT NULL COMMENT '链接里的提示',
  `is_global` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否全局状态1是0否',
  `replace_count` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '替换次数',
  `seo_title` varchar(255) NOT NULL COMMENT 'SEO标题',
  `seo_keywords` varchar(255) NOT NULL COMMENT 'SEO关键字',
  `seo_desc` varchar(255) NOT NULL COMMENT 'SEO描述',
  `tpl` varchar(255) NOT NULL COMMENT '模板名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='关键字管理器';

-- ----------------------------
-- Records of tb_tag
-- ----------------------------

-- ----------------------------
-- Table structure for tb_tag_node
-- ----------------------------
DROP TABLE IF EXISTS `tb_tag_node`;
CREATE TABLE `tb_tag_node` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关联的TagID',
  `identifier` varchar(255) NOT NULL COMMENT '标识变量名，在同一个标签里不能重复',
  `title` varchar(255) NOT NULL COMMENT '节点名称',
  `psize` int(11) NOT NULL DEFAULT '0' COMMENT '默认文章数，用于未指定时自动读取的数量',
  `ids` text NOT NULL COMMENT '文章ID，多个ID用英文逗号隔开',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '为1表示读列表，为0表示随机从ids里选择一篇读取（如果有多个）',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0未启用，1启用',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '项目ID',
  `cid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `taxis` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '值越小越往前排，最大不超过255',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='标签节点管理器';

-- ----------------------------
-- Records of tb_tag_node
-- ----------------------------
INSERT INTO `tb_tag_node` VALUES ('1', '3', 'hot', '公司热门', '10', '1996,1855,1767', '1', '1', '0', '0', '10');
INSERT INTO `tb_tag_node` VALUES ('3', '3', 'demo', '演示节点', '0', '', '0', '0', '43', '8', '20');

-- ----------------------------
-- Table structure for tb_tag_stat
-- ----------------------------
DROP TABLE IF EXISTS `tb_tag_stat`;
CREATE TABLE `tb_tag_stat` (
  `title_id` varchar(200) NOT NULL COMMENT '主题ID，以p开头的表示项目ID，以c开头的表示分类ID',
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'TAG标签ID',
  PRIMARY KEY (`title_id`,`tag_id`),
  KEY `title_id` (`title_id`),
  KEY `tag_id` (`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Tag主题统计';

-- ----------------------------
-- Records of tb_tag_stat
-- ----------------------------

-- ----------------------------
-- Table structure for tb_task
-- ----------------------------
DROP TABLE IF EXISTS `tb_task`;
CREATE TABLE `tb_task` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `year` varchar(9) NOT NULL COMMENT '年份',
  `month` varchar(5) NOT NULL COMMENT '月',
  `day` varchar(5) NOT NULL COMMENT '日',
  `hour` varchar(5) NOT NULL COMMENT '时',
  `minute` varchar(5) NOT NULL COMMENT '分',
  `second` varchar(5) NOT NULL COMMENT '秒',
  `exec_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '开始执行时间',
  `stop_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '结束时间',
  `action` varchar(100) NOT NULL COMMENT '执行动作脚本',
  `param` varchar(255) NOT NULL COMMENT '参数',
  `only_once` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1表示仅执行一次',
  `is_lock` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未锁定1已锁定',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='计划任务';

-- ----------------------------
-- Records of tb_task
-- ----------------------------

-- ----------------------------
-- Table structure for tb_tpl
-- ----------------------------
DROP TABLE IF EXISTS `tb_tpl`;
CREATE TABLE `tb_tpl` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `title` varchar(100) NOT NULL COMMENT '模板名称',
  `author` varchar(100) NOT NULL COMMENT '开发者名称',
  `folder` varchar(100) NOT NULL DEFAULT 'www' COMMENT '模板目录',
  `refresh_auto` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1自动判断更新刷新0不刷新',
  `refresh` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1强制刷新0普通刷新',
  `ext` varchar(20) NOT NULL DEFAULT 'html' COMMENT '后缀',
  `folder_change` varchar(255) NOT NULL COMMENT '更改目录',
  `phpfolder` varchar(200) NOT NULL COMMENT 'PHP执行文件目录',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='模板管理';

-- ----------------------------
-- Records of tb_tpl
-- ----------------------------
INSERT INTO `tb_tpl` VALUES ('1', '默认风格', 'phpok.com', 'www', '1', '0', 'html', 'css,images,js', 'phpinc');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID，即会员ID',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '主要会员组',
  `user` varchar(100) NOT NULL COMMENT '会员账号',
  `pass` varchar(100) NOT NULL COMMENT '会员密码',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态ID，0未审核1正常2锁定',
  `regtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `email` varchar(200) NOT NULL COMMENT '邮箱，可用于取回密码',
  `mobile` varchar(50) NOT NULL COMMENT '手机或电话',
  `code` varchar(255) NOT NULL COMMENT '验证串，可用于取回密码',
  `avatar` varchar(255) NOT NULL COMMENT '会员头像',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员管理';

-- ----------------------------
-- Records of tb_user
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user_address
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_address`;
CREATE TABLE `tb_user_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `country` varchar(255) NOT NULL DEFAULT '中国' COMMENT '国家',
  `province` varchar(255) NOT NULL COMMENT '省信息',
  `city` varchar(255) NOT NULL COMMENT '市',
  `county` varchar(255) NOT NULL COMMENT '县',
  `address` varchar(255) NOT NULL COMMENT '地址信息（不含国家，省市县镇区信息）',
  `address2` varchar(255) NOT NULL COMMENT '楼层房号',
  `mobile` varchar(100) NOT NULL COMMENT '手机号码',
  `tel` varchar(100) NOT NULL COMMENT '电话号码',
  `email` varchar(100) NOT NULL COMMENT '邮箱',
  `fullname` varchar(100) NOT NULL COMMENT '联系人姓名',
  `zipcode` varchar(50) NOT NULL COMMENT '邮编',
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1表示默认地址，0为常规',
  `firstname` varchar(255) NOT NULL COMMENT '名字',
  `lastname` varchar(255) NOT NULL COMMENT '姓氏',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='会员地址库';

-- ----------------------------
-- Records of tb_user_address
-- ----------------------------
INSERT INTO `tb_user_address` VALUES ('1', '23', '中国', '北京市', '北京市', '东城区', '测试地址', '', '15818533971', '', '', '苏相锟', '', '0', '', '');
INSERT INTO `tb_user_address` VALUES ('9', '45', '中国', '广东省', '广州市', '海珠区', '新港中路397号', '', '020-81167888', '', '', '张三', '510000', '0', '', '');
INSERT INTO `tb_user_address` VALUES ('5', '45', '中国', '广东省', '广州市', '海珠区', '新港中路397号', '', '15818533971', '', 'admin@phpok.com', '苏相锟', '510000', '1', '', '');

-- ----------------------------
-- Table structure for tb_user_ext
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_ext`;
CREATE TABLE `tb_user_ext` (
  `id` int(10) unsigned NOT NULL COMMENT '会员ID',
  `fullname` varchar(255) NOT NULL DEFAULT '' COMMENT '姓名',
  `bgcolor` varchar(255) NOT NULL DEFAULT '' COMMENT '背景色',
  `bgimg` varchar(255) NOT NULL DEFAULT '' COMMENT '背景图片',
  `demo` longtext NOT NULL COMMENT '测试复选框',
  `gender` varchar(255) NOT NULL DEFAULT '未设置' COMMENT '性别',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员扩展字段';

-- ----------------------------
-- Records of tb_user_ext
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user_group
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_group`;
CREATE TABLE `tb_user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '会员组ID',
  `title` varchar(255) NOT NULL COMMENT '会员组名称',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0不使用1使用',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1为会员注册默认组',
  `is_guest` tinyint(1) NOT NULL DEFAULT '0' COMMENT '游客组',
  `is_open` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1开放供用户选择，0不开放',
  `taxis` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序',
  `register_status` varchar(100) NOT NULL COMMENT '1通过0审核email邮件code邀请码mobile手机',
  `tbl_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '关联验证串项目',
  `tpl_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '通知模板ID',
  `fields` text NOT NULL COMMENT '会员字段，多个字段用英文逗号隔开',
  `popedom` longtext NOT NULL COMMENT '权限，包括读写及评论审核',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='会员组信息管理';

-- ----------------------------
-- Records of tb_user_group
-- ----------------------------
INSERT INTO `tb_user_group` VALUES ('2', '普通会员', '1', '1', '0', '0', '10', '0', '0', '34', 'fullname,gender', 'a:1:{i:1;s:322:\"read:43,read:87,read:41,read:42,read:147,read:45,read:150,read:96,post:96,read:144,read:151,read:152,post:152,post1:152,reply:152,reply1:152,read:148,read:386,post:386,read:389,read:390,read:440,read:443,reply:43,read:1,read:2,post:2,post1:2,read:3,read:4,read:5,read:6,read:7,read:8,read:9,read:10,read:11,read:12,read:13\";}');
INSERT INTO `tb_user_group` VALUES ('3', '游客组', '1', '0', '1', '0', '200', '', '0', '0', '', 'a:1:{i:1;s:276:\"read:43,read:87,read:41,read:42,read:147,read:45,read:150,read:96,post:96,read:144,read:151,read:152,read:148,read:386,post:386,read:389,read:390,read:439,read:440,read:443,reply:43,read:1,read:2,read:3,read:4,read:5,read:6,read:7,read:8,read:9,read:10,read:11,read:12,read:13\";}');
INSERT INTO `tb_user_group` VALUES ('7', 'VIP会员', '1', '0', '0', '0', '255', '1', '0', '0', 'fullname,gender', 'a:1:{i:1;s:345:\"read:43,read:87,read:41,read:42,read:147,read:45,read:150,read:96,post:96,post1:96,reply:96,reply1:96,read:144,read:151,read:152,post:152,post1:152,reply:152,reply1:152,read:148,read:386,post:386,post1:386,read:389,read:390,read:440,read:443,reply:43,read:1,read:2,read:3,read:4,read:5,read:6,read:7,read:8,read:9,read:10,read:11,read:12,read:13\";}');

-- ----------------------------
-- Table structure for tb_user_relation
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_relation`;
CREATE TABLE `tb_user_relation` (
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `introducer` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '介绍人ID',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '介绍时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员介绍关系图';

-- ----------------------------
-- Records of tb_user_relation
-- ----------------------------

-- ----------------------------
-- Table structure for tb_wealth
-- ----------------------------
DROP TABLE IF EXISTS `tb_wealth`;
CREATE TABLE `tb_wealth` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '财富ID',
  `site_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '站点ID',
  `title` varchar(100) NOT NULL COMMENT '财产名称',
  `identifier` varchar(100) NOT NULL COMMENT '标识，仅限英文字符',
  `unit` varchar(100) NOT NULL COMMENT '单位名称',
  `dnum` tinyint(1) NOT NULL DEFAULT '0' COMMENT '保留几位小数，为0表示只取整数',
  `ifpay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否支持充值',
  `pay_ratio` float unsigned NOT NULL DEFAULT '0' COMMENT '兑换比例，即1元可以兑换多少，为0不支持充值，为1表示1：1，不支持小数',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0不使用1使用',
  `taxis` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序，0-255，越小越往前靠',
  `ifcash` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否抵现，即允许财富当现金使用',
  `cash_ratio` float unsigned NOT NULL DEFAULT '0' COMMENT '抵现比例，即100财富值可抵用多少元',
  `ifcheck` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否审核，为1时表示获取到的财富需要管理员审核后才行',
  `min_val` float unsigned NOT NULL DEFAULT '0' COMMENT '最低使用值',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='财富类型';

-- ----------------------------
-- Records of tb_wealth
-- ----------------------------
INSERT INTO `tb_wealth` VALUES ('1', '1', '积分', 'integral', '点', '2', '1', '100', '1', '10', '1', '1', '0', '100');

-- ----------------------------
-- Table structure for tb_wealth_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_wealth_info`;
CREATE TABLE `tb_wealth_info` (
  `wid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '方案ID',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '主题ID或会员ID或分类ID或项目ID',
  `lasttime` int(11) NOT NULL DEFAULT '0' COMMENT '最后一次更新时间',
  `val` float unsigned NOT NULL DEFAULT '0' COMMENT '最小财富为0，不考虑负数情况',
  PRIMARY KEY (`wid`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='财富内容';

-- ----------------------------
-- Records of tb_wealth_info
-- ----------------------------

-- ----------------------------
-- Table structure for tb_wealth_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_wealth_log`;
CREATE TABLE `tb_wealth_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `wid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '财富ID',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则ID',
  `goal_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '目标会员ID',
  `mid` varchar(100) NOT NULL COMMENT '主键ID关联',
  `val` float NOT NULL DEFAULT '0' COMMENT '不带负号表示增加，带负号表示减去',
  `note` varchar(255) NOT NULL COMMENT '操作摘要',
  `appid` enum('admin','www','api') NOT NULL DEFAULT 'www' COMMENT '来自哪个接口',
  `dateline` int(11) NOT NULL DEFAULT '0' COMMENT '写入时间',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID，为0非会员',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID，为0非管理员',
  `ctrlid` varchar(100) NOT NULL COMMENT '控制器ID',
  `funcid` varchar(100) NOT NULL COMMENT '方法ID',
  `url` varchar(255) NOT NULL COMMENT '执行的URL',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未审核1已审核',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='财富获取或消耗日志';

-- ----------------------------
-- Records of tb_wealth_log
-- ----------------------------

-- ----------------------------
-- Table structure for tb_wealth_rule
-- ----------------------------
DROP TABLE IF EXISTS `tb_wealth_rule`;
CREATE TABLE `tb_wealth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则ID',
  `wid` int(10) unsigned NOT NULL COMMENT '财产ID',
  `action` varchar(255) NOT NULL COMMENT '触发动作',
  `val` varchar(255) NOT NULL DEFAULT '0' COMMENT '值，负值表示减，大于0表示加，支持计算如price*2',
  `goal` varchar(255) NOT NULL DEFAULT 'user' COMMENT '目标类型user用户，agent1一级代理',
  `taxis` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0不限制，其他限制这条规则仅在此会员组下的会员有效',
  `uids` varchar(255) NOT NULL COMMENT '多个会员ID用英文逗号隔开',
  `qty_type` varchar(255) NOT NULL DEFAULT 'order' COMMENT 'order指订单数，product指产品数',
  `qty` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0不限，其他值是在订单数量或产品数量值',
  `price_type` varchar(255) NOT NULL DEFAULT 'order' COMMENT 'order指订单价格，product指产品价格',
  `price` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0不限，其他值指订单或产品价格时有效',
  `project_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0不限制，其他值限制项目',
  `title_id` varchar(255) NOT NULL COMMENT '主题限制，多个主题用英文逗号隔开，建议不超过30个主题',
  `goal_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0不限，其他限制目标会员组ID',
  `goal_uids` varchar(255) NOT NULL COMMENT '目标会员ID，多个会员ID用英文逗号隔开',
  `if_stop` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0不中止，1中止',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='财富生成规则';

-- ----------------------------
-- Records of tb_wealth_rule
-- ----------------------------
INSERT INTO `tb_wealth_rule` VALUES ('2', '1', 'register', '50', 'user', '10', '0', '', 'order', '0', 'order', '0', '0', '', '0', '', '0');
INSERT INTO `tb_wealth_rule` VALUES ('4', '1', 'register', '20', 'introducer', '20', '0', '', 'order', '0', 'order', '0', '0', '', '0', '', '0');
INSERT INTO `tb_wealth_rule` VALUES ('5', '1', 'login', '10', 'user', '30', '7', '', 'order', '0', 'order', '0', '0', '', '0', '', '0');
INSERT INTO `tb_wealth_rule` VALUES ('12', '1', 'content', '1', 'user', '40', '0', '', 'order', '0', 'order', '0', '0', '', '0', '', '0');
INSERT INTO `tb_wealth_rule` VALUES ('13', '1', 'comment', '5', 'user', '50', '0', '', 'order', '0', 'order', '0', '0', '', '0', '', '0');
INSERT INTO `tb_wealth_rule` VALUES ('14', '1', 'payment', 'price', 'user', '60', '0', '', 'order', '0', 'order', '0', '0', '', '0', '', '0');
INSERT INTO `tb_wealth_rule` VALUES ('15', '1', 'post', '10', 'user', '70', '0', '', 'order', '0', 'order', '0', '0', '', '0', '', '0');
INSERT INTO `tb_wealth_rule` VALUES ('16', '1', 'register', '10', 'introducer2', '25', '0', '', 'order', '0', 'order', '0', '0', '', '0', '', '0');
INSERT INTO `tb_wealth_rule` VALUES ('17', '1', 'register', '5', 'introducer3', '28', '0', '', 'order', '0', 'order', '0', '0', '', '0', '', '0');
INSERT INTO `tb_wealth_rule` VALUES ('18', '1', 'payment', 'price*0.6', 'introducer', '62', '0', '', 'order', '0', 'order', '0', '0', '', '0', '', '0');
INSERT INTO `tb_wealth_rule` VALUES ('19', '1', 'payment', 'price*0.3', 'introducer2', '65', '0', '', 'order', '0', 'order', '0', '0', '', '0', '', '0');
INSERT INTO `tb_wealth_rule` VALUES ('20', '1', 'payment', 'price*0.1', 'introducer3', '68', '0', '', 'order', '0', 'order', '0', '0', '', '0', '', '0');
INSERT INTO `tb_wealth_rule` VALUES ('21', '1', 'login', '5', 'user', '35', '2', '', 'order', '0', 'order', '0', '0', '', '0', '', '0');
INSERT INTO `tb_wealth_rule` VALUES ('22', '1', 'login', '100', 'introducer', '36', '7', '', 'order', '0', 'order', '0', '0', '', '7', '', '0');
INSERT INTO `tb_wealth_rule` VALUES ('23', '1', 'login', '75', 'introducer', '37', '7', '', 'order', '0', 'order', '0', '0', '', '2', '', '0');
