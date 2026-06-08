/*
 Navicat Premium Dump SQL

 Source Server         : demo
 Source Server Type    : MySQL
 Source Server Version : 80046 (8.0.46)
 Source Host           : localhost:3306
 Source Schema         : code2026

 Target Server Type    : MySQL
 Target Server Version : 80046 (8.0.46)
 File Encoding         : 65001

 Date: 08/06/2026 21:23:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin', '管理员', 'http://localhost:9090/files/download/1780853920264-lmgs2.jpg', '管理员');
INSERT INTO `admin` VALUES (2, 'admin1', 'admin', '李狗蛋', 'http://localhost:9090/files/download/1780335520528-微信图片_20260510153246_70_94.jpg', '管理员');

-- ----------------------------
-- Table structure for carousel
-- ----------------------------
DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `goods_id` int NULL DEFAULT NULL COMMENT '商品',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '轮播图信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carousel
-- ----------------------------
INSERT INTO `carousel` VALUES (1, 4, 'http://localhost:9090/files/download/1780758281365-L1.png');
INSERT INTO `carousel` VALUES (2, 3, 'http://localhost:9090/files/download/1780758688109-L2.png');
INSERT INTO `carousel` VALUES (3, 2, 'http://localhost:9090/files/download/1780758970366-L3.png');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `goods_id` int NULL DEFAULT NULL COMMENT '商品ID',
  `num` int NULL DEFAULT NULL COMMENT '数量',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '购物车信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '饼干');
INSERT INTO `category` VALUES (2, '果干');
INSERT INTO `category` VALUES (3, '文具');
INSERT INTO `category` VALUES (4, '辣条');
INSERT INTO `category` VALUES (5, '饮料');
INSERT INTO `category` VALUES (6, '奶茶');
INSERT INTO `category` VALUES (7, '咖啡');
INSERT INTO `category` VALUES (8, '巧克力');
INSERT INTO `category` VALUES (10, '生活用品');
INSERT INTO `category` VALUES (16, '薯片');

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `goods_id` int NULL DEFAULT NULL COMMENT '商品ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户收藏' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (13, 12, 18, '2026-06-07 16:30:20');
INSERT INTO `collect` VALUES (14, 11, 18, '2026-06-07 16:30:27');
INSERT INTO `collect` VALUES (16, 9, 14, '2026-06-08 02:02:34');
INSERT INTO `collect` VALUES (17, 9, 18, '2026-06-08 11:53:21');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `score` double(10, 1) NULL DEFAULT NULL COMMENT '评分',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评价内容',
  `user_id` int NULL DEFAULT NULL COMMENT '评价人',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '时间',
  `order_id` int NULL DEFAULT NULL COMMENT '订单ID',
  `goods_id` int NULL DEFAULT NULL COMMENT '商品ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '订单评价' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (3, 5.0, '非常满意', 17, '2026-06-07 23:48:57', 17, 12);
INSERT INTO `comment` VALUES (4, 5.0, '很喜欢！值得推荐', 19, '2026-06-08 01:53:38', 28, 8);
INSERT INTO `comment` VALUES (5, 5.0, '好用不贵', 19, '2026-06-08 01:53:51', 28, 6);
INSERT INTO `comment` VALUES (6, 3.5, '没味道！', 19, '2026-06-08 01:54:13', 28, 3);
INSERT INTO `comment` VALUES (7, 5.0, '好吃不贵', 19, '2026-06-08 01:54:28', 28, 2);
INSERT INTO `comment` VALUES (8, 5.0, '纵享丝滑', 19, '2026-06-08 01:54:44', 28, 4);
INSERT INTO `comment` VALUES (9, 5.0, '爽', 18, '2026-06-08 01:55:45', 20, 10);
INSERT INTO `comment` VALUES (10, 0.5, '拉完了！！！！', 18, '2026-06-08 01:56:02', 20, 11);
INSERT INTO `comment` VALUES (11, 5.0, '皓齿', 18, '2026-06-08 01:56:13', 19, 12);
INSERT INTO `comment` VALUES (12, 4.5, '夏季首选', 16, '2026-06-08 02:00:25', 27, 7);
INSERT INTO `comment` VALUES (13, 4.0, '还不错', 16, '2026-06-08 02:00:40', 26, 4);
INSERT INTO `comment` VALUES (14, 4.0, '可以', 15, '2026-06-08 02:01:08', 24, 4);
INSERT INTO `comment` VALUES (15, 4.5, '非常解渴', 15, '2026-06-08 02:01:19', 23, 8);
INSERT INTO `comment` VALUES (16, 4.5, '买这套文具，考试都自信了', 14, '2026-06-08 02:02:05', 22, 9);
INSERT INTO `comment` VALUES (17, 2.0, '太干了', 14, '2026-06-08 02:02:19', 21, 12);
INSERT INTO `comment` VALUES (18, 4.5, '111', 18, '2026-06-08 11:52:59', 29, 9);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图片',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '简介',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '详情',
  `store` int NULL DEFAULT 0 COMMENT '库存',
  `category_id` int NULL DEFAULT NULL COMMENT '分类ID',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '上架状态',
  `views` int NULL DEFAULT NULL COMMENT '浏览量',
  `sale_count` int NULL DEFAULT NULL COMMENT '销量',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建时间',
  `recommend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '推荐',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (2, '乐事（Lay\'s）薯片 (原味+黄瓜+青柠)  组合包 零食大礼包 休闲食品', 'http://localhost:9090/files/download/1780749926934-屏幕截图 2026-06-06 193943.png', 9.90, '乐事薯片大礼包太香了！每包都是独立小包装，一次一包超方便，不怕受潮。黄瓜、原味、红烩等几种口味都很经典，脆度在线，咸淡刚好。价格也很划算，囤来当追剧零食超合适，已经回购好几次啦！', '<p><img src=\"http://localhost:9090/files/download/1780752405028-屏幕截图 2026-06-06 212550.png\" alt=\"\" data-href=\"\" style=\"width: 381.00px;height: 619.25px;\"/></p>', 997, 16, '上架', 0, 103, '2026-06-06 21:19:23', '是');
INSERT INTO `goods` VALUES (3, '翠园全麦面包0脂0蔗糖黑麦吐司粗粮面包早餐健身代餐食品零食', 'http://localhost:9090/files/download/1780752168150-屏幕截图 2026-06-06 193821.png', 18.80, '碧翠园全麦吐司太惊艳啦！撕开包装，浓郁麦香扑鼻而来。面包体松软有嚼劲，全麦颗粒清晰可见，口感扎实又健康。早餐搭配牛奶，营养又美味；做三明治也超合适，饱腹感强，低卡又好吃，无限回购的宝藏面包！', '<p><img src=\"http://localhost:9090/files/download/1780752384057-屏幕截图 2026-06-06 212450.png\" alt=\"\" data-href=\"\" style=\"width: 471.32px;height: 793.04px;\"/></p>', 996, 1, '上架', 0, 4, '2026-06-06 21:26:30', '是');
INSERT INTO `goods` VALUES (4, '德芙（Dove）巧克力碗装休闲食品儿童充饥解馋零食糖果520情人节礼物生日礼品 香浓黑巧碗装', 'http://localhost:9090/files/download/1780754029154-屏幕截图 2026-06-06 215204.png', 68.80, '德芙经典丝滑牛奶巧克力真的百吃不厌！碗装独立小包装，干净方便好储存。入口绵密丝滑，奶香浓郁不齁甜，甜度刚刚好，解馋又治愈，日常追剧、下午茶、随身带都合适，性价比很高，无限回购款～', '<p><img src=\"http://localhost:9090/files/download/1780754080145-屏幕截图 2026-06-06 215306.png\" alt=\"\" data-href=\"\" style=\"width: 413.00px;height: 1205.36px;\"/></p>', 984, 8, '上架', 0, 16, '2026-06-06 21:54:46', '是');
INSERT INTO `goods` VALUES (5, 'F5速溶冷萃黑咖啡 冷萃风味纯享装冻干咖啡粉', 'http://localhost:9090/files/download/1780762848976-Snipaste_2026-06-07_00-13-29.png', 23.80, '☕️这款咖啡冲泡超方便，一包搞定，省时省力！🌟 🥛口感顺滑细腻，入口即化，完全没有颗粒感～😌 🔥烘焙火候恰到好处，酸与苦完美平衡，层次丰富！👍 📦包装严实，快递快，配送员服务贴心，全程安心！🚚 ✅整体体验满分，强烈推荐给爱喝咖啡的你！🎉', '<p><img src=\"http://localhost:9090/files/download/1780762947971-Snipaste_2026-06-07_00-22-08.png\" alt=\"\" data-href=\"\" style=\"width: 404.00px;height: 985.02px;\"/></p>', 1497, 7, '上架', 0, 0, '2026-06-07 00:22:55', '是');
INSERT INTO `goods` VALUES (6, '心相印抽纸茶语丝享3层面巾纸餐巾纸卫生纸宝宝可用加厚纸巾 3层', 'http://localhost:9090/files/download/1780762999486-Snipaste_2026-06-07_00-15-21.png', 19.90, '心相印餐巾纸真的是家中必备！纸质柔软亲肤，擦嘴擦手都特别舒服，三层加厚设计，湿水也不易破，吸水性超强。茶香清新，用着心情都变好了。性价比超高，整箱囤货也不心疼，全家都爱用，强烈推荐！', '<p><img src=\"http://localhost:9090/files/download/1780763063065-Snipaste_2026-06-07_00-24-13.png\" alt=\"\" data-href=\"\" style=\"width: 376.00px;height: 652.01px;\"/></p>', 3996, 10, '上架', 0, 4, '2026-06-07 00:24:29', '是');
INSERT INTO `goods` VALUES (7, '统一冰红茶整箱装新旧包装交替发货', 'http://localhost:9090/files/download/1780763131049-Snipaste_2026-06-07_00-16-21.png', 9.80, '统一冰红茶500ml，经典酸甜口感，冰镇后特别解暑。茶味与柠檬香平衡得很好，喝起来清爽不腻。包装严实无破损，物流速度快，价格比实体店实惠。夏天囤几瓶，运动后来一口非常过瘾，会继续回购！', '<p><img src=\"http://localhost:9090/files/download/1780763197199-Snipaste_2026-06-07_00-26-22.png\" alt=\"\" data-href=\"\" style=\"width: 425.00px;height: 723.68px;\"/></p>', 4980, 5, '上架', 0, 20, '2026-06-07 00:26:40', '是');
INSERT INTO `goods` VALUES (8, '）雪碧 Sprite 柠檬味 汽水 碳酸饮料 24瓶 整箱装', 'http://localhost:9090/files/download/1780763249330-Snipaste_2026-06-07_00-17-32.png', 33.33, '冰箱里的雪碧，冰镇过一口下去，气泡感十足，特别清爽，解渴很顶。瓶盖一拧就开，很方便，容量也够大，喝着不费劲。包装严实，送到时一点没漏，快递速度也快，整体体验挺顺心的。推荐', '<p><img src=\"http://localhost:9090/files/download/1780763327308-Snipaste_2026-06-07_00-28-35.png\" alt=\"\" data-href=\"\" style=\"\"/></p>', 288, 5, '上架', 0, 12, '2026-06-07 00:28:50', '是');
INSERT INTO `goods` VALUES (9, '晨光（M&G）【包邮】金榜题名学生考试透明套装中考高考专用文具套装 中性笔/涂卡笔/替芯/橡皮/尺规 15件套', 'http://localhost:9090/files/download/1780763354401-Snipaste_2026-06-07_00-18-25.png', 16.88, '高考最佳伴侣文具套装，真是“套装中的战斗机”！红色外壳喜庆又亮眼，里面的笔、本、尺子一应俱全，像是文具界的“全家福”。笔写起来顺滑流畅，本子纸质细腻，写字手感超棒，尺子刻度清晰，画线再也不怕歪歪扭扭。', '<p><img src=\"http://localhost:9090/files/download/1780763420459-Snipaste_2026-06-07_00-30-09.png\" alt=\"\" data-href=\"\" style=\"\"/></p>', 650, 3, '上架', 0, 76, '2026-06-07 00:30:22', '是');
INSERT INTO `goods` VALUES (10, '霸王丝爆辣辣条休闲零食办公室下午茶网红特辣儿时怀旧辣丝', 'http://localhost:9090/files/download/1780763452936-Snipaste_2026-06-07_00-18-52.png', 9.90, '霸王丝辣条口感绝了！丝丝入味，香辣适中不齁咸，越嚼越香，不会油腻上火。独立小包装干净卫生，方便携带，追剧解馋超合适。分量足、性价比高，辣味正宗越吃越上头，无限回购款！', '<p><img src=\"http://localhost:9090/files/download/1780763513542-Snipaste_2026-06-07_00-31-42.png\" alt=\"\" data-href=\"\" style=\"\"/></p>', 4996, 4, '上架', 0, 23, '2026-06-07 00:31:54', '是');
INSERT INTO `goods` VALUES (11, '伯牙绝弦奶茶轻乳茶牛乳奶茶粉冷热双泡茉莉风味', 'http://localhost:9090/files/download/1780763535966-Snipaste_2026-06-07_00-19-41.png', 12.88, '无限回购伯牙绝弦！茶香和奶香融合得恰到好处，入口先是茉莉清香，后有奶香萦绕。配料新鲜，口感清爽不齁甜，一杯下肚，解馋又舒心！', '<p><img src=\"http://localhost:9090/files/download/1780763588803-Snipaste_2026-06-07_00-32-55.png\" alt=\"\" data-href=\"\" style=\"\"/></p>', 396, 6, '上架', 0, 17, '2026-06-07 00:33:10', '是');
INSERT INTO `goods` VALUES (12, '芒果干厚切酸甜新鲜水果干果脯蜜饯学生宿舍零食网红休闲零食小吃 精选A级果', 'http://localhost:9090/files/download/1780763610918-Snipaste_2026-06-07_00-20-02.png', 34.88, '这款厚切芒果干果肉厚实饱满，大片完整无碎边，酸甜风味自然浓郁，锁鲜工艺到位，口感软糯有嚼劲，原料品质十分出众。', '<p><img src=\"http://localhost:9090/files/download/1780763667765-Snipaste_2026-06-07_00-34-17.png\" alt=\"\" data-href=\"\" style=\"\"/></p>', 4778, 2, '上架', 0, 20, '2026-06-07 00:34:29', '是');

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `goods_id` int NULL DEFAULT NULL COMMENT '商品ID',
  `num` int NULL DEFAULT NULL COMMENT '商品数量',
  `order_id` int NULL DEFAULT NULL COMMENT '订单ID',
  `goods_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品图片',
  `goods_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品名称',
  `goods_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '商品单价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '订单详情' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES (37, 10, 1, 13, 'http://localhost:9090/files/download/1780763452936-Snipaste_2026-06-07_00-18-52.png', '霸王丝爆辣辣条休闲零食办公室下午茶网红特辣儿时怀旧辣丝', 9.90);
INSERT INTO `order_detail` VALUES (38, 11, 4, 14, 'http://localhost:9090/files/download/1780763535966-Snipaste_2026-06-07_00-19-41.png', '伯牙绝弦奶茶轻乳茶牛乳奶茶粉冷热双泡茉莉风味', 12.88);
INSERT INTO `order_detail` VALUES (39, 12, 2, 15, 'http://localhost:9090/files/download/1780763610918-Snipaste_2026-06-07_00-20-02.png', '芒果干厚切酸甜新鲜水果干果脯蜜饯学生宿舍零食网红休闲零食小吃 精选A级果', 34.88);
INSERT INTO `order_detail` VALUES (40, 12, 1, 17, 'http://localhost:9090/files/download/1780763610918-Snipaste_2026-06-07_00-20-02.png', '芒果干厚切酸甜新鲜水果干果脯蜜饯学生宿舍零食网红休闲零食小吃 精选A级果', 34.88);
INSERT INTO `order_detail` VALUES (44, 12, 2, 19, 'http://localhost:9090/files/download/1780763610918-Snipaste_2026-06-07_00-20-02.png', '芒果干厚切酸甜新鲜水果干果脯蜜饯学生宿舍零食网红休闲零食小吃 精选A级果', 34.88);
INSERT INTO `order_detail` VALUES (45, 11, 3, 20, 'http://localhost:9090/files/download/1780763535966-Snipaste_2026-06-07_00-19-41.png', '伯牙绝弦奶茶轻乳茶牛乳奶茶粉冷热双泡茉莉风味', 12.88);
INSERT INTO `order_detail` VALUES (46, 10, 2, 20, 'http://localhost:9090/files/download/1780763452936-Snipaste_2026-06-07_00-18-52.png', '霸王丝爆辣辣条休闲零食办公室下午茶网红特辣儿时怀旧辣丝', 9.90);
INSERT INTO `order_detail` VALUES (47, 12, 7, 21, 'http://localhost:9090/files/download/1780763610918-Snipaste_2026-06-07_00-20-02.png', '芒果干厚切酸甜新鲜水果干果脯蜜饯学生宿舍零食网红休闲零食小吃 精选A级果', 34.88);
INSERT INTO `order_detail` VALUES (48, 9, 7, 22, 'http://localhost:9090/files/download/1780763354401-Snipaste_2026-06-07_00-18-25.png', '晨光（M&G）【包邮】金榜题名学生考试透明套装中考高考专用文具套装 中性笔/涂卡笔/替芯/橡皮/尺规 15件套', 16.88);
INSERT INTO `order_detail` VALUES (49, 8, 10, 23, 'http://localhost:9090/files/download/1780763249330-Snipaste_2026-06-07_00-17-32.png', '）雪碧 Sprite 柠檬味 汽水 碳酸饮料 24瓶 整箱装', 33.33);
INSERT INTO `order_detail` VALUES (50, 4, 5, 24, 'http://localhost:9090/files/download/1780754029154-屏幕截图 2026-06-06 215204.png', '德芙（Dove）巧克力碗装休闲食品儿童充饥解馋零食糖果520情人节礼物生日礼品 香浓黑巧碗装', 68.80);
INSERT INTO `order_detail` VALUES (52, 4, 10, 26, 'http://localhost:9090/files/download/1780754029154-屏幕截图 2026-06-06 215204.png', '德芙（Dove）巧克力碗装休闲食品儿童充饥解馋零食糖果520情人节礼物生日礼品 香浓黑巧碗装', 68.80);
INSERT INTO `order_detail` VALUES (53, 7, 20, 27, 'http://localhost:9090/files/download/1780763131049-Snipaste_2026-06-07_00-16-21.png', '统一冰红茶整箱装新旧包装交替发货', 9.80);
INSERT INTO `order_detail` VALUES (54, 4, 1, 28, 'http://localhost:9090/files/download/1780754029154-屏幕截图 2026-06-06 215204.png', '德芙（Dove）巧克力碗装休闲食品儿童充饥解馋零食糖果520情人节礼物生日礼品 香浓黑巧碗装', 68.80);
INSERT INTO `order_detail` VALUES (55, 2, 2, 28, 'http://localhost:9090/files/download/1780749926934-屏幕截图 2026-06-06 193943.png', '乐事（Lay\'s）薯片 (原味+黄瓜+青柠)  组合包 零食大礼包 休闲食品', 9.90);
INSERT INTO `order_detail` VALUES (56, 3, 4, 28, 'http://localhost:9090/files/download/1780752168150-屏幕截图 2026-06-06 193821.png', '翠园全麦面包0脂0蔗糖黑麦吐司粗粮面包早餐健身代餐食品零食', 18.80);
INSERT INTO `order_detail` VALUES (57, 6, 4, 28, 'http://localhost:9090/files/download/1780762999486-Snipaste_2026-06-07_00-15-21.png', '心相印抽纸茶语丝享3层面巾纸餐巾纸卫生纸宝宝可用加厚纸巾 3层', 19.90);
INSERT INTO `order_detail` VALUES (58, 8, 2, 28, 'http://localhost:9090/files/download/1780763249330-Snipaste_2026-06-07_00-17-32.png', '）雪碧 Sprite 柠檬味 汽水 碳酸饮料 24瓶 整箱装', 33.33);
INSERT INTO `order_detail` VALUES (59, 9, 3, 29, 'http://localhost:9090/files/download/1780763354401-Snipaste_2026-06-07_00-18-25.png', '晨光（M&G）【包邮】金榜题名学生考试透明套装中考高考专用文具套装 中性笔/涂卡笔/替芯/橡皮/尺规 15件套', 16.88);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `order_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单编号',
  `total` decimal(10, 2) NULL DEFAULT NULL COMMENT '总价格',
  `user_id` int NULL DEFAULT NULL COMMENT '下单人ID',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '状态',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '下单时间',
  `deliver_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '配送类型',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '收货地址',
  `deliver` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '配送信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '订单信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (13, '2026060717808423408754765', 9.90, 17, '已配送', '2026-06-07 22:25:40', '外送', '联系人：李狗蛋\n联系电话：14535673424\n收货地址：广州市天河区珠吉路660号', '配送员:小李\n联系方式:15748568798');
INSERT INTO `orders` VALUES (14, '2026060717808437135165821', 51.52, 17, '已取消', '2026-06-07 22:48:33', '自提', NULL, NULL);
INSERT INTO `orders` VALUES (15, '2026060717808437513078844', 69.76, 17, '已取消', '2026-06-07 22:49:11', '自提', NULL, NULL);
INSERT INTO `orders` VALUES (17, '2026060717808438525315196', 34.88, 17, '已完成', '2026-06-07 22:50:52', '自提', NULL, NULL);
INSERT INTO `orders` VALUES (19, '2026060817808540392486434', 69.76, 18, '已完成', '2026-06-08 01:40:39', '自提', NULL, NULL);
INSERT INTO `orders` VALUES (20, '2026060817808540517966041', 58.44, 18, '已完成', '2026-06-08 01:40:51', '自提', NULL, NULL);
INSERT INTO `orders` VALUES (21, '2026060817808541853890091', 244.16, 14, '已完成', '2026-06-08 01:43:05', '自提', NULL, NULL);
INSERT INTO `orders` VALUES (22, '2026060817808542110210563', 118.16, 14, '已完成', '2026-06-08 01:43:31', '自提', NULL, NULL);
INSERT INTO `orders` VALUES (23, '2026060817808543214510705', 333.30, 15, '已完成', '2026-06-08 01:45:21', '外送', '联系人：丽L\n联系电话：1723653403\n地址：梅州市五华县安流镇77号', '配送人：火柴\n1245446453643');
INSERT INTO `orders` VALUES (24, '2026060817808543390505411', 344.00, 15, '已完成', '2026-06-08 01:45:39', '自提', NULL, NULL);
INSERT INTO `orders` VALUES (26, '2026060817808544121328542', 688.00, 16, '已完成', '2026-06-08 01:46:52', '自提', NULL, NULL);
INSERT INTO `orders` VALUES (27, '2026060817808545159747862', 196.00, 16, '已完成', '2026-06-08 01:48:35', '外送', '联系人:昭阳\n联系电话：13434289342\n地址:苏州市旧城以西', '联系人：米彩\n联系电话：137234095325\n');
INSERT INTO `orders` VALUES (28, '2026060817808545802724200', 310.06, 19, '已完成', '2026-06-08 01:49:40', '自提', NULL, NULL);
INSERT INTO `orders` VALUES (29, '2026060817808907093521763', 50.64, 18, '已完成', '2026-06-08 11:51:49', '自提', NULL, NULL);

-- ----------------------------
-- Table structure for recharge
-- ----------------------------
DROP TABLE IF EXISTS `recharge`;
CREATE TABLE `recharge`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `money` decimal(10, 2) NULL DEFAULT NULL COMMENT '充值金额',
  `user_id` int NULL DEFAULT NULL COMMENT '充值用户',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '支付方式',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '充值时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '充值记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recharge
-- ----------------------------
INSERT INTO `recharge` VALUES (1, 1000.00, 18, '微信支付', '2026-06-07 17:29:28');
INSERT INTO `recharge` VALUES (2, 1004.00, 18, '支付宝', '2026-06-07 17:29:35');
INSERT INTO `recharge` VALUES (3, 1.00, 17, '支付宝', '2026-06-07 17:33:11');
INSERT INTO `recharge` VALUES (4, 133.00, 17, '微信支付', '2026-06-07 17:33:15');
INSERT INTO `recharge` VALUES (5, 300.00, 17, '微信支付', '2026-06-07 22:25:28');
INSERT INTO `recharge` VALUES (6, 500.00, 14, '支付宝', '2026-06-08 01:42:40');
INSERT INTO `recharge` VALUES (7, 700.00, 15, '微信支付', '2026-06-08 01:44:09');
INSERT INTO `recharge` VALUES (8, 1000.00, 16, '支付宝', '2026-06-08 01:46:14');
INSERT INTO `recharge` VALUES (9, 1300.00, 19, '支付宝', '2026-06-08 01:49:07');
INSERT INTO `recharge` VALUES (10, 123.00, 18, '微信支付', '2026-06-08 11:51:35');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  `account` decimal(10, 2) NULL DEFAULT NULL COMMENT '账户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '普通用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (14, 'aaa', '123', '敏敏', 'http://localhost:9090/files/download/1780856320213-Eason2.jpg', '普通用户', 248.68);
INSERT INTO `user` VALUES (15, 'dad', '123456', '丽L', 'http://localhost:9090/files/download/1780853878189-hll.jpg', '普通用户', 22.70);
INSERT INTO `user` VALUES (16, 'adaddd', '123456', '梁静茹', 'http://localhost:9090/files/download/1780853852346-ljr.jpg', '普通用户', 116.00);
INSERT INTO `user` VALUES (17, 'dddd', '123456', 'Jay', 'http://localhost:9090/files/download/1780853839465-Jay2.jpg', '普通用户', 228.10);
INSERT INTO `user` VALUES (18, 'mmm', '123', '李狗蛋', 'http://localhost:9090/files/download/1780853827071-lmgs1.jpg', '普通用户', 1742.24);
INSERT INTO `user` VALUES (19, '1111', '123456', 'Eason', 'http://localhost:9090/files/download/1780853800411-Eason.jpg', '普通用户', 989.94);

SET FOREIGN_KEY_CHECKS = 1;
