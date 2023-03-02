/*
 Navicat Premium Data Transfer

 Source Server         : daku
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : daku

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 23/02/2023 22:16:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for approve
-- ----------------------------
DROP TABLE IF EXISTS `approve`;
CREATE TABLE `approve`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `document_id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '与需要审批的单据关联：领用单和借用单',
  `approve_type` tinyint NOT NULL COMMENT '标记审批流程类型',
  `document_type` int NOT NULL COMMENT '标记文档类型(2借用/1领用)',
  `user_id` int NOT NULL COMMENT '提交申请的用户id',
  `system_id` int NOT NULL COMMENT '提交的系统id',
  `approve_person_id` int NULL DEFAULT NULL COMMENT '与审批人ID关联，表示该节点的审批人',
  `approve_node` int NOT NULL COMMENT '表示当前审批节点，1代表系统级审批，2代表部门级审批，3代表副主任级别审批，4代表主任级别审批，5代表仓库管理员审批',
  `approve_status` int NOT NULL COMMENT '单据审批状态，0代表审批中，1代表审批完成，2代表审批驳回',
  `approve_time` datetime NULL DEFAULT NULL COMMENT '表示该节点完成审批的时间',
  `approve_suggestion` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '代表该节点的审批意见，非必填',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 210 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '审批流程表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of approve
-- ----------------------------
INSERT INTO `approve` VALUES (151, 'RK20220928003', 3, 3, 29, 0, 47, 1, 1, '2022-09-28 04:46:11', '同意');
INSERT INTO `approve` VALUES (152, 'RK20220928010', 3, 3, 29, 0, 47, 1, 1, '2022-09-28 05:07:04', 'ok');
INSERT INTO `approve` VALUES (159, 'RK20220928011', 3, 3, 29, 0, 47, 1, 1, '2022-10-12 09:56:13', '');
INSERT INTO `approve` VALUES (160, 'BJBX20220928010', 4, 6, 29, 0, 49, 1, 1, '2022-09-28 06:58:35', '123');
INSERT INTO `approve` VALUES (161, 'CK2022092914192720', 2, 1, 51, 6, 52, 1, 1, '2022-09-29 02:22:27', '');
INSERT INTO `approve` VALUES (162, 'CK2022092914192720', 2, 1, 51, 6, 55, 2, 1, '2022-09-29 02:23:19', '');
INSERT INTO `approve` VALUES (163, 'CK2022092914192720', 2, 1, 51, 6, NULL, 3, 0, NULL, NULL);
INSERT INTO `approve` VALUES (165, 'RK2048001', 3, 3, 29, 0, 47, 1, 1, '2022-10-16 04:50:55', '');
INSERT INTO `approve` VALUES (166, 'CK2033071059375', 2, 1, 51, 6, 58, 1, 1, '2022-11-07 02:30:29', '');
INSERT INTO `approve` VALUES (167, 'CK2033071059375', 2, 1, 51, 6, 52, 2, 1, '2022-11-07 04:07:35', '');
INSERT INTO `approve` VALUES (168, 'CK2033071059375', 2, 1, 51, 6, 55, 3, 1, '2022-11-07 04:14:11', '');
INSERT INTO `approve` VALUES (169, 'CK2033071059375', 2, 1, 51, 6, 54, 4, 1, '2022-11-07 04:15:07', '');
INSERT INTO `approve` VALUES (170, 'CK2033071059375', 2, 1, 51, 6, 29, 5, 1, '2022-11-08 10:02:05', '');
INSERT INTO `approve` VALUES (171, 'CK20330810075863', 0, 1, 51, 6, 58, 1, 1, '2022-11-08 10:09:22', '');
INSERT INTO `approve` VALUES (172, 'CK20330810075863', 0, 1, 51, 6, 52, 2, 1, '2022-11-08 10:10:30', '');
INSERT INTO `approve` VALUES (173, 'CK20330810075863', 0, 1, 51, 6, 29, 3, 1, '2022-11-08 10:42:01', '');
INSERT INTO `approve` VALUES (174, 'CK20330811124042', 0, 1, 51, 6, 58, 1, 1, '2022-11-08 11:13:17', '');
INSERT INTO `approve` VALUES (175, 'CK20330811124042', 0, 1, 51, 6, 52, 2, 1, '2022-11-08 11:13:37', '');
INSERT INTO `approve` VALUES (176, 'CK20330811124042', 0, 1, 51, 6, 29, 3, 1, '2022-11-08 05:32:15', '');
INSERT INTO `approve` VALUES (177, 'CK20330817390012', 0, 1, 52, 6, 58, 1, 1, '2022-11-08 05:39:44', '');
INSERT INTO `approve` VALUES (178, 'CK20330817390012', 0, 1, 52, 6, 52, 2, 1, '2022-11-08 05:40:24', '');
INSERT INTO `approve` VALUES (179, 'CK20330817390012', 0, 1, 52, 6, NULL, 3, 0, NULL, NULL);
INSERT INTO `approve` VALUES (180, 'RK2047001', 3, 3, 29, 0, 47, 1, 1, '2022-11-14 03:07:50', '');
INSERT INTO `approve` VALUES (181, 'BJBX2047002', 4, 6, 29, 0, 49, 1, 1, '2022-11-14 02:58:29', '');
INSERT INTO `approve` VALUES (183, 'CK210466', 0, 1, 51, 6, 58, 1, 1, '2022-11-14 02:29:25', '');
INSERT INTO `approve` VALUES (184, 'CK210466', 0, 1, 51, 6, 52, 2, 1, '2022-11-14 02:33:24', '');
INSERT INTO `approve` VALUES (185, 'BF2047001', 4, 5, 29, 0, 49, 1, 1, '2022-11-14 02:31:56', '');
INSERT INTO `approve` VALUES (186, 'CK210466', 0, 1, 51, 6, 29, 3, 1, '2022-11-14 02:33:53', '');
INSERT INTO `approve` VALUES (187, 'BJBX2047003', 4, 6, 29, 0, 49, 1, 1, '2022-11-14 03:02:30', '');
INSERT INTO `approve` VALUES (188, 'RK2047002', 3, 3, 29, 0, 47, 1, 1, '2022-11-14 03:09:48', '');
INSERT INTO `approve` VALUES (189, 'CK204909544720', 0, 1, 51, 6, 58, 1, 1, '2022-11-16 09:55:32', '');
INSERT INTO `approve` VALUES (190, 'CK204909544720', 0, 1, 51, 6, 52, 2, 1, '2022-11-16 09:55:53', '');
INSERT INTO `approve` VALUES (191, 'CK204909544720', 0, 1, 51, 6, 29, 3, 1, '2022-11-16 09:56:40', '');
INSERT INTO `approve` VALUES (192, 'CK204909565791', 0, 1, 52, 6, 58, 1, 1, '2022-11-16 09:57:25', '');
INSERT INTO `approve` VALUES (193, 'CK204909565791', 0, 1, 52, 6, 52, 2, 1, '2022-11-16 09:57:42', '');
INSERT INTO `approve` VALUES (194, 'CK204909565791', 0, 1, 52, 6, 29, 3, 1, '2022-11-16 09:58:19', '');
INSERT INTO `approve` VALUES (195, 'CK20740498', 0, 1, 51, 6, 58, 1, 1, '2022-11-16 10:17:32', '');
INSERT INTO `approve` VALUES (196, 'CK20740498', 0, 1, 51, 6, 52, 2, 1, '2022-11-16 10:17:59', '');
INSERT INTO `approve` VALUES (197, 'CK20740498', 0, 1, 51, 6, 29, 3, 1, '2022-11-16 10:19:08', '');
INSERT INTO `approve` VALUES (198, 'CK21824', 0, 1, 51, 6, 58, 1, 1, '2022-11-24 02:57:10', '');
INSERT INTO `approve` VALUES (199, 'CK21824', 0, 1, 51, 6, 52, 2, 1, '2022-11-24 02:57:25', '');
INSERT INTO `approve` VALUES (200, 'CK21824', 0, 1, 51, 6, 29, 3, 1, '2022-11-24 02:57:47', '');
INSERT INTO `approve` VALUES (204, 'JY2023022315165736', 0, 2, 51, 6, NULL, 1, 0, NULL, NULL);
INSERT INTO `approve` VALUES (205, 'JY2023022315233657', 0, 2, 51, 6, NULL, 1, 0, NULL, NULL);
INSERT INTO `approve` VALUES (211, 'CK111000', 5, 1, 51, 6, 52, 1, 1, '2023-02-23 09:33:46', NULL);
INSERT INTO `approve` VALUES (212, 'CK111000', 5, 1, 51, 6, NULL, 2, 0, NULL, NULL);

-- ----------------------------
-- Table structure for approve_process
-- ----------------------------
DROP TABLE IF EXISTS `approve_process`;
CREATE TABLE `approve_process`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `approve_type` int NOT NULL,
  `approve_node` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of approve_process
-- ----------------------------
INSERT INTO `approve_process` VALUES (1, 0, 1, 9);
INSERT INTO `approve_process` VALUES (2, 0, 2, 2);
INSERT INTO `approve_process` VALUES (3, 0, 3, 6);
INSERT INTO `approve_process` VALUES (4, 1, 1, 9);
INSERT INTO `approve_process` VALUES (5, 1, 2, 2);
INSERT INTO `approve_process` VALUES (6, 1, 3, 3);
INSERT INTO `approve_process` VALUES (7, 1, 4, 4);
INSERT INTO `approve_process` VALUES (8, 1, 5, 5);
INSERT INTO `approve_process` VALUES (9, 1, 6, 6);
INSERT INTO `approve_process` VALUES (10, 2, 1, 9);
INSERT INTO `approve_process` VALUES (11, 2, 2, 2);
INSERT INTO `approve_process` VALUES (12, 2, 3, 3);
INSERT INTO `approve_process` VALUES (13, 2, 4, 4);
INSERT INTO `approve_process` VALUES (14, 2, 5, 6);
INSERT INTO `approve_process` VALUES (15, 3, 1, 8);
INSERT INTO `approve_process` VALUES (16, 4, 1, 7);
INSERT INTO `approve_process` VALUES (17, 5, 1, 2);
INSERT INTO `approve_process` VALUES (18, 5, 2, 3);
INSERT INTO `approve_process` VALUES (19, 5, 3, 6);

-- ----------------------------
-- Table structure for borrow_document
-- ----------------------------
DROP TABLE IF EXISTS `borrow_document`;
CREATE TABLE `borrow_document`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '借用单id',
  `document_id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `device_user_id` int NOT NULL COMMENT '设备借用者id',
  `use_time` datetime NOT NULL COMMENT '借用时间',
  `use_reason` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '物品借用原因',
  `approve_type` tinyint NOT NULL,
  `document_status` int NULL DEFAULT NULL COMMENT '文件状态',
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '借用单单据信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of borrow_document
-- ----------------------------
INSERT INTO `borrow_document` VALUES (42, 'JY2023022315165736', 51, '2023-02-23 15:18:24', '123', 0, 1, '1234567');
INSERT INTO `borrow_document` VALUES (43, 'JY2023022315233657', 51, '2023-02-24 00:00:00', '123333', 0, 1, '2133333');

-- ----------------------------
-- Table structure for check_repair_category
-- ----------------------------
DROP TABLE IF EXISTS `check_repair_category`;
CREATE TABLE `check_repair_category`  (
  `id` tinyint NOT NULL COMMENT '报检报修单事由类别i，id=0是报检，id=1是报修',
  `category` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '报检报修单事由分类id' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of check_repair_category
-- ----------------------------
INSERT INTO `check_repair_category` VALUES (0, '报检');
INSERT INTO `check_repair_category` VALUES (1, '报修');

-- ----------------------------
-- Table structure for check_repair_cause
-- ----------------------------
DROP TABLE IF EXISTS `check_repair_cause`;
CREATE TABLE `check_repair_cause`  (
  `id` tinyint NOT NULL,
  `cause` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '报检报修单事由',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '报检报修单事由详情' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of check_repair_cause
-- ----------------------------
INSERT INTO `check_repair_cause` VALUES (0, '定期校验维护');
INSERT INTO `check_repair_cause` VALUES (1, '工作状态不正常');
INSERT INTO `check_repair_cause` VALUES (2, '定期维护中发现障碍');
INSERT INTO `check_repair_cause` VALUES (3, '使用者发现障碍');

-- ----------------------------
-- Table structure for check_repair_document
-- ----------------------------
DROP TABLE IF EXISTS `check_repair_document`;
CREATE TABLE `check_repair_document`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `document_id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '单据id',
  `check_repair_category_id` tinyint NOT NULL COMMENT '单据类别id，0为检修，1为报修',
  `check_repair_cause_id` tinyint NOT NULL COMMENT '报检报修事由id，0为定期校验维护，1为工作状态不正常，2为定期维护中发现障碍，3为使用者发现障碍',
  `fault_description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '故障描述',
  `repair_company` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '维修公司',
  `document_person_id` int NOT NULL COMMENT '填报人id',
  `repair_person_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '维修人姓名',
  `check_repair_result` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检测维修结果',
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `document_status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '报检报修单单据信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of check_repair_document
-- ----------------------------
INSERT INTO `check_repair_document` VALUES (5, 'BJBX20220928010', 0, 2, 'dfgdfg', 'dell', 29, '', '', '', 2);
INSERT INTO `check_repair_document` VALUES (6, 'BJBX2047002', 0, 0, '911', '911', 29, '911', '', '', 2);
INSERT INTO `check_repair_document` VALUES (7, 'BJBX2047002', 0, 0, '911', '911', 29, '911', '', '', 1);
INSERT INTO `check_repair_document` VALUES (8, 'BJBX2047003', 0, 0, '099', '099', 29, '099', '', '', 2);

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '部门名称',
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (0, '管理员部', '特殊的部门,适用于不属于任何部门的人');
INSERT INTO `department` VALUES (1, '信息部', '1234');
INSERT INTO `department` VALUES (2, '加速器部', '1212');
INSERT INTO `department` VALUES (3, '实验部', NULL);
INSERT INTO `department` VALUES (4, '部门1', '1');
INSERT INTO `department` VALUES (5, '部门2', '2');

-- ----------------------------
-- Table structure for department_system
-- ----------------------------
DROP TABLE IF EXISTS `department_system`;
CREATE TABLE `department_system`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `department_id` int UNSIGNED NOT NULL,
  `system_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of department_system
-- ----------------------------
INSERT INTO `department_system` VALUES (1, 1, 2);
INSERT INTO `department_system` VALUES (2, 2, 1);
INSERT INTO `department_system` VALUES (3, 2, 3);
INSERT INTO `department_system` VALUES (4, 3, 4);
INSERT INTO `department_system` VALUES (5, 3, 5);
INSERT INTO `department_system` VALUES (6, 1, 9);
INSERT INTO `department_system` VALUES (7, 4, 6);
INSERT INTO `department_system` VALUES (8, 5, 7);

-- ----------------------------
-- Table structure for device
-- ----------------------------
DROP TABLE IF EXISTS `device`;
CREATE TABLE `device`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '某设备记录id',
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '设备名称',
  `model` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '设备型号',
  `inventory_number` int NOT NULL COMMENT '设备库存数量',
  `repair_number` int NOT NULL COMMENT '设备维修数量',
  `lend_number` int NOT NULL COMMENT '设备借出数量',
  `outwarehouse_number` int NOT NULL COMMENT '设备出库数量',
  `scrap_number` int NOT NULL COMMENT '设备报废数量',
  `category_id` int NOT NULL COMMENT '设备类别id，1为工具类，2为设备类，3为材料类，4为报废类，5为专用类，6为固定资产类',
  `fund_id` int NULL DEFAULT NULL COMMENT '经费来源',
  `location` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '设备位置信息',
  `amount_unit` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '设备单位',
  `create_time` datetime NOT NULL COMMENT '第一次入库时间',
  `sale_company` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '销售商',
  `product_company` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '生产商',
  `unit_price` decimal(11, 2) NOT NULL COMMENT '设备单价',
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设备描述信息',
  `device_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相同名称相同规格的设备id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '设备信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of device
-- ----------------------------
INSERT INTO `device` VALUES (11, 'sssssssss', 'xks', 199, 0, 0, 0, 0, 3, 1, '2222222', '99', '2022-09-28 16:38:42', '222222222', '222222222', 11111.00, '', 'S-ZS-01-1111111111111');
INSERT INTO `device` VALUES (12, '2', '2', 19, 1, 0, 0, 0, 2, 1, '1-1-1', '台', '2022-09-28 16:57:23', 'xx', 'xx', 1000.00, '', 'S-ZS-01-3563463563436');
INSERT INTO `device` VALUES (13, '1', '1', 16, 16, 0, 5, 3, 2, 1, '1-1-1', '台', '2022-09-28 17:46:52', 'xx', 'ww', 1.00, '', 'S-ZS-01-7826349827091');
INSERT INTO `device` VALUES (14, 'kiki', 'kiki', 12, 0, 0, 8, 0, 2, 1, '11111', '台', '2022-10-15 14:36:40', '1111', '111111', 10000.00, '', 'S-ZS-01-2222222222222');
INSERT INTO `device` VALUES (15, 'kkkk', 'kkkk', 97, 0, 0, 3, 0, 2, 1, '123456', '台', '2022-11-14 14:20:36', 'kkkkk', 'kkkk', 123.00, '', 'S-ZS-01-kkkkkkkkkkkkk');
INSERT INTO `device` VALUES (16, 'chh', 'chh', 5, 0, 0, 5, 0, 2, 1, '12345', '123', '2022-11-14 15:09:18', '124', '123', 123.00, '', 'S-ZS-01-jjjjjjjjjjjjj');

-- ----------------------------
-- Table structure for device_category
-- ----------------------------
DROP TABLE IF EXISTS `device_category`;
CREATE TABLE `device_category`  (
  `id` int NOT NULL COMMENT '物品类别id',
  `category` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '物品类别名称',
  `category_nu` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类别缩写',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '物品类别表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of device_category
-- ----------------------------
INSERT INTO `device_category` VALUES (1, '工具类', 'G');
INSERT INTO `device_category` VALUES (2, '设备类', 'S');
INSERT INTO `device_category` VALUES (3, '材料类', 'C');

-- ----------------------------
-- Table structure for device_fund
-- ----------------------------
DROP TABLE IF EXISTS `device_fund`;
CREATE TABLE `device_fund`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `fund` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = armscii8 COLLATE = armscii8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of device_fund
-- ----------------------------
INSERT INTO `device_fund` VALUES (1, '合肥光源运行费');
INSERT INTO `device_fund` VALUES (2, '合肥先进光源预研项目');
INSERT INTO `device_fund` VALUES (3, '合肥先进光源');
INSERT INTO `device_fund` VALUES (4, '其他');

-- ----------------------------
-- Table structure for device_status_record
-- ----------------------------
DROP TABLE IF EXISTS `device_status_record`;
CREATE TABLE `device_status_record`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `log_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '台账编号',
  `device_id` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '相关设备id',
  `record_details` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '记录详情',
  `record_time` datetime NOT NULL COMMENT '记录时间',
  `record_person_id` int NOT NULL COMMENT '记录人id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = armscii8 COLLATE = armscii8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of device_status_record
-- ----------------------------

-- ----------------------------
-- Table structure for device_status_reord
-- ----------------------------
DROP TABLE IF EXISTS `device_status_reord`;
CREATE TABLE `device_status_reord`  (
  `id` int NOT NULL,
  `log_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '台账编号',
  `device_id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '相关设备id',
  `record_details` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '记录详情',
  `record_time` datetime NOT NULL COMMENT '记录时间',
  `record_person_id` int NOT NULL COMMENT '记录人id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '台账表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of device_status_reord
-- ----------------------------

-- ----------------------------
-- Table structure for device_temp
-- ----------------------------
DROP TABLE IF EXISTS `device_temp`;
CREATE TABLE `device_temp`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '某设备记录id',
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '设备名称',
  `model` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '设备型号',
  `inventory_number` int NOT NULL COMMENT '设备库存数量',
  `repair_number` int NOT NULL COMMENT '设备维修数量',
  `lend_number` int NOT NULL COMMENT '设备借出数量',
  `outwarehouse_number` int NOT NULL COMMENT '设备出库数量',
  `scrap_number` int NOT NULL COMMENT '设备报废数量',
  `category_id` int NULL DEFAULT NULL COMMENT '设备类别id，1为工具类，2为设备类，3为材料类，4为报废类，5为专用类，6为固定资产类',
  `fund_id` int NULL DEFAULT NULL COMMENT '经费来源',
  `location` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '设备位置信息',
  `amount_unit` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '设备单位',
  `create_time` datetime NOT NULL COMMENT '第一次入库时间',
  `sale_company` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '销售商',
  `product_company` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '生产商',
  `unit_price` decimal(11, 2) NOT NULL COMMENT '设备单价',
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设备描述信息',
  `device_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相同名称相同规格的设备id',
  `document_id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '入库单对应的单据id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '设备信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of device_temp
-- ----------------------------
INSERT INTO `device_temp` VALUES (12, 'sssssssss', 'xks', 0, 0, 0, 0, 0, NULL, 1, '2222222', '99', '2022-09-28 16:38:42', '222222222', '222222222', 11111.00, '', 'S-ZS-01-1111111111111', 'RK20220928003');
INSERT INTO `device_temp` VALUES (13, '2', '2', 0, 0, 0, 0, 0, 2, 1, '1-1-1', '台', '2022-09-28 16:57:23', 'xx', 'xx', 1000.00, '', 'S-ZS-01-3563463563436', 'RK20220928010');
INSERT INTO `device_temp` VALUES (14, '1', '1', 0, 0, 0, 0, 0, 2, 1, '1-1-1', '台', '2022-09-28 17:46:52', 'xx', 'ww', 1.00, '', 'S-ZS-01-7826349827091', 'RK20220928011');
INSERT INTO `device_temp` VALUES (15, 'kiki', 'kiki', 0, 0, 0, 0, 0, 2, 1, '11111', '台', '2022-10-15 14:36:40', '1111', '111111', 10000.00, '', 'S-ZS-01-2222222222222', 'RK2047001');
INSERT INTO `device_temp` VALUES (16, 'kikiki', 'kikiki', 0, 0, 0, 0, 0, 2, 1, '11111111', '2334', '2022-10-16 16:43:49', '1111111', '111111', 11111.00, '', 'S-ZS-01-1111111111111', 'RK2048001');
INSERT INTO `device_temp` VALUES (17, 'kkkk', 'kkkk', 0, 0, 0, 0, 0, 2, 1, '123456', '台', '2022-11-14 14:20:36', 'kkkkk', 'kkkk', 123.00, '', 'S-ZS-01-kkkkkkkkkkkkk', 'RK2047001');
INSERT INTO `device_temp` VALUES (18, 'chh', 'chh', 0, 0, 0, 0, 0, 2, 1, '12345', '123', '2022-11-14 15:09:18', '124', '123', 123.00, '', 'S-ZS-01-jjjjjjjjjjjjj', 'RK2047002');

-- ----------------------------
-- Table structure for document_archiver
-- ----------------------------
DROP TABLE IF EXISTS `document_archiver`;
CREATE TABLE `document_archiver`  (
  `id` int NOT NULL,
  `document_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '单据id',
  `path` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '电子单据存档路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of document_archiver
-- ----------------------------

-- ----------------------------
-- Table structure for document_device
-- ----------------------------
DROP TABLE IF EXISTS `document_device`;
CREATE TABLE `document_device`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `document_id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关联单据id',
  `device_id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '相关物品id',
  `device_number` int NOT NULL COMMENT '相关物品数量',
  `descriptions` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关物品备注信息',
  `device_status` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '借用单或者归还单的物品状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 359 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '单据相关物品信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of document_device
-- ----------------------------
INSERT INTO `document_device` VALUES (286, 'RK20220928003', 'S-ZS-01-1111111111111', 99, NULL, '');
INSERT INTO `document_device` VALUES (288, 'RK20220928010', 'S-ZS-01-3563463563436', 20, NULL, '');
INSERT INTO `document_device` VALUES (293, 'BJBX20220928010', 'S-ZS-01-3563463563436', 1, NULL, '');
INSERT INTO `document_device` VALUES (294, 'CK2022092914192720', 'S-ZS-01-3563463563436', 1, NULL, '');
INSERT INTO `document_device` VALUES (295, 'RK20220928011', 'S-ZS-01-7826349827091', 40, NULL, '');
INSERT INTO `document_device` VALUES (299, 'RK2048001', 'S-ZS-01-1111111111111', 100, NULL, '');
INSERT INTO `document_device` VALUES (302, 'CK2033071059375', 'S-ZS-01-7826349827091', 3, NULL, '');
INSERT INTO `document_device` VALUES (305, 'CK20330810075863', 'S-ZS-01-2222222222222', 3, NULL, '');
INSERT INTO `document_device` VALUES (308, 'CK20330811124042', 'S-ZS-01-2222222222222', 2, NULL, '');
INSERT INTO `document_device` VALUES (310, 'CK20330817390012', 'S-ZS-01-2222222222222', 2, NULL, '');
INSERT INTO `document_device` VALUES (322, 'BF2047001', 'S-ZS-01-7826349827091', 3, NULL, '');
INSERT INTO `document_device` VALUES (326, 'CK210466', 'S-ZS-01-7826349827091', 2, NULL, '');
INSERT INTO `document_device` VALUES (331, 'BJBX2047002', 'S-ZS-01-7826349827091', 1, NULL, '');
INSERT INTO `document_device` VALUES (332, 'BJBX2047002', 'S-ZS-01-7826349827091', 1, NULL, '');
INSERT INTO `document_device` VALUES (334, 'BJBX2047003', 'S-ZS-01-7826349827091', 2, NULL, '');
INSERT INTO `document_device` VALUES (335, 'RK2047001', 'S-ZS-01-2222222222222', 10, NULL, '');
INSERT INTO `document_device` VALUES (336, 'RK2047001', 'S-ZS-01-kkkkkkkkkkkkk', 100, NULL, '');
INSERT INTO `document_device` VALUES (338, 'RK2047002', 'S-ZS-01-jjjjjjjjjjjjj', 10, NULL, '');
INSERT INTO `document_device` VALUES (341, 'CK204909544720', 'S-ZS-01-jjjjjjjjjjjjj', 1, NULL, '');
INSERT INTO `document_device` VALUES (344, 'CK204909565791', 'S-ZS-01-jjjjjjjjjjjjj', 2, NULL, '');
INSERT INTO `document_device` VALUES (347, 'CK20740498', 'S-ZS-01-jjjjjjjjjjjjj', 2, NULL, '');
INSERT INTO `document_device` VALUES (352, 'CK21824', 'S-ZS-01-kkkkkkkkkkkkk', 3, NULL, '');
INSERT INTO `document_device` VALUES (353, 'CK21824', 'S-ZS-01-2222222222222', 3, NULL, '');
INSERT INTO `document_device` VALUES (357, 'JY2023022315165736', 'S-ZS-01-2222222222222', 1, NULL, '');
INSERT INTO `document_device` VALUES (358, 'JY2023022315233657', 'S-ZS-01-kkkkkkkkkkkkk', 1, NULL, '');
INSERT INTO `document_device` VALUES (364, 'CK111000', 'S-ZS-01-1111111111111', 8, NULL, '0');

-- ----------------------------
-- Table structure for document_status_description
-- ----------------------------
DROP TABLE IF EXISTS `document_status_description`;
CREATE TABLE `document_status_description`  (
  `document_status` int NOT NULL,
  `description` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`document_status`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of document_status_description
-- ----------------------------
INSERT INTO `document_status_description` VALUES (0, '编辑');
INSERT INTO `document_status_description` VALUES (1, '审批中');
INSERT INTO `document_status_description` VALUES (2, '审批完成');
INSERT INTO `document_status_description` VALUES (3, '锁定');
INSERT INTO `document_status_description` VALUES (4, '审批驳回');
INSERT INTO `document_status_description` VALUES (5, '确认完成');

-- ----------------------------
-- Table structure for inout_warehouse_document
-- ----------------------------
DROP TABLE IF EXISTS `inout_warehouse_document`;
CREATE TABLE `inout_warehouse_document`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `document_id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '出入库单据id',
  `document_category_id` tinyint NOT NULL COMMENT '单据类型，0为入库单，1为出库单',
  `buy_use_person_id` int NULL DEFAULT NULL COMMENT '采购人或者领用人id',
  `buy_use_time` datetime NOT NULL COMMENT '采购时间或领用时间',
  `buy_use_reason` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '采购或领用事由',
  `approve_type` tinyint NULL DEFAULT NULL COMMENT '审批类型，0为计划内，1为计划外',
  `document_status` int NULL DEFAULT NULL,
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `buy_person_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '出入库单据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of inout_warehouse_document
-- ----------------------------
INSERT INTO `inout_warehouse_document` VALUES (30, 'RK20220928003', 0, 29, '2022-09-28 00:00:00', '', 3, 2, '22222223', 'kkkkkkk');
INSERT INTO `inout_warehouse_document` VALUES (31, 'RK20220928010', 0, 29, '2022-09-28 00:00:00', '', 3, 2, '', 'gyf');
INSERT INTO `inout_warehouse_document` VALUES (32, 'RK20220928011', 0, 29, '2022-09-28 00:00:00', '', 3, 2, '', 'sxk');
INSERT INTO `inout_warehouse_document` VALUES (33, 'CK2022092914192720', 1, 51, '2022-09-29 14:19:39', '0929', 2, 1, '123', NULL);
INSERT INTO `inout_warehouse_document` VALUES (34, 'RK2047001', 0, 29, '2022-10-21 00:00:00', '', 3, 2, '', 'kiki');
INSERT INTO `inout_warehouse_document` VALUES (35, 'RK2048001', 0, 29, '2022-10-29 00:00:00', '', 3, 2, '', 'kikiki');
INSERT INTO `inout_warehouse_document` VALUES (36, 'CK2033071059375', 1, 51, '2022-11-08 11:00:07', '123', 2, 5, '123', NULL);
INSERT INTO `inout_warehouse_document` VALUES (37, 'CK20330810075863', 1, 51, '2022-11-08 10:08:10', '123', 0, 5, '123', NULL);
INSERT INTO `inout_warehouse_document` VALUES (38, 'CK20330811124042', 1, 51, '2022-11-24 00:00:00', '1234', 0, 5, '', NULL);
INSERT INTO `inout_warehouse_document` VALUES (39, 'CK20330817390012', 1, 52, '2022-11-08 17:39:09', '123', 0, 2, '1234', NULL);
INSERT INTO `inout_warehouse_document` VALUES (40, 'RK2047001', 0, 29, '2022-11-30 00:00:00', '', 3, 2, 'new', 'kkkk');
INSERT INTO `inout_warehouse_document` VALUES (41, 'CK210466', 1, 51, '2022-11-14 14:28:23', '119', 0, 5, '119', NULL);
INSERT INTO `inout_warehouse_document` VALUES (42, 'RK2047002', 0, 29, '2022-11-14 00:00:00', '', 3, 2, '', 'chh');
INSERT INTO `inout_warehouse_document` VALUES (43, 'CK204909544720', 1, 51, '2022-11-16 09:54:56', '1234556', 0, 5, '1234', NULL);
INSERT INTO `inout_warehouse_document` VALUES (44, 'CK204909565791', 1, 52, '2022-11-16 09:57:05', '1234', 0, 5, '', NULL);
INSERT INTO `inout_warehouse_document` VALUES (45, 'CK20740498', 1, 51, '2022-11-16 10:15:14', '2222', 0, 5, '', NULL);
INSERT INTO `inout_warehouse_document` VALUES (46, 'CK21824', 1, 51, '2022-11-24 14:56:29', 'test-print', 0, 5, '', NULL);
INSERT INTO `inout_warehouse_document` VALUES (55, 'CK111000', 1, 51, '2022-05-07 10:51:11', '替换报废设备', 5, 1, '描述', NULL);

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` int NOT NULL,
  `p_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '权限名称',
  `url` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permission
-- ----------------------------

-- ----------------------------
-- Table structure for restock_document
-- ----------------------------
DROP TABLE IF EXISTS `restock_document`;
CREATE TABLE `restock_document`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `document_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `check_repair_document_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `check_repair_result` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `restock_time` datetime NULL DEFAULT NULL,
  `document_person_id` int NULL DEFAULT NULL,
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `document_status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of restock_document
-- ----------------------------

-- ----------------------------
-- Table structure for return_document
-- ----------------------------
DROP TABLE IF EXISTS `return_document`;
CREATE TABLE `return_document`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `document_id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '单据id',
  `return_person_id` int NULL DEFAULT NULL COMMENT '归还人id',
  `borrow_document_id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关联借出单id',
  `return_time` datetime NOT NULL COMMENT '归还时间',
  `return_person_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of return_document
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `r_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (0, 'admin', '系统管理员');
INSERT INTO `role` VALUES (1, 'user', '用户');
INSERT INTO `role` VALUES (2, 'systemHead', '系统领导');
INSERT INTO `role` VALUES (3, 'departmentHead', '部门负责人');
INSERT INTO `role` VALUES (4, 'deputeDirector', '分管副主任');
INSERT INTO `role` VALUES (5, 'director', '主任');
INSERT INTO `role` VALUES (6, 'wareHead', '仓库管理员');
INSERT INTO `role` VALUES (7, 'wareDirector', '仓库主管');
INSERT INTO `role` VALUES (8, 'acceptancePrincipal', '验收负责人');
INSERT INTO `role` VALUES (9, 'fundAdmin', '经费管理员');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES (78, 9, 2);

-- ----------------------------
-- Table structure for role_visible_range
-- ----------------------------
DROP TABLE IF EXISTS `role_visible_range`;
CREATE TABLE `role_visible_range`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL,
  `system` tinyint(1) NULL DEFAULT NULL COMMENT '是否可见系统审批表',
  `department` tinyint(1) NULL DEFAULT NULL COMMENT '是否可见部门审批表',
  `all` tinyint(1) NULL DEFAULT NULL COMMENT '是否可见全部审批表',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_visible_range
-- ----------------------------
INSERT INTO `role_visible_range` VALUES (1, 1, 0, 0, 1);
INSERT INTO `role_visible_range` VALUES (2, 2, 1, 0, 0);
INSERT INTO `role_visible_range` VALUES (3, 3, 0, 1, 0);
INSERT INTO `role_visible_range` VALUES (4, 4, 0, 1, 0);
INSERT INTO `role_visible_range` VALUES (5, 5, 0, 0, 1);
INSERT INTO `role_visible_range` VALUES (6, 6, 0, 0, 1);
INSERT INTO `role_visible_range` VALUES (7, 7, 0, 0, 1);
INSERT INTO `role_visible_range` VALUES (8, 8, 0, 0, 1);
INSERT INTO `role_visible_range` VALUES (9, 9, 0, 0, 1);

-- ----------------------------
-- Table structure for scrap_document
-- ----------------------------
DROP TABLE IF EXISTS `scrap_document`;
CREATE TABLE `scrap_document`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `document_id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '单据id',
  `document_person_id` int NOT NULL COMMENT '申报人id',
  `scrap_reason` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '报废原因',
  `process_way` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '处理方式',
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `document_status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '报废单据信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scrap_document
-- ----------------------------
INSERT INTO `scrap_document` VALUES (3, 'BF2047001', 29, '123', '123', '', 2);

-- ----------------------------
-- Table structure for special_person
-- ----------------------------
DROP TABLE IF EXISTS `special_person`;
CREATE TABLE `special_person`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of special_person
-- ----------------------------
INSERT INTO `special_person` VALUES (1, 28, 5);

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `document_id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `size` bigint NOT NULL,
  `url` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_file
-- ----------------------------
INSERT INTO `sys_file` VALUES (1, 'jpg123456789', 'jpg', 7, 'http://localhost:9090/file/jpg123456789.jpg');

-- ----------------------------
-- Table structure for system
-- ----------------------------
DROP TABLE IF EXISTS `system`;
CREATE TABLE `system`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `system_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of system
-- ----------------------------
INSERT INTO `system` VALUES (0, '默认系统', '适用于没有系统的人员');
INSERT INTO `system` VALUES (1, '控制系统', '控制');
INSERT INTO `system` VALUES (2, '数据库系统', '数据库');
INSERT INTO `system` VALUES (3, '微波高频系统', '微波高频');
INSERT INTO `system` VALUES (4, '催化与表面科学系统', '催化与表面科学');
INSERT INTO `system` VALUES (5, '光电子能谱系统', '光电子能谱');
INSERT INTO `system` VALUES (6, '系统1', '系统1');
INSERT INTO `system` VALUES (7, '系统2', '系统2');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `displayName` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '真实姓名',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `department_id` tinyint NULL DEFAULT NULL COMMENT '所属部门id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'chh', '1ca827a997ea5944b3a3c6b737b34ba6', 'adfa', '2022-05-01 12:36:09', 1);
INSERT INTO `user` VALUES (2, 'zhx', '3178ed6edb3df64b14109e93ab57fff6', 'zhx', '2022-05-01 12:36:28', 1);
INSERT INTO `user` VALUES (3, 'ztz', 'ff446686e21c07e919078c3368f4727a', 'gsfg', '2022-05-01 12:36:38', 1);
INSERT INTO `user` VALUES (23, 'jfz', 'bf13bd6721d1542033bbac6ddf6bba4b', 'jfz', '2022-05-09 16:12:44', 3);
INSERT INTO `user` VALUES (24, 'hbp', 'fc9360aa296ea3e4171f75731392cbe6', 'hbp', '2022-05-09 16:14:07', 3);
INSERT INTO `user` VALUES (25, 'sz', 'd3d3bed94a39f87404304fa277ea32c0', 'sz', '2022-05-09 16:14:31', 3);
INSERT INTO `user` VALUES (26, 'sl', 'e177ee15f60669ca1ab705663f63b47b', 'sl', '2022-05-09 16:14:50', 3);
INSERT INTO `user` VALUES (27, 'dbt', '553e1de730c1cb16b5efdb046a8df41a', 'dbt', '2022-05-09 16:15:35', 2);
INSERT INTO `user` VALUES (28, 'dlf', 'ace3057b90c26ab97f05eef55ca4b671', 'dlf', '2022-05-09 16:16:08', 1);
INSERT INTO `user` VALUES (29, 'gzz', 'ba4c8b486c763f674452532534e909a1', 'gzz', '2022-05-09 16:16:34', 1);
INSERT INTO `user` VALUES (31, 'admin', '24b17eff35cfe291d8a7853b27b472e1', 'admin', '2022-05-30 16:33:58', 0);
INSERT INTO `user` VALUES (34, 'test', '8e7ab2331d0f9c0eafa945421b2be307', 'test', '2022-07-12 17:14:14', NULL);
INSERT INTO `user` VALUES (37, 'sunxk@ustc.edu.cn', '9fa22abb0deefd719d10bf87e3fdf1e7', '孙晓康', '2022-07-25 09:43:21', NULL);
INSERT INTO `user` VALUES (43, 'gfliu@ustc.edu.cn', 'c278adb8291f12f759e8f441e581517c', '刘功发', '2022-07-25 14:35:20', NULL);
INSERT INTO `user` VALUES (44, 'xus@ustc.edu.cn', '9f99ac79d5871c2886777b691810a561', '张善才', '2022-07-25 14:37:25', NULL);
INSERT INTO `user` VALUES (45, 'gjzhai@mail.ustc.edu.cn', '1b15626531e115351b153e6343f9b495', '冯光耀', '2022-07-25 14:38:56', NULL);
INSERT INTO `user` VALUES (46, 'qt980319@mail.ustc.edu.cn', '7a00b2659b175aa0221830e7e09bd3b5', '封东来', '2022-07-25 14:41:49', NULL);
INSERT INTO `user` VALUES (47, 'hcs-1', '5ccdcfc89884290e14bb0f1e0f12f9e7', '胡传圣-1', '2022-09-28 15:49:51', NULL);
INSERT INTO `user` VALUES (48, 'hcs-2', '0c4992bc4a0dad0a2e8af1cabfd483d0', '胡传圣-2', '2022-09-28 15:50:18', NULL);
INSERT INTO `user` VALUES (49, 'lzz-1', 'c58e8e2eec2b4d9a12968f0f51785002', '罗震林-1', '2022-09-28 15:51:06', NULL);
INSERT INTO `user` VALUES (50, 'lzz-2', '68995c20a7041ae41865a56aa5e3df9a', '罗震林-2', '2022-09-28 15:51:31', NULL);
INSERT INTO `user` VALUES (51, 'mhp', '6d2e0af3df0ac675849ca9c39eb3b0a8', '梅红萍', '2022-09-28 15:52:15', NULL);
INSERT INTO `user` VALUES (52, 'zgf', 'd7f26709e1f733b465327afd9c94cb67', '张国凡', '2022-09-28 15:52:59', NULL);
INSERT INTO `user` VALUES (53, 'sxk-1', '7b38e77a33f9850f6cd03d0638061edb', '孙晓康-1', '2022-09-28 15:53:31', NULL);
INSERT INTO `user` VALUES (54, 'sxk-2', '082624398d0ca2de21948da33dbc15e1', '孙晓康-2', '2022-09-28 15:53:56', NULL);
INSERT INTO `user` VALUES (55, 'xfq-1', 'ee616e3a794c42b15cc493c98efdb6eb', '徐法强-1', '2022-09-28 15:54:49', NULL);
INSERT INTO `user` VALUES (56, 'xfq-2', '3b4b897d0d7966faa7f6ac1f7d1eefa8', '徐法强-2', '2022-09-28 15:55:12', NULL);
INSERT INTO `user` VALUES (57, 'jyy', 'cadfba4fed427a8493363947779910e9', '蒋玉燕', '2022-09-28 15:55:57', NULL);
INSERT INTO `user` VALUES (58, 'jgy', '5b1650ef42749e25abdfb2d14c92f761', '经管员', '2022-11-06 11:13:59', NULL);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` int NOT NULL,
  `user_id` int NOT NULL COMMENT '用户id',
  `role_id` int NOT NULL COMMENT '角色id',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 1, 1, 'yfgan是系统管理员');
INSERT INTO `user_role` VALUES (2, 2, 0, 'admin是仓库管理员');
INSERT INTO `user_role` VALUES (3, 3, 3, 'admin1是仓库主管');
INSERT INTO `user_role` VALUES (4, 4, 4, 'user是普通用户');
INSERT INTO `user_role` VALUES (5, 5, 2, 'userHead是部门主管');

-- ----------------------------
-- Table structure for user_role_system_department
-- ----------------------------
DROP TABLE IF EXISTS `user_role_system_department`;
CREATE TABLE `user_role_system_department`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  `system_id` int NULL DEFAULT NULL,
  `department_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_role_system_department
-- ----------------------------
INSERT INTO `user_role_system_department` VALUES (1, 1, 1, 1, 2);
INSERT INTO `user_role_system_department` VALUES (2, 2, 2, 1, 1);
INSERT INTO `user_role_system_department` VALUES (3, 3, 2, 2, 1);
INSERT INTO `user_role_system_department` VALUES (4, 3, 3, 1, 1);
INSERT INTO `user_role_system_department` VALUES (12, 23, 2, 4, 3);
INSERT INTO `user_role_system_department` VALUES (13, 23, 1, 5, 3);
INSERT INTO `user_role_system_department` VALUES (14, 24, 2, 5, 3);
INSERT INTO `user_role_system_department` VALUES (15, 25, 3, 0, 3);
INSERT INTO `user_role_system_department` VALUES (16, 26, 4, 0, 3);
INSERT INTO `user_role_system_department` VALUES (17, 27, 1, 3, 2);
INSERT INTO `user_role_system_department` VALUES (18, 28, 5, 0, 0);
INSERT INTO `user_role_system_department` VALUES (19, 29, 6, 0, 0);
INSERT INTO `user_role_system_department` VALUES (20, 31, 0, 0, 0);
INSERT INTO `user_role_system_department` VALUES (23, 34, 1, 1, 1);
INSERT INTO `user_role_system_department` VALUES (24, 34, 1, 1, 2);
INSERT INTO `user_role_system_department` VALUES (27, 37, 1, 1, 2);
INSERT INTO `user_role_system_department` VALUES (34, 43, 2, 1, 2);
INSERT INTO `user_role_system_department` VALUES (35, 44, 3, 0, 2);
INSERT INTO `user_role_system_department` VALUES (36, 45, 4, 0, 2);
INSERT INTO `user_role_system_department` VALUES (37, 46, 5, 0, 6);
INSERT INTO `user_role_system_department` VALUES (38, 47, 8, 0, 0);
INSERT INTO `user_role_system_department` VALUES (39, 48, 1, 7, 5);
INSERT INTO `user_role_system_department` VALUES (40, 49, 7, 0, 0);
INSERT INTO `user_role_system_department` VALUES (41, 50, 5, 0, 0);
INSERT INTO `user_role_system_department` VALUES (42, 51, 1, 6, 4);
INSERT INTO `user_role_system_department` VALUES (43, 52, 2, 6, 4);
INSERT INTO `user_role_system_department` VALUES (44, 53, 2, 7, 5);
INSERT INTO `user_role_system_department` VALUES (45, 54, 4, 6, 4);
INSERT INTO `user_role_system_department` VALUES (46, 55, 3, 6, 4);
INSERT INTO `user_role_system_department` VALUES (47, 56, 4, 7, 5);
INSERT INTO `user_role_system_department` VALUES (48, 57, 3, 7, 5);
INSERT INTO `user_role_system_department` VALUES (49, 58, 9, 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
