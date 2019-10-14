/*
Navicat MySQL Data Transfer

Source Server         : jdbc
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : db_gsx

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2019-10-14 18:27:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('1', 'jon', '18', '男', '13934947688', '太原市', '1');
INSERT INTO `students` VALUES ('4', '李晓', '20', '男', '13655443285', '临汾市', '1');
INSERT INTO `students` VALUES ('5', '王刚', '30', '男', '15943022790', '晋中市', '2');
INSERT INTO `students` VALUES ('20', 'job', '18', '男', '13934947688', '太原市', '1');
INSERT INTO `students` VALUES ('21', 'GGG', '33', '女', '17740853697', '成都市', '22');
