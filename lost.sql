/*
Navicat MySQL Data Transfer

Source Server         : my_server
Source Server Version : 50721
Source Host           : www.lixiufeng.me:3306
Source Database       : lost

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-01-02 01:36:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `replay_time` datetime DEFAULT NULL,
  `replaycon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feedback
-- ----------------------------

-- ----------------------------
-- Table structure for lost_and_found
-- ----------------------------
DROP TABLE IF EXISTS `lost_and_found`;
CREATE TABLE `lost_and_found` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `kinds` varchar(255) DEFAULT NULL,
  `do_time` datetime DEFAULT NULL,
  `do_place` varchar(255) DEFAULT NULL,
  `special` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `contract` varchar(255) DEFAULT NULL,
  `daxie` varchar(255) DEFAULT NULL,
  `sponsor_id` varchar(255) DEFAULT NULL,
  `results` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lost_and_found
-- ----------------------------
INSERT INTO `lost_and_found` VALUES ('1', '2019-01-02 01:30:56', '雨伞', '2019-01-02 00:00:00', '美食城', '黑色', '/upload/1546363855448.png', null, null, '2', '0', '1');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `is_admin` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `img_path` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `wx` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `signare` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-03-12 20:48:13', null, null, '1168453696@qq.com', null, null, null, null, null);
INSERT INTO `member` VALUES ('2', '哈哈哈', '9808bf3b72034afbd4f8ee35b0c89ab7', '0', '2019-01-02 01:28:22', null, null, 'lihshyscomcn@gmail.com', null, null, null, null, null);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to_user` int(11) DEFAULT NULL,
  `contract` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
