/*
 Navicat MySQL Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : shiro

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 03/12/2020 10:01:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint(20) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (10);
INSERT INTO `hibernate_sequence` VALUES (10);
INSERT INTO `hibernate_sequence` VALUES (10);

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission`  (
  `id` int(11) NOT NULL,
  `available` bit(1) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `number_sort` datetime(0) NULL DEFAULT NULL,
  `parent_id` bigint(20) NULL DEFAULT NULL,
  `parent_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `resource_type` enum('menu','button') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES (1, b'0', '用户管理', '2018-06-25 11:30:51', 0, '0/', 'userInfo:view', 'menu', 'userInfo/userView');
INSERT INTO `sys_permission` VALUES (2, b'0', '用户添加', '2018-06-25 11:34:51', 1, '0/1', 'userInfo:add', 'button', 'userInfo/userAdd');
INSERT INTO `sys_permission` VALUES (3, b'0', '用户禁用', '2018-06-25 11:35:51', 1, '0/1', 'userInfo:del', 'button', 'userInfo/updateState');
INSERT INTO `sys_permission` VALUES (4, b'0', '角色管理', '2018-06-25 11:40:51', 0, NULL, 'roleInfo:view', 'menu', 'roleInfo/roleView');
INSERT INTO `sys_permission` VALUES (5, b'0', '资源管理', '2018-06-25 11:40:51', 0, NULL, 'sysPermission:view', 'menu', 'sysPermission/permissionView');
INSERT INTO `sys_permission` VALUES (9, b'0', '学生管理', '2018-09-01 20:08:46', 0, NULL, 'student:view', 'menu', 'student/studentView');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int(11) NOT NULL,
  `available` bit(1) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (2, b'0', '新注册用户', '新用户');
INSERT INTO `sys_role` VALUES (1, b'0', '管理员', 'admin');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission`  (
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  INDEX `FK9q28ewrhntqeipl1t04kh1be7`(`role_id`) USING BTREE,
  INDEX `FKomxrs8a388bknvhjokh440waq`(`permission_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES (5, 1);
INSERT INTO `sys_role_permission` VALUES (4, 1);
INSERT INTO `sys_role_permission` VALUES (1, 1);
INSERT INTO `sys_role_permission` VALUES (3, 1);
INSERT INTO `sys_role_permission` VALUES (2, 1);
INSERT INTO `sys_role_permission` VALUES (6, 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `uid` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  INDEX `FKhh52n8vd4ny9ff4x9fb8v65qx`(`role_id`) USING BTREE,
  INDEX `FKgkmyslkrfeyn9ukmolvek8b8f`(`uid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('56a514fc657d4dc09cb12b09f39d6846', '2018-08-28 01:42:20', '2018-08-28 01:42:20', 0, '老王的儿子');
INSERT INTO `user` VALUES ('c9e56bc8d15c45bb838a63786f931908', '2018-08-28 15:07:32', NULL, 25, '老王');
INSERT INTO `user` VALUES ('739086403d084de397282e8173d29f73', '2018-08-28 15:35:44', NULL, 22, '老王2');
INSERT INTO `user` VALUES ('c6bae69dad8c4b538ad4bafd435837c3', '2018-08-28 16:46:02', NULL, 18, '老王4');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `uid` int(11) NOT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int(11) NOT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE INDEX `UK_f2ksd6h8hsjtd57ipfq9myr64`(`username`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, '2018-06-23 17:07:40', '管理员', 'd3c59d25033dbf980d29554025c23a75', NULL, NULL, NULL, '8d78869f470951332959580424d4bf4f', 1, '2018-08-31 15:56:33', 'admin');
INSERT INTO `user_info` VALUES (3, '2018-08-31 16:13:53', '张三', '79332ad51f315fdcdaaa0394c46ffcd7', NULL, NULL, '', '8d78869f470951332959580424d4bf4f', 0, '2018-08-31 16:13:53', 'zhangsan');

SET FOREIGN_KEY_CHECKS = 1;
