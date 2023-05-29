/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50536
 Source Host           : localhost:3306
 Source Schema         : zl

 Target Server Type    : MySQL
 Target Server Version : 50536
 File Encoding         : 65001

 Date: 26/05/2023 13:41:09
*/

CREATE DATABASE `zl` ;

USE `zl`;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_bbs_post
-- ----------------------------
DROP TABLE IF EXISTS `tb_bbs_post`;
CREATE TABLE `tb_bbs_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '帖子主键id',
  `publish_user_id` bigint(20) NOT NULL COMMENT '发布者id',
  `post_title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '帖子标题',
  `post_category_id` int(11) NOT NULL COMMENT '帖子分类id',
  `post_category_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '帖子分类(冗余字段)',
  `post_status` tinyint(4) NOT NULL DEFAULT 1 ,
  `post_views` bigint(20) NOT NULL DEFAULT 0 COMMENT '阅读量',
  `post_comments` bigint(20) NOT NULL DEFAULT 0 COMMENT '评论量',
  `post_collects` bigint(20) NOT NULL DEFAULT 0 COMMENT '收藏量',
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最新修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `post_content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '帖子内容',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_bbs_post
-- ----------------------------
INSERT INTO `tb_bbs_post` VALUES (1, 1, '测试动态', 5, '动态', 1, 441, 2, 3, '2023-05-20 13:00:00', '2023-05-20 13:00:00', '<p>测试动态</p>');
INSERT INTO `tb_bbs_post` VALUES (2, 1, '测试讨论', 4, '讨论', 1, 4, 1, 1, '2023-05-20 13:05:57', '2023-05-20 13:05:57', '<p>如题~</p>');
INSERT INTO `tb_bbs_post` VALUES (3, 2, '测试提问', 1, '提问', 1, 235, 0, 0, '2023-05-20 13:07:03', '2023-05-20 13:07:03', '<p>如题~</p>');
INSERT INTO `tb_bbs_post` VALUES (4, 2, '测试分享', 2, '分享', 1, 5, 1, 0, '2023-05-20 13:11:06', '2023-05-20 13:11:06', '<p>如题~</p>');
INSERT INTO `tb_bbs_post` VALUES (5, 2, '测试建议', 3, '建议', 1, 234, 1, 1, '2023-05-20 13:24:34', '2023-05-20 13:24:34', '<p>如题~</p>');
INSERT INTO `tb_bbs_post` VALUES (6, 2, '测试其他', 6, '其他', 1, 85, 1, 0, '2023-05-20 13:54:04', '2023-05-20 13:54:04', '<p>如题~</p>');
INSERT INTO `tb_bbs_post` VALUES (18, 1, '6666', 5, '动态', 1, 1, 0, 0, '2023-05-26 13:12:35', '2023-05-23 19:00:20', '<p>6666</p>');

