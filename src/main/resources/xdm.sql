/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : xdm

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 11/12/2019 17:26:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for consumer
-- ----------------------------
DROP TABLE IF EXISTS `consumer`;
CREATE TABLE `consumer`  (
  `conId` int(100) NOT NULL COMMENT '用户Id，自动生成',
  `conName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户昵称',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户密码',
  `conAvatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户头像',
  `conSex` int(11) DEFAULT NULL COMMENT '用户性别（0：未指定，1：男，2：女）',
  `conTel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户电话',
  `conMail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户邮箱',
  `conStatus` int(11) DEFAULT NULL COMMENT '用户状态（0：已删除，1：正常使用）',
  `conCreateTime` datetime(0) DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '用户创建时间',
  PRIMARY KEY (`conId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for consumptiontype
-- ----------------------------
DROP TABLE IF EXISTS `consumptiontype`;
CREATE TABLE `consumptiontype`  (
  `contId` int(11) NOT NULL AUTO_INCREMENT COMMENT '消费类型Id',
  `contName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '消费类型名称',
  `contIcon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '消费类型图标',
  `contStatus` int(11) DEFAULT NULL COMMENT '消费类型状态（0：已删除，1：正常）',
  PRIMARY KEY (`contId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for detail
-- ----------------------------
DROP TABLE IF EXISTS `detail`;
CREATE TABLE `detail`  (
  `detId` int(11) NOT NULL AUTO_INCREMENT COMMENT '明细表Id',
  `conId` int(100) DEFAULT NULL COMMENT '用户Id',
  `detSort` int(11) DEFAULT NULL COMMENT '明细分类（1：收入，2：支出）',
  `contId` int(11) DEFAULT NULL COMMENT '消费类型Id（对应消费类型表）',
  `detAmount` double(20, 2) DEFAULT NULL COMMENT '消费金额',
  `detRemark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '明细备注信息',
  `detTime` datetime(0) DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '明细时间',
  `detStatus` int(11) DEFAULT NULL COMMENT '明细状态（0：已删除，1：正常）',
  PRIMARY KEY (`detId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mysupport
-- ----------------------------
DROP TABLE IF EXISTS `mysupport`;
CREATE TABLE `mysupport`  (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `support_date` date DEFAULT NULL,
  `support_money` double(255, 2) NOT NULL,
  `get_num` int(11) NOT NULL DEFAULT 1,
  `order_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`  (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `project_sponsor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `project_gomoney` int(255) DEFAULT NULL,
  `project_tomoney` int(255) DEFAULT NULL,
  `project_persons` int(255) DEFAULT NULL,
  `project_time` date DEFAULT NULL,
  `project_day` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `project_imgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `project_type` int(10) DEFAULT NULL,
  PRIMARY KEY (`project_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES (1, 'Type-c固态硬盘兼拓展坞', '苏晓妍', 10000, 3205, 624, '2020-01-01', '45', '/resources/img/product-1.jpg', 1);
INSERT INTO `project` VALUES (2, '小飞智驾语音黑科技车载充电器', '安琪', 4000, 2000, 564, '2020-01-01', '30', '/resources/img/product-2.jpg', 1);
INSERT INTO `project` VALUES (3, '外星人儿童滑板车', '赵欣', 3000, 1500, 800, '2020-01-01', '30', '/resources/img/product-3.jpg', 1);
INSERT INTO `project` VALUES (4, '城市生活必备-失眠理疗仪', '陈枫', 3000, 1800, 400, '2020-01-01', '40', '/resources/img/product-4.jpg', 1);
INSERT INTO `project` VALUES (5, '\r\n裸眼看3D 掌上电影立起来', '秦梦瑶', 5000, 2678, 500, '2020-01-01', '30', '/resources/img/product-5.jpg', 1);
INSERT INTO `project` VALUES (6, '一盏装饰童年的儿童台灯', '王淡真', 3000, 500, 200, '2020-01-01', '30', '/resources/img/product-6.jpg', 1);
INSERT INTO `project` VALUES (7, 'ENGSEYLE英斯力筋膜枪', '允寒夜', 5000, 3454, 666, '2020-01-01', '60', '/resources/img/product-7.jpg', 1);
INSERT INTO `project` VALUES (8, '15档智能电动牙刷1万根刷毛', '樱雪婷', 10000, 8454, 500, '2020-01-01', '45', '/resources/img/product-8.jpg', 1);
INSERT INTO `project` VALUES (9, '\r\nICAT6 GPS无刷无人机', '月韩依', 8000, 5467, 2345, '2020-01-01', '66', '/resources/img/product-9.jpg', 1);
INSERT INTO `project` VALUES (10, 'YOCOO益抽一次性电子烟', '雯欣雨', 10000, 8734, 5434, '2020-01-01', '87', '/resources/img/product-10.jpg', 1);
INSERT INTO `project` VALUES (11, '创想未来，便携式3D扫描仪', '可一琳', 10000, 5648, 3564, '2020-01-01', '34', '/resources/img/product-11.jpg', 1);
INSERT INTO `project` VALUES (12, '上山下海，音响达人自由听世界', '韩语惠', 10000, 5987, 5568, '2020-01-01', '56', '/resources/img/product-12.jpg', 1);
INSERT INTO `project` VALUES (13, '深光谷急速移动电源', '叶允栗', 10000, 8765, 6783, '2020-01-01', '22', '/resources/img/product-13.jpg', 1);
INSERT INTO `project` VALUES (14, '水洗型空气净化器', '安雨痕', 10000, 8764, 6463, '2020-01-01', '34', '/resources/img/product-14.jpg', 1);
INSERT INTO `project` VALUES (15, '一款可以净化空气的LED灯', '欧蓝逞', 10000, 6733, 4322, '2020-01-01', '54', '/resources/img/product-15.jpg', 1);
INSERT INTO `project` VALUES (16, '一款可以盘的星际迷航多用U盘', '柯掩澈', 10000, 7648, 6477, '2020-01-01', '68', '/resources/img/product-16.jpg', 1);
INSERT INTO `project` VALUES (17, '便携式多功能无线投屏显示器', '安雨沫', 15000, 7992, 4353, '2020-01-01', '56', '/resources/img/product-17.jpg', 1);
INSERT INTO `project` VALUES (18, '\r\n国家宝藏千里江山木质蓝牙音响', '于霏', 10000, 5452, 4222, '2020-01-01', '45', '/resources/img/product-18.jpg', 1);
INSERT INTO `project` VALUES (19, '国家宝藏编钟移动电源', '杨语菲', 10000, 4332, 3211, '2020-01-01', '76', '/resources/img/product-19.jpg', 1);
INSERT INTO `project` VALUES (20, '梵拓客酷炫灯光升降电竞桌', '杨兮诺', 10000, 7656, 6435, '2020-01-01', '75', '/resources/img/product-20.jpg', 1);
INSERT INTO `project` VALUES (21, '健康好水煮出来-石墨烯热水壶', '杨伈', 10000, 8455, 7346, '2020-01-01', '56', '/resources/img/product-21.jpg', 2);
INSERT INTO `project` VALUES (22, '导烟机-锁住油烟隔离燥热', '夏璃沫', 15000, 7454, 6533, '2020-01-01', '76', '/resources/img/product-22.jpg', 2);
INSERT INTO `project` VALUES (23, '多功能LED智能灯', '叶梓潼', 10000, 6545, 5655, '2020-01-01', '67', '/resources/img/product-23.jpg', 2);
INSERT INTO `project` VALUES (24, '京选等等随身果汁杯', '莫熙慈', 10000, 5653, 3421, '2020-01-01', '67', '/resources/img/product-24.jpg', 2);
INSERT INTO `project` VALUES (25, 'BJC便携式交直流电源', '尹梦竹', 10000, 4534, 3411, '2020-01-01', '66', '/resources/img/product-25.jpg', 2);
INSERT INTO `project` VALUES (26, 'M4桌面暖风机', '温诩言', 10000, 7025, 5734, '2020-01-01', '65', '/resources/img/product-26.jpg', 2);
INSERT INTO `project` VALUES (27, '电烤箱消毒柜一体机', '夏梓晗', 15000, 13000, 8443, '2020-01-01', '87', '/resources/img/product-27.jpg', 2);
INSERT INTO `project` VALUES (28, '一款可以看见温度的手持花洒', '夏天', 15000, 12002, 6743, '2020-01-01', '56', '/resources/img/product-28.jpg', 2);
INSERT INTO `project` VALUES (29, '国家宝藏千里江山加湿器', '王语焉', 10000, 5443, 3422, '2020-01-01', '67', '/resources/img/product-29.jpg', 2);
INSERT INTO `project` VALUES (30, '慢享生活的茶壶五件套', '程灵素', 10000, 5655, 3435, '2020-01-01', '65', '/resources/img/product-30.jpg', 2);
INSERT INTO `project` VALUES (31, '纯钛触摸智能2升电饭锅', '木婉清', 10000, 6454, 4533, '2020-01-01', '76', '/resources/img/product-31.jpg', 2);
INSERT INTO `project` VALUES (32, '蝴蝶吊灯，让生活多一束光', '霍青桐', 10000, 4533, 3222, '2020-01-01', '78', '/resources/img/product-32.jpg', 2);
INSERT INTO `project` VALUES (33, '便携多功能可充电LED灯', '苏唯', 10000, 5343, 3453, '2020-01-01', '64', '/resources/img/product-33.jpg', 2);
INSERT INTO `project` VALUES (34, '聪明护腰枕 完美贴合精准撑腰', '叶蓁', 10000, 8988, 7677, '2020-01-01', '45', '/resources/img/product-34.jpg', 2);
INSERT INTO `project` VALUES (35, '京东京造x京鱼座 智能吸顶灯', '颜淡', 10000, 9854, 7535, '2020-01-01', '65', '/resources/img/product-35.jpg', 2);
INSERT INTO `project` VALUES (36, '美国海沃氏自重力人体工学椅', '歆瑶', 10000, 6890, 5655, '2020-01-01', '23', '/resources/img/product-36.jpg', 2);
INSERT INTO `project` VALUES (37, '随声携带，我的智能音乐保温杯', '韩紫沫', 10000, 5455, 4523, '2020-01-01', '54', '/resources/img/product-37.jpg', 2);
INSERT INTO `project` VALUES (38, '星玛智能 厨房垃圾处理器', '白梦诗', 10000, 5635, 4345, '2020-01-01', '65', '/resources/img/product-38.jpg', 2);
INSERT INTO `project` VALUES (39, 'TEAMOSA智能泡茶机', '李倩雪', 10000, 6000, 5434, '2020-01-01', '54', '/resources/img/product-39.jpg', 2);
INSERT INTO `project` VALUES (40, '家能多功能美食料理机', '夏茹雪', 10000, 7665, 5644, '2020-01-01', '45', '/resources/img/product-40.jpg', 2);
INSERT INTO `project` VALUES (41, '艾思悦益生菌&膳食纤维', '梦瑶瑶', 10000, 6745, 5465, '2020-01-01', '56', '/resources/img/product-41.jpg', 3);
INSERT INTO `project` VALUES (42, '德国工艺，精酿艾尔啤酒', '嫦曦', 10000, 6655, 5634, '2020-01-01', '65', '/resources/img/product-42.jpg', 3);
INSERT INTO `project` VALUES (43, '深夜解馋，来罐即食生蚝', '依娜', 10000, 6454, 5344, '2020-01-01', '66', '/resources/img/product-43.jpg', 3);
INSERT INTO `project` VALUES (44, '买一捐一的公益潮牌墨镜', '苏小颜', 10000, 7565, 6454, '2020-01-01', '55', '/resources/img/product-44.jpg', 3);
INSERT INTO `project` VALUES (45, '爱与希冀，“女儿红”点滴流传', '凌菲', 10000, 8767, 7656, '2020-01-01', '65', '/resources/img/product-45.jpg', 3);
INSERT INTO `project` VALUES (46, '山西泽州富硒好羊肉', '莫小冉', 10000, 7889, 6977, '2020-01-01', '77', '/resources/img/product-46.jpg', 3);
INSERT INTO `project` VALUES (47, '原生态富硒板栗 河北板栗', '凤流刖', 10000, 7867, 8676, '2020-01-01', '52', '/resources/img/product-47.jpg', 3);
INSERT INTO `project` VALUES (48, '黔娇高原野生有机蓝莓酒', '南黎川', 10000, 8646, 7677, '2020-01-01', '65', '/resources/img/product-48.jpg', 3);
INSERT INTO `project` VALUES (49, '牧天道宝妈蛋', '华宫雾绪', 10000, 8967, 7866, '2020-01-01', '45', '/resources/img/product-49.jpg', 3);
INSERT INTO `project` VALUES (50, '古法精酿 正宗酱香型白酒', '欧阳凌风', 10000, 7866, 8966, '2020-01-01', '56', '/resources/img/product-50.jpg', 3);
INSERT INTO `project` VALUES (51, '滇秘味天然果干坚果-助力脱贫', '徐曼晗', 10000, 8777, 7676, '2020-01-01', '68', '/resources/img/product-51.jpg', 3);
INSERT INTO `project` VALUES (52, '广西黑茶芊河六堡茶', '倪世渚', 10000, 9877, 8667, '2020-01-01', '87', '/resources/img/product-52.jpg', 3);
INSERT INTO `project` VALUES (53, '信阳红茶 众筹首发 蜜香浓郁', '司徒浩远', 10000, 5675, 4564, '2020-01-01', '76', '/resources/img/product-53.jpg', 3);
INSERT INTO `project` VALUES (54, '百年传承，古穗小米酒', '安墨染', 10000, 4565, 3564, '2020-01-01', '78', '/resources/img/product-54.jpg', 3);
INSERT INTO `project` VALUES (55, '醇厚白兰地 点燃温淳时刻', '顾天烨', 10000, 7656, 6567, '2020-01-01', '87', '/resources/img/product-55.jpg', 3);
INSERT INTO `project` VALUES (56, '酱香典范，宴请礼赠', '上官煜', 10000, 3455, 3453, '2020-01-01', '67', '/resources/img/product-56.jpg', 3);
INSERT INTO `project` VALUES (57, '传承古法，复兴上海老牌酒', '李隐尧', 10000, 2344, 1234, '2020-01-01', '54', '/resources/img/product-57.jpg', 3);
INSERT INTO `project` VALUES (58, '鲁家源老家粉丝 无添加', '凌辰飞', 10000, 5645, 3233, '2020-01-01', '45', '/resources/img/product-58.jpg', 3);
INSERT INTO `project` VALUES (59, '有机鲜稻米 让孩子吃的更安全', '凌辰轩', 10000, 5323, 5323, '2020-01-01', '34', '/resources/img/product-59.jpg', 3);
INSERT INTO `project` VALUES (60, '李渡元始匠心，元代窖·非遗酿', '柳岑枫', 10000, 3434, 2344, '2020-01-01', '34', '/resources/img/product-60.jpg', 3);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `e_mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_1
-- ----------------------------
DROP TABLE IF EXISTS `user_1`;
CREATE TABLE `user_1`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_1
-- ----------------------------
INSERT INTO `user_1` VALUES (1, 'dfd', 45);
INSERT INTO `user_1` VALUES (5, 'asd', 12);
INSERT INTO `user_1` VALUES (44, 'df', 65);
INSERT INTO `user_1` VALUES (90, 'das', 21);

-- ----------------------------
-- Table structure for user_order
-- ----------------------------
DROP TABLE IF EXISTS `user_order`;
CREATE TABLE `user_order`  (
  `um_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`um_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
