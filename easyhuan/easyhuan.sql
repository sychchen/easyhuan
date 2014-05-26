/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50521
Source Host           : localhost:3306
Source Database       : easyhuan

Target Server Type    : MYSQL
Target Server Version : 50521
File Encoding         : 65001

Date: 2014-05-25 23:45:54
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gcomment
-- ----------------------------
INSERT INTO `gcomment` VALUES ('1', '2014-05-22 10:29:22', '评价评价评价', '6', '1');
INSERT INTO `gcomment` VALUES ('2', '2014-05-14 10:29:47', '评价评价评价', '7', '1');
INSERT INTO `gcomment` VALUES ('3', '2014-05-30 10:30:10', '评价评价评价', '8', '1');
INSERT INTO `gcomment` VALUES ('4', '2014-05-07 10:30:31', '评价评价评价', '8', '2');
INSERT INTO `gcomment` VALUES ('5', '2014-05-22 10:29:22', '评价评价评价', '6', '1');
INSERT INTO `gcomment` VALUES ('6', '2014-05-14 10:29:47', '评价评价评价', '7', '1');
INSERT INTO `gcomment` VALUES ('7', '2014-05-30 10:30:10', '评价评价评价', '8', '1');
INSERT INTO `gcomment` VALUES ('8', '2014-05-07 10:30:31', '评价评价评价', '8', '2');
INSERT INTO `gcomment` VALUES ('9', '2014-05-22 10:29:22', '评价评价评价', '6', '1');
INSERT INTO `gcomment` VALUES ('10', '2014-05-14 10:29:47', '评价评价评价', '7', '1');
INSERT INTO `gcomment` VALUES ('11', '2014-05-30 10:30:10', '评价评价评价', '8', '1');
INSERT INTO `gcomment` VALUES ('12', '2014-05-07 10:30:31', '评价评价评价', '8', '2');
INSERT INTO `gcomment` VALUES ('13', '2014-05-22 10:29:22', '评价评价评价', '6', '1');
INSERT INTO `gcomment` VALUES ('14', '2014-05-14 10:29:47', '评价评价评价', '7', '1');
INSERT INTO `gcomment` VALUES ('15', '2014-05-30 10:30:10', '评价评价评价', '8', '1');
INSERT INTO `gcomment` VALUES ('16', '2014-05-07 10:30:31', '评价评价评价', '8', '2');
INSERT INTO `gcomment` VALUES ('17', '2014-05-22 10:29:22', '评价评价评价', '6', '1');
INSERT INTO `gcomment` VALUES ('18', '2014-05-14 10:29:47', '评价评价评价', '7', '1');
INSERT INTO `gcomment` VALUES ('19', '2014-05-30 10:30:10', '评价评价评价', '8', '1');
INSERT INTO `gcomment` VALUES ('20', '2014-05-07 10:30:31', '评价评价评价', '8', '2');
INSERT INTO `gcomment` VALUES ('21', '2014-05-22 10:29:22', '评价评价评价', '6', '1');
INSERT INTO `gcomment` VALUES ('22', '2014-05-14 10:29:47', '评价评价评价', '7', '1');
INSERT INTO `gcomment` VALUES ('23', '2014-05-30 10:30:10', '评价评价评价', '8', '1');
INSERT INTO `gcomment` VALUES ('24', '2014-05-07 10:30:31', '评价评价评价', '8', '2');
INSERT INTO `gcomment` VALUES ('25', '2014-05-22 10:29:22', '评价评价评价', '6', '1');
INSERT INTO `gcomment` VALUES ('26', '2014-05-14 10:29:47', '评价评价评价', '7', '1');
INSERT INTO `gcomment` VALUES ('27', '2014-05-30 10:30:10', '评价评价评价', '8', '1');
INSERT INTO `gcomment` VALUES ('28', '2014-05-07 10:30:31', '评价评价评价', '8', '2');
INSERT INTO `gcomment` VALUES ('29', '2014-05-22 10:29:22', '评价评价评价', '6', '1');
INSERT INTO `gcomment` VALUES ('30', '2014-05-14 10:29:47', '评价评价评价', '7', '1');
INSERT INTO `gcomment` VALUES ('31', '2014-05-30 10:30:10', '评价评价评价', '8', '1');
INSERT INTO `gcomment` VALUES ('32', '2014-05-07 10:30:31', '评价评价评价', '8', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('6', '视频', '删除视频', '1', '视频', '1', '2');
INSERT INTO `goods` VALUES ('7', '视频1', '添加视频', '2', '视频', '2', '2');
INSERT INTO `goods` VALUES ('8', '视频', '我删除了视频', '4', '视频', '2', '2');
INSERT INTO `goods` VALUES ('9', '视频', '删除视频', '1', '视频', '1', '2');
INSERT INTO `goods` VALUES ('10', '视频1', '添加视频', '2', '视频', '2', '2');
INSERT INTO `goods` VALUES ('11', '视频', '我删除了视频', '4', '视频', '2', '2');
INSERT INTO `goods` VALUES ('12', '视频', '删除视频', '1', '视频', '1', '2');
INSERT INTO `goods` VALUES ('13', '视频1', '添加视频', '2', '视频', '2', '2');
INSERT INTO `goods` VALUES ('14', '视频', '我删除了视频', '4', '视频', '2', '2');
INSERT INTO `goods` VALUES ('15', '视频', '删除视频', '1', '视频', '1', '2');
INSERT INTO `goods` VALUES ('16', '视频1', '添加视频', '2', '视频', '2', '2');
INSERT INTO `goods` VALUES ('17', '视频', '我删除了视频', '4', '视频', '2', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gpicture
-- ----------------------------
INSERT INTO `gpicture` VALUES ('3', '2014-04-23 11:18:05', 'http://localhost:8080/Easyhuan/img/picture1.png', '10');
INSERT INTO `gpicture` VALUES ('4', '2014-05-15 11:18:48', 'http://localhost:8080/Easyhuan/img/picture2.png', '10');
INSERT INTO `gpicture` VALUES ('6', '2014-05-19 11:19:57', 'http://localhost:8o80/Easyhuan/img/picture4.png', '10');
INSERT INTO `gpicture` VALUES ('7', '2014-05-20 11:20:27', 'http://localhost:8o80/Easyhuan/img/picture5.png', '10');
INSERT INTO `gpicture` VALUES ('9', '2014-05-20 11:20:27', 'insertPicture添加的图片！', '10');
INSERT INTO `gpicture` VALUES ('10', '2014-05-20 11:20:27', 'insertPicture添加的图片！', '10');
INSERT INTO `gpicture` VALUES ('11', '2014-05-20 11:20:27', 'insertPicture添加的图片！', '10');
INSERT INTO `gpicture` VALUES ('12', '2014-05-20 11:20:27', 'insertPicture添加的图片！', '10');
INSERT INTO `gpicture` VALUES ('13', '2014-05-20 11:20:27', 'insertPicture添加的图片！', '10');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_mobile` varchar(11) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'sds', 'aaaaaaaaaaa', '123124123', 'fadsa');
INSERT INTO `user` VALUES ('2', 'ggg', 'gggggggggggggggggg', '1234132', 'fdwlkejt2532WE');
INSERT INTO `user` VALUES ('3', 'sds', 'aaaaaaaaaaa', '123124123', 'fadsa');
INSERT INTO `user` VALUES ('4', 'ggg', 'gggggggggggggggggg', '1234132', 'fdwlkejt2532WE');
INSERT INTO `user` VALUES ('5', 'sds', 'aaaaaaaaaaa', '123124123', 'fadsa');
INSERT INTO `user` VALUES ('6', 'ggg', 'gggggggggggggggggg', '1234132', 'fdwlkejt2532WE');
INSERT INTO `user` VALUES ('11', 'tianjin', '123fsag', 'tiangjin', 'tianjintianjin');
INSERT INTO `user` VALUES ('12', 'hainan', 'GHALKJ', 'HAINAN', 'tianjin');
INSERT INTO `user` VALUES ('13', 'A', 'A', 'A', 'A');
INSERT INTO `user` VALUES ('14', 's', 's', 's', 's');
INSERT INTO `user` VALUES ('15', 'w', 'w', 'w', 'w');
INSERT INTO `user` VALUES ('16', 'wang', 'wang', 'wang', 'wang');
INSERT INTO `user` VALUES ('17', 'q', 'q', 'q', 'q');