-- ----------------------------
-- Table structure for tb_bbs_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_bbs_user`;
CREATE TABLE `tb_bbs_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户主键id',
  `user_email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '登陆名称(默认为邮箱号码)',
  `sys_user_pwd` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'MD5加密后的密码',
  `sys_user_name` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `head_img_url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '头像',
  `gender` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '性别',
  `location` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '居住地',
  `introduce` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '个人简介',
  `user_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '用户状态 0=正常 1=禁言',
  `last_login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最新登录时间',
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_bbs_user
-- ----------------------------
INSERT INTO `tb_bbs_user` VALUES (1, 'coder13@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '测试账号1', 'http://localhost:8042/upload/20230526_12091955.jpg', '男', '未知', '我不怕千万人阻挡，只怕自己投降。', 0, '2023-05-26 13:37:46', '2023-05-20 11:03:19');
INSERT INTO `tb_bbs_user` VALUES (2, 'coder14@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '测试账号2', 'http://localhost:8042/upload/20230526_12095623.jpg', '未知', '未知', '这个人很懒，什么都没留下~', 0, '2023-05-26 12:09:43', '2023-05-20 11:05:19');
INSERT INTO `tb_bbs_user` VALUES (3, 'coder15@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '测试账号3', '/images/avatar/default.png', '男', '未知', '这个人很懒，什么都没留下~', 0, '2023-05-20 11:03:19', '2023-05-20 11:09:42');
INSERT INTO `tb_bbs_user` VALUES (4, '123@qq.com', 'e10adc3949ba59abbe56e057f20f883e', 'zzz', 'http://localhost:8042/upload/20230526_11303918.jpg', '未知', '未知', '这个人很懒，什么都没留下~', 0, '2023-05-26 11:37:25', '2023-05-23 19:00:20');

-- ----------------------------
-- Table structure for tb_post_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_post_category`;
CREATE TABLE `tb_post_category`  (
  `category_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类表主键',
  `category_name` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分类的名称',
  `category_rank` int(11) NOT NULL DEFAULT 1 COMMENT '分类的排序值 被使用的越多数值越大',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否删除 0=否 1=是',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_post_category
-- ----------------------------
INSERT INTO `tb_post_category` VALUES (1, '提问', 1, 0, '2023-05-19 14:47:38');
INSERT INTO `tb_post_category` VALUES (2, '分享', 1, 0, '2023-05-19 14:47:38');
INSERT INTO `tb_post_category` VALUES (3, '建议', 1, 0, '2023-05-19 14:47:38');
INSERT INTO `tb_post_category` VALUES (4, '讨论', 1, 0, '2023-05-19 14:47:38');
INSERT INTO `tb_post_category` VALUES (5, '动态', 1, 0, '2023-05-19 14:47:38');
INSERT INTO `tb_post_category` VALUES (6, '其它', 1, 0, '2023-05-19 14:47:38');

-- ----------------------------
-- Table structure for tb_post_collect_record
-- ----------------------------
DROP TABLE IF EXISTS `tb_post_collect_record`;
CREATE TABLE `tb_post_collect_record`  (
  `record_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `post_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '收藏帖子主键',
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '收藏者id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_post_collect_record
-- ----------------------------
INSERT INTO `tb_post_collect_record` VALUES (1, 1, 3, '2023-05-20 15:03:19');
INSERT INTO `tb_post_collect_record` VALUES (2, 2, 3, '2023-05-20 15:05:30');
INSERT INTO `tb_post_collect_record` VALUES (3, 3, 3, '2023-05-20 15:09:30');
INSERT INTO `tb_post_collect_record` VALUES (10, 1, 4, '2023-05-26 11:13:41');

-- ----------------------------
-- Table structure for tb_post_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_post_comment`;
CREATE TABLE `tb_post_comment`  (
  `comment_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `post_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '关联的帖子主键',
  `comment_user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '评论者id',
  `comment_body` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '评论内容',
  `parent_comment_user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '所回复的上一级评论的userId',
  `comment_create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论时间',
  `is_deleted` tinyint(4) NULL DEFAULT 0 COMMENT '是否删除 0-未删除 1-已删除',
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_post_comment
-- ----------------------------
INSERT INTO `tb_post_comment` VALUES (1, 1, 2, '赞一个', 0, '2023-05-21 17:08:43', 0);
INSERT INTO `tb_post_comment` VALUES (2, 2, 3, '????????', 0, '2023-05-21 17:10:40', 0);
INSERT INTO `tb_post_comment` VALUES (3, 3, 2, '顶一下！', 0, '2023-05-21 17:22:27', 0);
INSERT INTO `tb_post_comment` VALUES (4, 4, 2, '??  +1', 2, '2023-05-21 17:23:07', 0);
INSERT INTO `tb_post_comment` VALUES (5, 5, 3, '赞 +1', 0, '2023-05-21 17:23:45', 0);
INSERT INTO `tb_post_comment` VALUES (11, 1, 4, '666', 0, '2023-05-26 11:14:14', 0);

SET FOREIGN_KEY_CHECKS = 1;
