/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50521
Source Host           : localhost:3306
Source Database       : easyhuan

Target Server Type    : MYSQL
Target Server Version : 50521
File Encoding         : 65001

Date: 2014-05-16 17:03:51
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `gcategory`
-- ----------------------------
DROP TABLE IF EXISTS `gcategory`;
CREATE TABLE `gcategory` (
  `gcategory_id` int(11) NOT NULL AUTO_INCREMENT,
  `gcategory_name` varchar(255) NOT NULL,
  PRIMARY KEY (`gcategory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gcategory
-- ----------------------------
INSERT INTO `gcategory` VALUES ('1', 'sdjgka');
INSERT INTO `gcategory` VALUES ('2', 'klgjkdfgj');

-- ----------------------------
-- Table structure for `gcomment`
-- ----------------------------
DROP TABLE IF EXISTS `gcomment`;
CREATE TABLE `gcomment` (
  `gcomment_id` int(11) NOT NULL AUTO_INCREMENT,
  `gcomment_time` datetime DEFAULT NULL,
  `gcomment_content` varchar(255) DEFAULT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`gcomment_id`),
  KEY `fk_comment_user` (`user_id`),
  KEY `fk_comment_goods` (`goods_id`),
  CONSTRAINT `fk_comment_goods` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`goods_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_comment_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gcomment
-- ----------------------------
INSERT INTO `gcomment` VALUES ('1', '2014-05-13 00:22:25', 'dsgksdfgsj', '1', '2');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_description` varchar(255) DEFAULT NULL,
  `goods_price` double DEFAULT NULL,
  `goods_category` varchar(255) DEFAULT NULL,
  `goods_sale` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`goods_id`),
  KEY `fk_goods_user` (`user_id`),
  CONSTRAINT `fk_goods_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '', 'sdklfadj;g', '12', 'ksdlg;ajdklfj', '3', '1');

-- ----------------------------
-- Table structure for `gpicture`
-- ----------------------------
DROP TABLE IF EXISTS `gpicture`;
CREATE TABLE `gpicture` (
  `gpicture_id` int(11) NOT NULL AUTO_INCREMENT,
  `gpicture_time` datetime DEFAULT NULL,
  `gpicture_url` varchar(255) DEFAULT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`gpicture_id`),
  KEY `fk_picture_goods` (`goods_id`),
  CONSTRAINT `fk_picture_goods` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`goods_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gpicture
-- ----------------------------
INSERT INTO `gpicture` VALUES ('2', '2014-05-06 00:22:08', 'sdfkla;g', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_mobile` int(11) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'sds', 'aaaaaaaaaaa', '123124123', 'fadsa');
INSERT INTO `user` VALUES ('2', 'ggg', 'gggggggggggggggggg', '1234132', 'fdwlkejt2532WE');
