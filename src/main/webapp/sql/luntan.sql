/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50096
Source Host           : localhost:3306
Source Database       : luntan

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2019-05-25 10:38:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `aid` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('zs', 'zs', '1');
INSERT INTO `admin` VALUES ('zhangshun', '123456', '2');

-- ----------------------------
-- Table structure for card
-- ----------------------------
DROP TABLE IF EXISTS `card`;
CREATE TABLE `card` (
  `tid` int(11) NOT NULL auto_increment,
  `content` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `authorid` int(11) default NULL,
  `hidden` varchar(255) default NULL,
  `collect` int(11) default NULL,
  `thumpsup` int(11) default NULL,
  `collecttimes` int(11) default NULL,
  `thumpsuptimes` int(11) default NULL,
  `showlevel` int(11) default NULL,
  `gameid` int(11) default NULL,
  `gamename` varchar(255) default NULL,
  `remarks` varchar(255) default NULL,
  PRIMARY KEY  (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of card
-- ----------------------------
INSERT INTO `card` VALUES ('1', 'zhangshun id handsome boy ', 'zhanshun message', '1', '0', '1', '1', '1', '0', '0', '1', '炉石传说', '无');
INSERT INTO `card` VALUES ('2', 'zhangshun贼帅', '张顺帅么', '1', '0', '1', '1', '1', '0', '0', '1', '炉石传说', null);

-- ----------------------------
-- Table structure for game
-- ----------------------------
DROP TABLE IF EXISTS `game`;
CREATE TABLE `game` (
  `gid` int(11) NOT NULL auto_increment,
  `gname` varchar(255) default NULL,
  `gcontext` varchar(255) default NULL,
  `gurl` varchar(255) default NULL,
  `gtype` varchar(255) default NULL,
  `gpower` varchar(255) default NULL,
  `gbolog` varchar(255) default NULL,
  PRIMARY KEY  (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game
-- ----------------------------
INSERT INTO `game` VALUES ('1', '炉石传说', '性感阿顺，在线打牌<br>大家都说666', '1luntanimage/ship.jpg', '1', '2', '手机游戏');
INSERT INTO `game` VALUES ('2', ' 风暴英雄', '性感阿咕带我打团，嘤嘤嘤，阿咕牛批', '1luntanimage/default4.jpg', '2', '2', '电脑端游戏');
INSERT INTO `game` VALUES ('3', '风之谷', '你从未有过的船新体验', '1luntanimage/default4.jpg', '3', '2', '掌机游戏');
INSERT INTO `game` VALUES ('4', '刺客信条', '性感阿顺，在线打牌<br>大家都说666', '1luntanimage/default4.jpg', '4', '2', '主机游戏');
INSERT INTO `game` VALUES ('5', ' 漫威未来之战', ' 性感灭霸在线种地', '1luntanimage/default5.jpg', '1', '2', '手机游戏');

-- ----------------------------
-- Table structure for gamedictionary
-- ----------------------------
DROP TABLE IF EXISTS `gamedictionary`;
CREATE TABLE `gamedictionary` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gamedictionary
-- ----------------------------
INSERT INTO `gamedictionary` VALUES ('1', '手机游戏', '1');
INSERT INTO `gamedictionary` VALUES ('2', '电脑端游戏', '2');
INSERT INTO `gamedictionary` VALUES ('3', '掌机游戏', '3');
INSERT INTO `gamedictionary` VALUES ('4', '主机游戏', '4');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `power` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  `username` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `phone` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zhangshun', '1', '0', 'zhangshun', '123456', '17516207938', '17516207938@163.com');
INSERT INTO `user` VALUES ('5', '11', '0', '0', '11', '11', '11', '17516207938@163.com');

-- ----------------------------
-- Table structure for userdo
-- ----------------------------
DROP TABLE IF EXISTS `userdo`;
CREATE TABLE `userdo` (
  ` itemid` int(11) NOT NULL auto_increment,
  `userid` int(11) default NULL,
  `cardid` int(11) default NULL,
  PRIMARY KEY  (` itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userdo
-- ----------------------------

-- ----------------------------
-- Table structure for userlog
-- ----------------------------
DROP TABLE IF EXISTS `userlog`;
CREATE TABLE `userlog` (
  `userid` int(11) NOT NULL auto_increment,
  `nowtime` datetime default NULL,
  `userdo` varchar(255) default NULL,
  `useridtwo` int(11) default NULL,
  `usertuoname` varchar(255) default NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userlog
-- ----------------------------
