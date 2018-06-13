/*
Navicat Oracle Data Transfer
Oracle Client Version : 12.1.0.2.0

Source Server         : XYL
Source Server Version : 120100
Source Host           : 219.237.221.205:1521
Source Schema         : TYXYL

Target Server Type    : ORACLE
Target Server Version : 120100
File Encoding         : 65001

Date: 2017-05-07 10:13:27
*/


-- ----------------------------
-- Table structure for ADVICE
-- ----------------------------
DROP TABLE "TYXYL"."ADVICE";
CREATE TABLE "TYXYL"."ADVICE" (
"ID" NUMBER NOT NULL ,
"USER_ID" NUMBER NULL ,
"CONTENT" LONG NOT NULL ,
"NAME" VARCHAR2(20 BYTE) NULL ,
"CONTANT" VARCHAR2(255 BYTE) NULL ,
"ISREAD" NUMBER NOT NULL ,
"CREATE_TIME" DATE NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of ADVICE
-- ----------------------------

-- ----------------------------
-- Table structure for BEAUTY
-- ----------------------------
DROP TABLE "TYXYL"."BEAUTY";
CREATE TABLE "TYXYL"."BEAUTY" (
"ID" NUMBER NOT NULL ,
"USER_ID" NUMBER NOT NULL ,
"TITLE" VARCHAR2(255 BYTE) NOT NULL ,
"IMG" CLOB NOT NULL ,
"CONTENT" CLOB NULL ,
"BVIEW" NUMBER NOT NULL ,
"BLEVEL" NUMBER NOT NULL ,
"KEYWORD" VARCHAR2(255 BYTE) NULL ,
"CREATE_TIME" DATE NOT NULL ,
"DELETED" NUMBER NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of BEAUTY
-- ----------------------------
INSERT INTO "TYXYL"."BEAUTY" VALUES ('3', '2', 'we', '{"b56bd0caa9114b65a8e8233deda22042.png":"sd"}', 'ds', '0', '0', '2', TO_DATE('2017-05-06 22:10:28', 'YYYY-MM-DD HH24:MI:SS'), '0');

-- ----------------------------
-- Table structure for BLOG
-- ----------------------------
DROP TABLE "TYXYL"."BLOG";
CREATE TABLE "TYXYL"."BLOG" (
"ID" NUMBER(11) NOT NULL ,
"USER_ID" NUMBER(11) NOT NULL ,
"TITLE" VARCHAR2(255 BYTE) NOT NULL ,
"CONTENT" CLOB NOT NULL ,
"CONTENT_SHOW" VARCHAR2(255 BYTE) NULL ,
"KEYWORD" VARCHAR2(255 BYTE) NULL ,
"ISPUBLIC" NUMBER(11) NOT NULL ,
"DELETED" NUMBER(11) NOT NULL ,
"CATEGORY" NUMBER(11) NOT NULL ,
"BVIEW" NUMBER(11) NOT NULL ,
"TYPE" NUMBER(11) NOT NULL ,
"IMAGE" VARCHAR2(255 BYTE) NULL ,
"CREATE_TIME" DATE NOT NULL ,
"ZHUANZAI" NUMBER(11) NOT NULL ,
"ZHUANZAIURL" VARCHAR2(255 BYTE) NULL ,
"EDITORTYPE" NUMBER(11) NOT NULL ,
"BLEVEL" NUMBER(11) NOT NULL ,
"SHOWSIDE" NUMBER(11) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of BLOG
-- ----------------------------
INSERT INTO "TYXYL"."BLOG" VALUES ('5', '2', 'he', 'ee', 'ee', 'he', '1', '0', '1', '0', '0', null, TO_DATE('2017-05-06 22:49:17', 'YYYY-MM-DD HH24:MI:SS'), '0', null, '0', '0', '1');
INSERT INTO "TYXYL"."BLOG" VALUES ('1', '1', '欢迎使用校友录', '欢迎大家使用校友录，如果您看的这篇日志的话说明您已经差不多部署成功了。', '欢迎大家使用校友录，如果您看的这篇日志的话说明您已经差不多部署成功了。', '校友录', '1', '0', '1', '1', '0', null, TO_DATE('2016-01-12 11:01:54', 'YYYY-MM-DD HH24:MI:SS'), '0', null, '0', '3', '1');

-- ----------------------------
-- Table structure for BLOGCATEGORY
-- ----------------------------
DROP TABLE "TYXYL"."BLOGCATEGORY";
CREATE TABLE "TYXYL"."BLOGCATEGORY" (
"ID" NUMBER(11) NOT NULL ,
"CATEGORY" VARCHAR2(20 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of BLOGCATEGORY
-- ----------------------------
INSERT INTO "TYXYL"."BLOGCATEGORY" VALUES ('1', '心情');
INSERT INTO "TYXYL"."BLOGCATEGORY" VALUES ('2', '生活');
INSERT INTO "TYXYL"."BLOGCATEGORY" VALUES ('3', '学习');
INSERT INTO "TYXYL"."BLOGCATEGORY" VALUES ('4', '校园');
INSERT INTO "TYXYL"."BLOGCATEGORY" VALUES ('5', '假期');
INSERT INTO "TYXYL"."BLOGCATEGORY" VALUES ('6', '旅游');
INSERT INTO "TYXYL"."BLOGCATEGORY" VALUES ('7', '兼职');
INSERT INTO "TYXYL"."BLOGCATEGORY" VALUES ('8', '写生');
INSERT INTO "TYXYL"."BLOGCATEGORY" VALUES ('9', '社团');
INSERT INTO "TYXYL"."BLOGCATEGORY" VALUES ('10', '英语角');
INSERT INTO "TYXYL"."BLOGCATEGORY" VALUES ('11', '足球');
INSERT INTO "TYXYL"."BLOGCATEGORY" VALUES ('12', '篮球');
INSERT INTO "TYXYL"."BLOGCATEGORY" VALUES ('13', '电影');
INSERT INTO "TYXYL"."BLOGCATEGORY" VALUES ('14', '聚餐');
INSERT INTO "TYXYL"."BLOGCATEGORY" VALUES ('15', '社会调查');
INSERT INTO "TYXYL"."BLOGCATEGORY" VALUES ('16', '毕业会');
INSERT INTO "TYXYL"."BLOGCATEGORY" VALUES ('17', '小吃');
INSERT INTO "TYXYL"."BLOGCATEGORY" VALUES ('18', '随笔');
INSERT INTO "TYXYL"."BLOGCATEGORY" VALUES ('19', '娱乐');
INSERT INTO "TYXYL"."BLOGCATEGORY" VALUES ('20', '其他');

-- ----------------------------
-- Table structure for GONGGAO
-- ----------------------------
DROP TABLE "TYXYL"."GONGGAO";
CREATE TABLE "TYXYL"."GONGGAO" (
"ID" NUMBER(11) NOT NULL ,
"TYPE" NUMBER(11) NOT NULL ,
"CONTENT" CLOB NOT NULL ,
"URL" VARCHAR2(255 BYTE) NULL ,
"DELETED" NUMBER NOT NULL ,
"SN" NUMBER NOT NULL ,
"CREATE_TIME" DATE NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of GONGGAO
-- ----------------------------
INSERT INTO "TYXYL"."GONGGAO" VALUES ('2', '0', 'we', 'http://localhost:8080/xylblog/admins/gonggaoAdd/', '0', '2', TO_DATE('2017-05-07 02:11:06', 'YYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for IPLOG
-- ----------------------------
DROP TABLE "TYXYL"."IPLOG";
CREATE TABLE "TYXYL"."IPLOG" (
"ID" NUMBER(11) NOT NULL ,
"IP" VARCHAR2(50 BYTE) NOT NULL ,
"URL" VARCHAR2(255 BYTE) NULL ,
"PARAMS" VARCHAR2(255 BYTE) NULL ,
"CREATE_TIME" DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of IPLOG
-- ----------------------------
INSERT INTO "TYXYL"."IPLOG" VALUES ('3', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('5', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('46', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 18:04:19', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('47', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 18:10:26', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('48', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 18:13:04', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('49', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 18:19:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('50', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 18:21:03', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('51', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 18:22:25', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('52', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 18:28:43', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('53', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 18:29:35', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('54', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 18:30:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('55', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 18:31:15', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('56', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 18:31:46', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('57', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 18:32:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('58', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 18:34:13', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('59', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 18:35:31', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('60', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 18:36:03', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('61', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 18:51:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('62', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 18:52:44', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('63', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 18:52:47', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('64', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 18:53:23', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('65', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 18:55:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('66', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 18:55:55', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('67', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 18:56:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('68', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 18:57:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('69', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 19:00:39', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('70', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 19:02:49', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('71', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 19:03:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('72', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 19:03:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('73', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 19:03:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('76', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 19:07:49', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('77', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 19:08:48', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('78', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 19:09:03', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('79', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=hecore}]', TO_DATE('2017-05-06 19:09:13', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('80', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=hecore}]', TO_DATE('2017-05-06 19:09:52', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('81', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=hecore}]', TO_DATE('2017-05-06 19:10:31', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('82', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=hecore}]', TO_DATE('2017-05-06 19:10:51', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('83', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 19:17:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('84', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=hecore}]', TO_DATE('2017-05-06 19:17:39', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('85', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 19:17:40', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('86', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-06 19:17:47', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('87', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-06 19:18:54', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('88', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-06 19:19:59', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('89', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-06 19:20:59', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('90', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-06 19:22:23', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('91', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/logout', '[]', TO_DATE('2017-05-06 19:22:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('92', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 19:22:33', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('93', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 19:22:35', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('94', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=latest}]', TO_DATE('2017-05-06 19:22:39', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('95', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=latest}]', TO_DATE('2017-05-06 19:23:41', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('96', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=latest}]', TO_DATE('2017-05-06 19:24:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('97', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=latest}]', TO_DATE('2017-05-06 19:27:35', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('98', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=latest}]', TO_DATE('2017-05-06 19:28:08', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('99', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 19:28:09', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('134', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/%5B%E5%98%BB%E5%98%BB%5D', '[]', TO_DATE('2017-05-06 20:04:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('135', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 20:05:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('136', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 20:05:03', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('137', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-06 20:05:06', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('138', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 20:05:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('139', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 20:05:08', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('140', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=latest}]', TO_DATE('2017-05-06 20:05:12', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('141', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=hecore}]', TO_DATE('2017-05-06 20:05:26', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('142', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 20:05:29', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('143', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 20:09:13', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('144', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 20:09:16', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('145', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 20:09:20', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('146', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 20:10:38', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('147', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 20:10:41', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('148', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 20:10:44', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('149', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 20:11:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('150', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 20:13:26', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('151', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/add/', '[]', TO_DATE('2017-05-06 20:13:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('152', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/add/', '[]', TO_DATE('2017-05-06 20:13:41', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('153', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/add/', '[]', TO_DATE('2017-05-06 20:13:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('154', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/add/', '[]', TO_DATE('2017-05-06 20:13:44', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('155', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/update', '[]', TO_DATE('2017-05-06 20:14:49', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('156', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/update', '[]', TO_DATE('2017-05-06 20:16:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('210', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=hecore}]', TO_DATE('2017-05-06 20:31:12', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('211', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=hecore}]', TO_DATE('2017-05-06 20:31:21', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('212', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 20:31:25', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('213', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=hecore}]', TO_DATE('2017-05-06 20:31:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('214', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=he}]', TO_DATE('2017-05-06 20:31:38', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('215', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 20:31:39', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('216', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 20:31:40', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('217', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/add/', '[]', TO_DATE('2017-05-06 20:31:44', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('218', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/add/', '[]', TO_DATE('2017-05-06 20:31:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('219', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/saveBeauty/', '[]', TO_DATE('2017-05-06 20:31:51', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('220', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/save/', '[{imgurl={&quot;SWFUpload_0_0&quot;:&quot;8ac1b7dcba8f43c3b6e81a43676ab7d1.jpg&quot;}}, {beautykeyword=231}, {beautytitle=112}, {beautycontent=333}, {imgcontent={&quot;SWFUpload_0_0&quot;:&quot;122&quot;}}]', TO_DATE('2017-05-06 20:32:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('2', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', null);
INSERT INTO "TYXYL"."IPLOG" VALUES ('105', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/', '[]', TO_DATE('2017-05-06 19:32:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('126', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/%E8%AF%B7%E8%BE%93%E5%85%A5%E5%9B%BE%E7%89%87%E5%9C%B0%E5%9D%80', '[]', TO_DATE('2017-05-06 20:03:29', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('127', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/%5B%E5%98%BB%E5%98%BB%5D', '[]', TO_DATE('2017-05-06 20:03:29', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('128', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 20:03:34', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('129', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/', '[]', TO_DATE('2017-05-06 20:03:35', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('130', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/', '[]', TO_DATE('2017-05-06 20:03:41', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('131', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/', '[]', TO_DATE('2017-05-06 20:04:53', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('132', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/%E8%AF%B7%E8%BE%93%E5%85%A5%E5%9B%BE%E7%89%87%E5%9C%B0%E5%9D%80', '[]', TO_DATE('2017-05-06 20:04:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('221', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/save/', '[{imgurl={&quot;SWFUpload_0_0&quot;:&quot;8ac1b7dcba8f43c3b6e81a43676ab7d1.jpg&quot;}}, {beautykeyword=231}, {beautytitle=112}, {beautycontent=333}, {imgcontent={&quot;SWFUpload_0_0&quot;:&quot;122&quot;}}]', TO_DATE('2017-05-06 20:32:23', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('222', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/save/', '[{imgurl={&quot;SWFUpload_0_0&quot;:&quot;8ac1b7dcba8f43c3b6e81a43676ab7d1.jpg&quot;}}, {beautykeyword=231}, {beautytitle=112}, {beautycontent=333}, {imgcontent={&quot;SWFUpload_0_0&quot;:&quot;122&quot;}}]', TO_DATE('2017-05-06 20:33:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('223', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/save/', '[{imgurl={&quot;SWFUpload_0_0&quot;:&quot;8ac1b7dcba8f43c3b6e81a43676ab7d1.jpg&quot;}}, {beautykeyword=231}, {beautytitle=112}, {beautycontent=333}, {imgcontent={&quot;SWFUpload_0_0&quot;:&quot;122&quot;}}]', TO_DATE('2017-05-06 20:33:14', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('234', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/add/', '[]', TO_DATE('2017-05-06 20:57:34', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('235', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 20:57:35', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('236', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=he}]', TO_DATE('2017-05-06 20:57:43', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('237', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 20:57:46', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('238', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 20:57:48', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('239', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/add/', '[]', TO_DATE('2017-05-06 20:57:52', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('240', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/add/', '[]', TO_DATE('2017-05-06 20:57:53', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('241', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/saveBeauty/', '[]', TO_DATE('2017-05-06 20:58:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('242', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/save/', '[{imgurl={&quot;SWFUpload_0_0&quot;:&quot;0af9fe54a7a3499c9e0b942e6c9b16ed.jpg&quot;}}, {beautykeyword=32}, {beautytitle=12}, {beautycontent=23}, {imgcontent={&quot;SWFUpload_0_0&quot;:&quot;2323&quot;}}]', TO_DATE('2017-05-06 20:58:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('243', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/add/', '[]', TO_DATE('2017-05-06 21:06:08', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('244', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/add/', '[]', TO_DATE('2017-05-06 21:06:09', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('245', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 21:06:15', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('246', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 21:06:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('247', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/', '[]', TO_DATE('2017-05-06 21:06:19', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('248', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/add', '[]', TO_DATE('2017-05-06 21:06:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('249', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 21:06:35', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('261', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 21:12:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('275', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 21:16:14', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('276', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 21:16:40', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('277', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 21:16:39', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('278', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 21:16:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('279', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 21:16:52', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('280', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=hot}]', TO_DATE('2017-05-06 21:16:54', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('281', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=hot}]', TO_DATE('2017-05-06 21:17:10', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('282', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=hot}]', TO_DATE('2017-05-06 21:17:26', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('283', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=he}]', TO_DATE('2017-05-06 21:17:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('284', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 21:17:33', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('285', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 21:17:39', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('286', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/toEditAvatar', '[]', TO_DATE('2017-05-06 21:17:41', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('287', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/add/', '[]', TO_DATE('2017-05-06 21:17:43', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('288', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 21:18:04', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('289', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 21:18:34', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('290', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 21:18:50', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('291', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 21:19:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('292', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 21:19:13', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('293', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=he}]', TO_DATE('2017-05-06 21:19:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('294', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 21:19:23', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('295', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 21:19:31', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('296', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/add/', '[]', TO_DATE('2017-05-06 21:19:34', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('297', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 21:19:40', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('315', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 21:44:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('316', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=he}]', TO_DATE('2017-05-06 21:44:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('317', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 21:44:29', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('318', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 21:44:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('319', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 21:44:33', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('320', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/add', '[]', TO_DATE('2017-05-06 21:44:35', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('321', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 21:44:36', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('322', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/saveBeauty/', '[]', TO_DATE('2017-05-06 21:44:43', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('339', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/save/', '[{imgurl={&quot;SWFUpload_0_0&quot;:&quot;65dd641c90524659aab547087a50559d.jpg&quot;}}, {beautykeyword=23}, {beautytitle=we}, {beautycontent=23}, {imgcontent={&quot;SWFUpload_0_0&quot;:&quot;23&quot;}}]', TO_DATE('2017-05-06 22:02:34', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('340', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 22:02:35', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('341', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 22:05:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('350', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 22:09:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('351', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 22:09:38', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('352', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/', '[]', TO_DATE('2017-05-06 22:09:43', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('353', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=latest}]', TO_DATE('2017-05-06 22:09:46', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('354', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=hot}]', TO_DATE('2017-05-06 22:09:50', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('355', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 22:09:51', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('356', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=he}]', TO_DATE('2017-05-06 22:10:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('357', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 22:10:04', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('358', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 22:10:13', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('359', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/add', '[]', TO_DATE('2017-05-06 22:10:15', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('360', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 22:10:16', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('361', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/saveBeauty/', '[]', TO_DATE('2017-05-06 22:10:23', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('1', 'he', 'bb', 'cc', TO_DATE('2017-05-06 00:04:47', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('8', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/register', '[]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('9', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('10', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=hecore}]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('11', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=hecore}]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('14', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=hecore}]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('38', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 13:41:53', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('39', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 13:42:08', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('40', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 13:42:16', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('41', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/', '[]', TO_DATE('2017-05-06 13:42:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('225', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/add/', '[]', TO_DATE('2017-05-06 20:52:47', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('268', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 21:15:15', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('269', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 21:15:16', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('270', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=he}]', TO_DATE('2017-05-06 21:15:23', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('271', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 21:15:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('272', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 21:15:26', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('273', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/add/', '[]', TO_DATE('2017-05-06 21:15:29', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('274', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 21:15:34', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('298', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 21:29:50', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('300', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 21:30:26', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('301', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 21:30:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('302', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=he}]', TO_DATE('2017-05-06 21:30:34', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('303', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 21:30:35', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('304', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 21:30:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('305', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/add/', '[]', TO_DATE('2017-05-06 21:30:39', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('306', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 21:30:46', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('307', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 21:36:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('308', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 21:36:13', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('309', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 21:38:56', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('310', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 21:38:58', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('311', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/add', '[]', TO_DATE('2017-05-06 21:38:59', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('312', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 21:39:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('313', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/saveBeauty/', '[]', TO_DATE('2017-05-06 21:39:08', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('314', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/save/', '[{imgurl={&quot;SWFUpload_0_0&quot;:&quot;8dfe128551a04311b6e70f8bd40f3042.jpg&quot;}}, {beautykeyword=23}, {beautytitle=12}, {beautycontent=EW}, {imgcontent={&quot;SWFUpload_0_0&quot;:&quot;E&quot;}}]', TO_DATE('2017-05-06 21:39:13', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('342', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 22:07:59', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('343', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=he}]', TO_DATE('2017-05-06 22:08:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('344', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 22:08:08', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('345', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 22:08:09', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('346', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/add/', '[]', TO_DATE('2017-05-06 22:08:13', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('347', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 22:08:39', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('348', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 22:08:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('349', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 22:08:44', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('362', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/save/', '[{imgurl={&quot;SWFUpload_0_0&quot;:&quot;b56bd0caa9114b65a8e8233deda22042.png&quot;}}, {beautykeyword=2}, {beautytitle=we}, {beautycontent=ds}, {imgcontent={&quot;SWFUpload_0_0&quot;:&quot;sd&quot;}}]', TO_DATE('2017-05-06 22:10:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('363', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 22:10:29', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('364', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 22:10:35', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('365', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 22:10:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('366', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 22:10:38', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('367', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/', '[]', TO_DATE('2017-05-06 22:10:40', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('368', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/%E8%AF%B7%E8%BE%93%E5%85%A5%E5%9B%BE%E7%89%87%E5%9C%B0%E5%9D%80', '[]', TO_DATE('2017-05-06 22:10:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('369', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/%5B%E5%98%BB%E5%98%BB%5D', '[]', TO_DATE('2017-05-06 22:10:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('370', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/%5B%E6%8C%A4%E7%9C%BC%5D', '[]', TO_DATE('2017-05-06 22:10:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('371', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/', '[]', TO_DATE('2017-05-06 22:10:44', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('372', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/add', '[]', TO_DATE('2017-05-06 22:10:48', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('373', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 22:11:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('374', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 22:14:43', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('375', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 22:15:34', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('376', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 22:16:51', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('377', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=he}]', TO_DATE('2017-05-06 22:16:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('378', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 22:16:58', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('379', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 22:17:03', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('380', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/add/', '[]', TO_DATE('2017-05-06 22:17:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('381', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 22:17:14', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('382', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 22:19:23', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('383', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 22:19:25', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('384', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=he}]', TO_DATE('2017-05-06 22:19:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('385', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 22:19:33', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('386', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 22:19:35', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('387', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/add/', '[]', TO_DATE('2017-05-06 22:19:39', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('388', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 22:19:46', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('389', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 22:21:36', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('390', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 22:21:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('391', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=he}]', TO_DATE('2017-05-06 22:21:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('392', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 22:21:46', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('393', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 22:21:50', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('394', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/add/', '[]', TO_DATE('2017-05-06 22:21:56', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('395', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 22:22:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('396', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 22:24:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('397', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 22:24:58', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('398', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=he}]', TO_DATE('2017-05-06 22:25:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('399', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 22:25:08', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('400', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 22:25:15', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('401', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/add/', '[]', TO_DATE('2017-05-06 22:25:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('402', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 22:25:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('403', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 22:25:36', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('404', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 22:25:50', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('6', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('7', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/register', '[]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('12', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('13', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=hecore}]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('15', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('16', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=hecore}]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('17', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('18', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('19', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('20', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=latest}]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('21', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/', '[]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('22', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=hot}]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('23', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('24', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=hecore}]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('42', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 16:31:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('43', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 16:33:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('44', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 16:33:41', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('45', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 16:34:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('104', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 19:32:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('106', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/', '[]', TO_DATE('2017-05-06 19:32:48', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('107', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/', '[]', TO_DATE('2017-05-06 19:38:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('108', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/', '[]', TO_DATE('2017-05-06 19:46:53', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('109', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/', '[]', TO_DATE('2017-05-06 19:49:08', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('110', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=latest}]', TO_DATE('2017-05-06 19:49:14', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('111', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=hot}]', TO_DATE('2017-05-06 19:49:16', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('112', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/', '[]', TO_DATE('2017-05-06 19:56:08', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('113', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=latest}]', TO_DATE('2017-05-06 19:56:10', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('114', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=hot}]', TO_DATE('2017-05-06 19:57:08', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('115', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=hot}]', TO_DATE('2017-05-06 19:57:59', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('116', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=hot}]', TO_DATE('2017-05-06 19:58:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('117', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 19:59:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('118', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=hot}]', TO_DATE('2017-05-06 19:59:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('119', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=hot}]', TO_DATE('2017-05-06 20:01:38', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('120', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 20:03:15', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('121', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/', '[]', TO_DATE('2017-05-06 20:03:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('122', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 20:03:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('123', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 20:03:26', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('124', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/', '[]', TO_DATE('2017-05-06 20:03:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('125', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/%5B%E6%8C%A4%E7%9C%BC%5D', '[]', TO_DATE('2017-05-06 20:03:29', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('133', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/%5B%E6%8C%A4%E7%9C%BC%5D', '[]', TO_DATE('2017-05-06 20:04:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('224', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/save/', '[{imgurl={&quot;SWFUpload_0_0&quot;:&quot;8ac1b7dcba8f43c3b6e81a43676ab7d1.jpg&quot;}}, {beautykeyword=231}, {beautytitle=112}, {beautycontent=333}, {imgcontent={&quot;SWFUpload_0_0&quot;:&quot;122&quot;}}]', TO_DATE('2017-05-06 20:52:47', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('226', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 20:52:52', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('227', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=he}]', TO_DATE('2017-05-06 20:52:59', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('228', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 20:53:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('229', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 20:53:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('230', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/add/', '[]', TO_DATE('2017-05-06 20:53:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('231', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/add/', '[]', TO_DATE('2017-05-06 20:53:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('232', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/saveBeauty/', '[]', TO_DATE('2017-05-06 20:53:14', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('233', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/save/', '[{imgurl={&quot;SWFUpload_0_0&quot;:&quot;9cb7cf15e1a44251b24e1fd2fdeb617f.jpg&quot;}}, {beautykeyword=12}, {beautytitle=12}, {beautycontent=23}, {imgcontent={&quot;SWFUpload_0_0&quot;:&quot;12&quot;}}]', TO_DATE('2017-05-06 20:53:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('250', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 21:07:39', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('251', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=hecore}]', TO_DATE('2017-05-06 21:07:54', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('252', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=he}]', TO_DATE('2017-05-06 21:08:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('253', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 21:08:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('254', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 21:08:12', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('255', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 21:08:14', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('256', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/', '[]', TO_DATE('2017-05-06 21:08:16', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('257', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/add', '[]', TO_DATE('2017-05-06 21:08:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('258', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 21:08:31', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('259', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 21:11:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('260', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 21:12:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('262', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=he}]', TO_DATE('2017-05-06 21:12:15', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('263', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 21:12:16', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('264', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 21:12:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('265', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/add/', '[]', TO_DATE('2017-05-06 21:12:21', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('266', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 21:12:36', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('267', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 21:14:39', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('299', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 21:30:26', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('323', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 21:57:59', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('324', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=he}]', TO_DATE('2017-05-06 21:58:16', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('325', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 21:58:19', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('326', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 21:58:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('327', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/add/', '[]', TO_DATE('2017-05-06 21:58:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('328', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/add/', '[]', TO_DATE('2017-05-06 21:58:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('329', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/saveBeauty/', '[]', TO_DATE('2017-05-06 21:58:41', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('330', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/save/', '[{imgurl={&quot;SWFUpload_0_0&quot;:&quot;5e9115f8ba9d42a996dd0b09e31dfe71.jpg&quot;}}, {beautykeyword=23}, {beautytitle=3}, {beautycontent=333}, {imgcontent={&quot;SWFUpload_0_0&quot;:&quot;44&quot;}}]', TO_DATE('2017-05-06 21:58:46', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('331', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 22:01:06', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('332', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=he}]', TO_DATE('2017-05-06 22:02:06', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('333', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 22:02:08', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('334', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 22:02:10', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('335', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/add/', '[]', TO_DATE('2017-05-06 22:02:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('336', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/add/', '[]', TO_DATE('2017-05-06 22:02:21', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('337', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/add/', '[]', TO_DATE('2017-05-06 22:02:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('338', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/saveBeauty/', '[]', TO_DATE('2017-05-06 22:02:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('4', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('25', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=hecore}]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('26', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=hecore}]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('27', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('28', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('29', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('30', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('31', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('32', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('33', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('34', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 13:04:09', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('35', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 13:04:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('36', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 13:05:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('37', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=hecore}]', TO_DATE('2017-05-06 13:06:10', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('74', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 19:04:04', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('75', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 19:05:25', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('100', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=hecore}]', TO_DATE('2017-05-06 19:28:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('101', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 19:28:19', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('102', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/', '[]', TO_DATE('2017-05-06 19:28:23', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('103', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/', '[]', TO_DATE('2017-05-06 19:32:19', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('157', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/update', '[]', TO_DATE('2017-05-06 20:16:56', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('158', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 20:16:58', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('159', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=HECORE}]', TO_DATE('2017-05-06 20:17:09', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('160', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=HECORE}]', TO_DATE('2017-05-06 20:17:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('161', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 20:17:21', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('162', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=hecore}]', TO_DATE('2017-05-06 20:17:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('163', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 20:17:33', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('164', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 20:17:35', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('165', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/update', '[]', TO_DATE('2017-05-06 20:18:06', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('166', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/update', '[]', TO_DATE('2017-05-06 20:19:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('167', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/update', '[]', TO_DATE('2017-05-06 20:20:20', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('168', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/update', '[]', TO_DATE('2017-05-06 20:21:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('169', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo', '[]', TO_DATE('2017-05-06 20:21:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('170', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/toEditAvatar', '[]', TO_DATE('2017-05-06 20:21:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('171', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo', '[]', TO_DATE('2017-05-06 20:21:21', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('172', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/toEditAvatar', '[]', TO_DATE('2017-05-06 20:21:23', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('173', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/updatePassword', '[]', TO_DATE('2017-05-06 20:21:31', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('174', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/updatePassword', '[]', TO_DATE('2017-05-06 20:22:08', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('175', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/updatePassword', '[]', TO_DATE('2017-05-06 20:22:25', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('176', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/updatePassword', '[]', TO_DATE('2017-05-06 20:22:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('177', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/updatePassword', '[]', TO_DATE('2017-05-06 20:24:19', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('178', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo', '[]', TO_DATE('2017-05-06 20:24:20', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('179', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/toEditAvatar', '[]', TO_DATE('2017-05-06 20:24:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('180', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo', '[]', TO_DATE('2017-05-06 20:24:23', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('181', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/toEditAvatar', '[]', TO_DATE('2017-05-06 20:24:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('182', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/toEditAvatar', '[]', TO_DATE('2017-05-06 20:24:29', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('183', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo', '[]', TO_DATE('2017-05-06 20:24:40', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('184', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/toEditAvatar', '[]', TO_DATE('2017-05-06 20:24:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('185', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo', '[]', TO_DATE('2017-05-06 20:25:10', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('186', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/toEditAvatar', '[]', TO_DATE('2017-05-06 20:25:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('187', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo', '[]', TO_DATE('2017-05-06 20:25:25', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('188', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/toEditAvatar', '[]', TO_DATE('2017-05-06 20:25:26', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('189', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/getImage', '[]', TO_DATE('2017-05-06 20:25:43', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('190', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/updateAvatar', '[{cw=300}, {ch=300}, {y1=155}, {x1=67}, {avatar=74abe647f89045a0a885882b6cb1b0d9.jpg}]', TO_DATE('2017-05-06 20:25:56', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('191', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/updateAvatar', '[{cw=300}, {ch=300}, {y1=155}, {x1=67}, {avatar=74abe647f89045a0a885882b6cb1b0d9.jpg}]', TO_DATE('2017-05-06 20:26:25', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('192', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/updateAvatar', '[{cw=300}, {ch=300}, {y1=155}, {x1=67}, {avatar=74abe647f89045a0a885882b6cb1b0d9.jpg}]', TO_DATE('2017-05-06 20:26:40', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('193', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo', '[]', TO_DATE('2017-05-06 20:26:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('194', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 20:26:46', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('195', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/', '[]', TO_DATE('2017-05-06 20:26:49', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('196', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=latest}]', TO_DATE('2017-05-06 20:26:51', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('197', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=hot}]', TO_DATE('2017-05-06 20:26:52', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('198', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 20:26:53', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('199', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 20:26:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('200', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/add', '[]', TO_DATE('2017-05-06 20:27:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('201', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 20:27:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('202', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/saveBeauty/', '[]', TO_DATE('2017-05-06 20:27:09', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('203', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/save/', '[{imgurl={&quot;SWFUpload_0_0&quot;:&quot;20ed6b6be7744565b3ab54bafc5d8bb7.jpg&quot;}}, {beautykeyword=122}, {beautytitle=121}, {beautycontent=113}, {imgcontent={&quot;SWFUpload_0_0&quot;:&quot;22&quot;}}]', TO_DATE('2017-05-06 20:27:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('204', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/save/', '[{imgurl={&quot;SWFUpload_0_0&quot;:&quot;20ed6b6be7744565b3ab54bafc5d8bb7.jpg&quot;}}, {beautykeyword=122}, {beautytitle=121}, {beautycontent=113}, {imgcontent={&quot;SWFUpload_0_0&quot;:&quot;22&quot;}}]', TO_DATE('2017-05-06 20:27:21', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('205', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/save/', '[{imgurl={&quot;SWFUpload_0_0&quot;:&quot;20ed6b6be7744565b3ab54bafc5d8bb7.jpg&quot;}}, {beautykeyword=122}, {beautytitle=121}, {beautycontent=113}, {imgcontent={&quot;SWFUpload_0_0&quot;:&quot;22&quot;}}]', TO_DATE('2017-05-06 20:28:44', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('206', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/save/', '[{imgurl={&quot;SWFUpload_0_0&quot;:&quot;20ed6b6be7744565b3ab54bafc5d8bb7.jpg&quot;}}, {beautykeyword=122}, {beautytitle=121}, {beautycontent=113}, {imgcontent={&quot;SWFUpload_0_0&quot;:&quot;22&quot;}}]', TO_DATE('2017-05-06 20:29:51', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('207', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/save/', '[{imgurl={&quot;SWFUpload_0_0&quot;:&quot;20ed6b6be7744565b3ab54bafc5d8bb7.jpg&quot;}}, {beautykeyword=122}, {beautytitle=121}, {beautycontent=113}, {imgcontent={&quot;SWFUpload_0_0&quot;:&quot;22&quot;}}]', TO_DATE('2017-05-06 20:30:59', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('208', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/add', '[]', TO_DATE('2017-05-06 20:31:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('209', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 20:31:04', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('405', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 22:26:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('406', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 22:33:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('407', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 22:36:21', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('408', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 22:38:43', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('409', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 22:39:51', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('410', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 22:41:29', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('533', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/%5B%E5%98%BB%E5%98%BB%5D', '[]', TO_DATE('2017-05-06 23:24:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('534', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/', '[]', TO_DATE('2017-05-06 23:24:21', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('536', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/%5B%E6%8C%A4%E7%9C%BC%5D', '[]', TO_DATE('2017-05-06 23:24:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('537', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/%5B%E5%98%BB%E5%98%BB%5D', '[]', TO_DATE('2017-05-06 23:24:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('538', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 23:24:55', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('539', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/', '[]', TO_DATE('2017-05-06 23:25:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('540', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/%5B%E6%8C%A4%E7%9C%BC%5D', '[]', TO_DATE('2017-05-06 23:25:12', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('825', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/linkSave/', '[]', TO_DATE('2017-05-07 03:56:25', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('826', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-07 03:56:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('827', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=admin}, {user.password=admin}]', TO_DATE('2017-05-07 03:56:35', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('828', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-07 03:56:38', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('829', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-07 03:56:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('830', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/linkList/', '[]', TO_DATE('2017-05-07 03:56:49', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('831', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/linkAdd/', '[]', TO_DATE('2017-05-07 03:56:51', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('832', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/linkSave/', '[]', TO_DATE('2017-05-07 03:56:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('833', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/linkSave/', '[]', TO_DATE('2017-05-07 03:57:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('834', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/linkList/', '[]', TO_DATE('2017-05-07 03:57:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('835', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/linkList/', '[]', TO_DATE('2017-05-07 03:57:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('836', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/linkRefresh/', '[]', TO_DATE('2017-05-07 03:57:29', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('837', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/linkList/', '[]', TO_DATE('2017-05-07 03:57:31', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('838', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/iplogList/', '[]', TO_DATE('2017-05-07 03:57:36', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('839', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/resourcelogList/', '[]', TO_DATE('2017-05-07 03:57:39', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('840', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/adviceList/', '[]', TO_DATE('2017-05-07 03:57:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('841', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userList/', '[]', TO_DATE('2017-05-07 03:58:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('842', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userList/', '[]', TO_DATE('2017-05-07 04:04:47', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('843', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userList/', '[]', TO_DATE('2017-05-07 04:06:03', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('844', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/adviceList/', '[]', TO_DATE('2017-05-07 04:07:47', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('845', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-07 04:07:51', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('846', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-07 04:07:51', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('847', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userList/', '[]', TO_DATE('2017-05-07 04:07:54', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('848', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/listDeletedUsers/', '[]', TO_DATE('2017-05-07 04:07:58', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('849', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/listDeletedUsers/', '[]', TO_DATE('2017-05-07 04:08:53', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('850', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/listDeletedUsers/', '[]', TO_DATE('2017-05-07 04:09:14', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('851', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/listDeletedUsers/', '[]', TO_DATE('2017-05-07 04:13:13', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('852', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/listDeletedUsers/', '[{user.type=}, {user.username=hecore}, {user.realname=}]', TO_DATE('2017-05-07 04:13:23', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('853', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/listDeletedUsers/', '[{user.type=}, {user.username=hecore}, {user.realname=}]', TO_DATE('2017-05-07 04:13:26', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('854', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/listDeletedUsers/', '[{user.type=0}, {user.username=hecore}, {user.realname=hecore}]', TO_DATE('2017-05-07 04:13:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('855', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/listDeletedUsers/', '[{user.type=0}, {user.username=hecore}, {user.realname=hecore}]', TO_DATE('2017-05-07 04:14:08', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('856', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/listDeletedUsers/', '[{user.type=0}, {user.username=hecore}, {user.realname=hecore}]', TO_DATE('2017-05-07 04:14:10', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('857', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/listDeletedUsers/', '[{user.type=0}, {user.username=}, {user.realname=}]', TO_DATE('2017-05-07 04:14:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('858', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/listDeletedUsers/', '[{user.type=0}, {user.username=}, {user.realname=}]', TO_DATE('2017-05-07 04:14:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('859', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userList/', '[]', TO_DATE('2017-05-07 04:14:35', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('860', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userList/', '[]', TO_DATE('2017-05-07 04:19:06', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('861', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/listDeletedUsers/', '[{user.type=0}, {user.username=}, {user.realname=}]', TO_DATE('2017-05-07 04:22:41', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('862', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userList/', '[]', TO_DATE('2017-05-07 04:22:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('863', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userList/', '[]', TO_DATE('2017-05-07 04:23:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('864', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userDelete', '[{id=2}]', TO_DATE('2017-05-07 04:23:14', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('865', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userList/', '[]', TO_DATE('2017-05-07 04:23:15', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('866', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/listDeletedUsers/', '[]', TO_DATE('2017-05-07 04:23:21', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('867', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/listDeletedUsers/', '[]', TO_DATE('2017-05-07 04:23:47', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('868', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userRecover', '[{id=2}]', TO_DATE('2017-05-07 04:23:53', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('869', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/listDeletedUsers/', '[]', TO_DATE('2017-05-07 04:23:54', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('870', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/listDeletedUsers/', '[{user.type=}, {user.username=}, {user.realname=}]', TO_DATE('2017-05-07 04:23:56', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('871', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userList/', '[]', TO_DATE('2017-05-07 04:24:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('872', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userRoleEdit', '[{id=2}]', TO_DATE('2017-05-07 04:24:03', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('873', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userRoleEdit', '[{id=2}]', TO_DATE('2017-05-07 04:24:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('874', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userRoleEdit', '[{id=2}]', TO_DATE('2017-05-07 04:24:06', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('875', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userList/', '[]', TO_DATE('2017-05-07 04:24:23', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('876', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userRoleEdit', '[{id=2}]', TO_DATE('2017-05-07 04:24:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('877', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userRoleEdit', '[{id=2}]', TO_DATE('2017-05-07 04:24:46', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('878', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userRoleSave/', '[{roleId=undefined}, {id=2}]', TO_DATE('2017-05-07 04:24:49', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('879', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userList/', '[]', TO_DATE('2017-05-07 04:25:38', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('880', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userRoleEdit', '[{id=2}]', TO_DATE('2017-05-07 04:25:39', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('881', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userList/', '[]', TO_DATE('2017-05-07 04:27:55', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('882', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userRoleEdit', '[{id=2}]', TO_DATE('2017-05-07 04:28:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('883', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userRoleSave/', '[{roleId=undefined}, {id=2}]', TO_DATE('2017-05-07 04:33:40', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('884', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userRoleSave/', '[{roleId=undefined}, {id=2}]', TO_DATE('2017-05-07 04:33:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('885', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userList/', '[]', TO_DATE('2017-05-07 04:33:46', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('886', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userList/', '[]', TO_DATE('2017-05-07 04:33:53', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('887', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userList/', '[{user.type=}, {user.username=}, {user.realname=}]', TO_DATE('2017-05-07 04:33:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('888', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userRoleEdit', '[{id=1}]', TO_DATE('2017-05-07 04:34:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('645', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-07 01:57:48', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('646', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=he}]', TO_DATE('2017-05-07 01:58:04', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('647', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/register', '[]', TO_DATE('2017-05-07 01:58:23', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('648', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/register', '[]', TO_DATE('2017-05-07 01:59:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('649', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/register', '[]', TO_DATE('2017-05-07 01:59:56', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('650', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=hecore}]', TO_DATE('2017-05-07 02:00:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('651', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-07 02:00:10', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('652', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-07 02:00:14', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('653', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-07 02:01:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('654', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-07 02:01:03', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('655', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-07 02:01:06', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('656', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-07 02:01:10', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('657', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-07 02:01:12', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('658', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-07 02:02:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('659', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-07 02:02:04', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('660', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-07 02:02:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('661', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-07 02:02:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('662', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-07 02:02:09', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('663', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-07 02:02:10', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('664', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-07 02:02:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('665', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-07 02:02:16', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('666', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-07 02:02:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('667', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-07 02:02:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('668', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/', '[]', TO_DATE('2017-05-07 02:02:19', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('669', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/logout', '[]', TO_DATE('2017-05-07 02:02:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('670', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-07 02:02:23', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('671', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-07 02:02:26', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('672', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-07 02:02:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('673', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=admin}, {user.password=admin}]', TO_DATE('2017-05-07 02:02:33', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('674', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-07 02:02:34', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('675', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-07 02:02:36', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('676', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-07 02:03:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('677', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-07 02:03:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('678', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-07 02:03:58', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('679', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/gonggaoList/', '[]', TO_DATE('2017-05-07 02:04:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('680', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/gonggaoAdd/', '[]', TO_DATE('2017-05-07 02:04:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('681', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/gonggaoSave/', '[]', TO_DATE('2017-05-07 02:04:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('682', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/gonggaoSave/', '[]', TO_DATE('2017-05-07 02:04:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('683', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/gonggaoSave/', '[]', TO_DATE('2017-05-07 02:05:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('684', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/gonggaoSave/', '[]', TO_DATE('2017-05-07 02:07:41', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('685', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/gonggaoList/', '[]', TO_DATE('2017-05-07 02:07:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('686', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/gonggaoEdit', '[{id=1}]', TO_DATE('2017-05-07 02:07:47', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('687', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/gonggaoUpdate/', '[]', TO_DATE('2017-05-07 02:07:51', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('688', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/gonggaoUpdate/', '[]', TO_DATE('2017-05-07 02:10:48', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('689', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/gonggaoList/', '[]', TO_DATE('2017-05-07 02:10:50', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('690', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/gonggaoAdd/', '[]', TO_DATE('2017-05-07 02:10:53', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('691', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/gonggaoSave/', '[]', TO_DATE('2017-05-07 02:11:06', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('692', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/gonggaoList/', '[]', TO_DATE('2017-05-07 02:11:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('693', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/gonggaoDelete', '[{id=1}]', TO_DATE('2017-05-07 02:11:19', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('694', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/gonggaoList/', '[]', TO_DATE('2017-05-07 02:11:21', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('695', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/refreshGonggao/', '[]', TO_DATE('2017-05-07 02:11:23', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('696', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-07 02:11:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('697', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommend/', '[]', TO_DATE('2017-05-07 02:11:35', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('698', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommendEdit/1', '[]', TO_DATE('2017-05-07 02:11:40', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('699', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommendUpdate/', '[]', TO_DATE('2017-05-07 02:11:46', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('700', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommendUpdate/', '[]', TO_DATE('2017-05-07 02:12:31', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('701', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommendUpdate/', '[]', TO_DATE('2017-05-07 02:13:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('702', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommend/', '[]', TO_DATE('2017-05-07 02:13:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('703', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommendUpdateDeleted', '[{deleted=1}, {id=1}]', TO_DATE('2017-05-07 02:13:14', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('704', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommend/', '[]', TO_DATE('2017-05-07 02:13:15', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('705', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommendUpdateDeleted', '[{deleted=0}, {id=1}]', TO_DATE('2017-05-07 02:13:16', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('706', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommend/', '[]', TO_DATE('2017-05-07 02:13:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('707', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommendEdit/1', '[]', TO_DATE('2017-05-07 02:13:19', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('708', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommendUpdate/', '[]', TO_DATE('2017-05-07 02:13:21', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('709', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommend/', '[]', TO_DATE('2017-05-07 02:13:21', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('710', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommendAdd/', '[]', TO_DATE('2017-05-07 02:13:23', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('711', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommendSave/', '[]', TO_DATE('2017-05-07 02:13:39', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('712', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommendSave/', '[]', TO_DATE('2017-05-07 02:14:09', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('713', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommendSave/', '[]', TO_DATE('2017-05-07 02:15:52', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('714', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommendSave/', '[]', TO_DATE('2017-05-07 02:19:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('715', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommendSave/', '[]', TO_DATE('2017-05-07 02:20:14', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('716', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommend/', '[]', TO_DATE('2017-05-07 02:20:15', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('717', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommendDelete/2', '[]', TO_DATE('2017-05-07 02:20:21', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('718', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommend/', '[]', TO_DATE('2017-05-07 02:20:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('719', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/beautyList/', '[]', TO_DATE('2017-05-07 02:20:26', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('720', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/beautyList/', '[{bozhu=HH}, {beauty.level=}, {beauty.title=JJ}]', TO_DATE('2017-05-07 02:20:31', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('721', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/beautyList/', '[{bozhu=HH}, {beauty.level=0}, {beauty.title=JJ}]', TO_DATE('2017-05-07 02:23:16', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('722', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/beautyList/', '[{bozhu=HH}, {beauty.level=0}, {beauty.title=JJ}]', TO_DATE('2017-05-07 02:24:48', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('723', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/beautyList/', '[]', TO_DATE('2017-05-07 02:25:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('724', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/beautyList/', '[{bozhu=DD}, {beauty.level=0}, {beauty.title=DD}]', TO_DATE('2017-05-07 02:25:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('889', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userRoleSave/', '[{roleId=0}, {id=1}]', TO_DATE('2017-05-07 04:34:04', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('725', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/beautyList/', '[{bozhu=DD}, {beauty.level=0}, {beauty.title=DD}]', TO_DATE('2017-05-07 02:26:55', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('726', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-07 02:26:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('727', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=ADMIN}, {user.password=ADMIN}]', TO_DATE('2017-05-07 02:27:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('728', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=admin}, {user.password=admin}]', TO_DATE('2017-05-07 02:27:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('729', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-07 02:27:19', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('730', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-07 02:27:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('731', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/blogList/', '[]', TO_DATE('2017-05-07 02:27:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('732', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/blogList/', '[]', TO_DATE('2017-05-07 02:28:15', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('733', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommend/', '[]', TO_DATE('2017-05-07 02:28:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('734', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/gonggaoList/', '[]', TO_DATE('2017-05-07 02:28:26', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('735', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommend/', '[]', TO_DATE('2017-05-07 02:28:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('736', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/blogList/', '[]', TO_DATE('2017-05-07 02:28:35', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('737', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommend/', '[]', TO_DATE('2017-05-07 02:28:44', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('738', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/blogList/', '[]', TO_DATE('2017-05-07 02:28:48', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('739', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommend/', '[]', TO_DATE('2017-05-07 02:28:50', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommendAdd/', '[]', TO_DATE('2017-05-07 02:28:52', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('741', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommendSave/', '[]', TO_DATE('2017-05-07 02:29:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('742', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommendSave/', '[]', TO_DATE('2017-05-07 02:29:13', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('743', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommend/', '[]', TO_DATE('2017-05-07 02:29:15', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('744', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommendDelete/3', '[]', TO_DATE('2017-05-07 02:29:21', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('745', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommend/', '[]', TO_DATE('2017-05-07 02:29:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('746', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/blogList/', '[]', TO_DATE('2017-05-07 02:29:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('747', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/gonggaoList/', '[]', TO_DATE('2017-05-07 02:29:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('748', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/picRecommend/', '[]', TO_DATE('2017-05-07 02:29:41', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('749', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-07 02:29:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('750', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/gonggaoList/', '[]', TO_DATE('2017-05-07 02:29:47', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('751', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/beautyList/', '[]', TO_DATE('2017-05-07 02:29:51', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('752', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/beautyList/', '[{bozhu=}, {beauty.level=}, {beauty.title=}]', TO_DATE('2017-05-07 02:29:56', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('753', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/beautyList/', '[{bozhu=}, {beauty.level=}, {beauty.title=}]', TO_DATE('2017-05-07 02:31:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('754', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/beautyList/', '[]', TO_DATE('2017-05-07 02:31:10', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('755', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/beautyList/', '[{bozhu=}, {beauty.title=}, {beauty.blevel=}]', TO_DATE('2017-05-07 02:31:12', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('756', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/beautyList/', '[{bozhu=hecore}, {beauty.title=}, {beauty.blevel=}]', TO_DATE('2017-05-07 02:31:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('757', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/beautyList/', '[{bozhu=hecore}, {beauty.title=}, {beauty.blevel=}]', TO_DATE('2017-05-07 02:32:15', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('758', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/beautyList/', '[{bozhu=hecore}, {beauty.title=}, {beauty.blevel=}]', TO_DATE('2017-05-07 02:32:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('759', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/blogList/', '[]', TO_DATE('2017-05-07 02:32:23', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('760', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/blogList/', '[{bozhu=}, {blog.level=}, {blog.ispublic=}, {blog.title=}]', TO_DATE('2017-05-07 02:32:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('761', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/blogList/', '[{bozhu=}, {blog.level=}, {blog.ispublic=}, {blog.title=}]', TO_DATE('2017-05-07 02:34:34', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('762', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/blogList/', '[{bozhu=}, {blog.level=}, {blog.ispublic=}, {blog.title=}]', TO_DATE('2017-05-07 02:34:39', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('763', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/blogList/', '[]', TO_DATE('2017-05-07 02:34:43', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('764', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/blogList/', '[{bozhu=}, {blog.blevel=}, {blog.ispublic=}, {blog.title=}]', TO_DATE('2017-05-07 02:34:44', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('765', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/blogList/', '[{bozhu=admin}, {blog.blevel=}, {blog.ispublic=}, {blog.title=}]', TO_DATE('2017-05-07 02:34:52', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('766', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/blogList/', '[{bozhu=admin}, {blog.blevel=}, {blog.ispublic=}, {blog.title=}]', TO_DATE('2017-05-07 02:35:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('767', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/beautyList/', '[]', TO_DATE('2017-05-07 02:35:34', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('768', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/videoList/', '[]', TO_DATE('2017-05-07 02:35:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('769', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/videoList/', '[]', TO_DATE('2017-05-07 02:36:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('770', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/videoList/', '[{video.level=}, {bozhu=}, {video.title=}]', TO_DATE('2017-05-07 02:36:09', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('771', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/videoList/', '[{video.level=}, {bozhu=}, {video.title=}]', TO_DATE('2017-05-07 02:37:36', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('772', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/videoList/', '[]', TO_DATE('2017-05-07 02:38:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('773', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/videoList/', '[{bozhu=}, {video.title=}, {video.blevel=}]', TO_DATE('2017-05-07 02:38:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('774', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/videoList/', '[{bozhu=hecore}, {video.title=}, {video.blevel=}]', TO_DATE('2017-05-07 02:38:08', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('775', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/videoList/', '[{bozhu=hecore}, {video.title=}, {video.blevel=}]', TO_DATE('2017-05-07 02:38:44', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('776', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/videoList/', '[{bozhu=hecore}, {video.title=}, {video.blevel=}]', TO_DATE('2017-05-07 02:38:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('777', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/videoList/', '[{bozhu=hecore}, {video.title=}, {video.blevel=}]', TO_DATE('2017-05-07 02:38:59', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('778', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/toVideoLevel/2', '[]', TO_DATE('2017-05-07 02:39:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('779', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/editVideoLevel/', '[{level=0}, {id=}]', TO_DATE('2017-05-07 02:39:04', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('780', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/videoList/', '[{bozhu=hecore}, {video.title=}, {video.blevel=}]', TO_DATE('2017-05-07 02:40:29', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('781', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userList/', '[]', TO_DATE('2017-05-07 02:40:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('782', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userList/', '[]', TO_DATE('2017-05-07 02:41:51', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('783', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/iplogList/', '[]', TO_DATE('2017-05-07 02:42:39', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('784', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/iplogList/', '[]', TO_DATE('2017-05-07 02:42:58', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('785', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/iplogList/', '[]', TO_DATE('2017-05-07 02:53:59', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('786', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/iplogList/', '[]', TO_DATE('2017-05-07 02:55:04', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('787', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/iplogList/', '[]', TO_DATE('2017-05-07 02:55:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('788', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/iplogList/', '[{start=2017-05-01 02:55:41}, {pageSize=100}, {end=2017-05-21 02:55:46}]', TO_DATE('2017-05-07 02:55:54', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('789', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/videoList/', '[{bozhu=hecore}, {video.title=}, {video.blevel=}]', TO_DATE('2017-05-07 02:56:50', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('790', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userList/', '[]', TO_DATE('2017-05-07 02:56:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('791', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/iplogList/', '[]', TO_DATE('2017-05-07 02:57:15', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('792', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/iplogList/', '[{start=2017-05-01 02:57:50}, {pageSize=100}, {end=2017-05-07 02:57:55}]', TO_DATE('2017-05-07 02:57:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('793', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/iplogList/', '[{start=2017-05-01 02:57:50}, {pageSize=100}, {end=2017-05-07 02:57:55}]', TO_DATE('2017-05-07 02:59:43', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('794', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/iplogList/', '[]', TO_DATE('2017-05-07 02:59:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('498', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 23:11:34', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('499', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=he}]', TO_DATE('2017-05-06 23:11:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('500', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 23:11:44', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('501', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 23:11:46', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('502', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/add', '[]', TO_DATE('2017-05-06 23:11:47', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('503', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/save/', '[]', TO_DATE('2017-05-06 23:12:39', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('504', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/save/', '[]', TO_DATE('2017-05-06 23:15:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('505', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/save/', '[]', TO_DATE('2017-05-06 23:16:09', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('506', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/save/', '[]', TO_DATE('2017-05-06 23:16:15', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('532', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/%E8%AF%B7%E8%BE%93%E5%85%A5%E5%9B%BE%E7%89%87%E5%9C%B0%E5%9D%80', '[]', TO_DATE('2017-05-06 23:24:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('535', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/%E8%AF%B7%E8%BE%93%E5%85%A5%E5%9B%BE%E7%89%87%E5%9C%B0%E5%9D%80', '[]', TO_DATE('2017-05-06 23:24:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('543', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/%E8%AF%B7%E8%BE%93%E5%85%A5%E5%9B%BE%E7%89%87%E5%9C%B0%E5%9D%80', '[]', TO_DATE('2017-05-06 23:25:12', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('795', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/iplogList/', '[{start=2017-05-01 02:59:58}, {pageSize=100}, {end= }]', TO_DATE('2017-05-07 03:00:03', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('796', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/iplogList/', '[{start=2017-05-01 02:59:58}, {pageSize=100}, {end= }]', TO_DATE('2017-05-07 03:04:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('797', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/iplogList/', '[{start= 2017-05-01 02:59:58}, {pageSize=100}, {end=2017-05-26 03:04:10}]', TO_DATE('2017-05-07 03:04:15', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('798', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/resourcelogList/', '[]', TO_DATE('2017-05-07 03:04:26', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('799', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/resourcelogList/', '[{day= 2017-05-07}]', TO_DATE('2017-05-07 03:04:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('800', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/resourcelogList/', '[{day=2017-05-07}]', TO_DATE('2017-05-07 03:04:33', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('801', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/resourcelogTongji/', '[]', TO_DATE('2017-05-07 03:04:34', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('802', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/resourcelogList/', '[{day=2017-05-07}]', TO_DATE('2017-05-07 03:04:48', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('803', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-07 03:24:55', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('804', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-07 03:24:59', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('805', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/resourcelogList/', '[]', TO_DATE('2017-05-07 03:25:06', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('806', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/resourcelogList/', '[]', TO_DATE('2017-05-07 03:35:21', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('807', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/resourcelogList/', '[]', TO_DATE('2017-05-07 03:35:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('808', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/resourcelogList/', '[]', TO_DATE('2017-05-07 03:38:10', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('809', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/resourcelogList/', '[{day= 2017-05-07}]', TO_DATE('2017-05-07 03:38:12', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('810', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/resourcelogTongji/', '[]', TO_DATE('2017-05-07 03:38:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('811', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/resourcelogTongji/', '[]', TO_DATE('2017-05-07 03:41:19', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('812', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/resourcelogTongji/', '[]', TO_DATE('2017-05-07 03:42:41', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('813', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/resourcelogTongji/', '[]', TO_DATE('2017-05-07 03:45:48', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('814', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/resourcelogTongji/', '[]', TO_DATE('2017-05-07 03:49:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('815', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/resourcelogTongji/', '[]', TO_DATE('2017-05-07 03:50:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('816', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/adviceList/', '[]', TO_DATE('2017-05-07 03:50:13', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('817', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/adviceList/', '[]', TO_DATE('2017-05-07 03:50:39', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('818', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/linkList/', '[]', TO_DATE('2017-05-07 03:50:43', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('819', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/linkAdd/', '[]', TO_DATE('2017-05-07 03:50:48', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('820', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/linkSave/', '[]', TO_DATE('2017-05-07 03:50:54', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('821', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/linkSave/', '[]', TO_DATE('2017-05-07 03:51:36', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('822', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/linkSave/', '[]', TO_DATE('2017-05-07 03:53:38', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('823', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/linkAdd/', '[]', TO_DATE('2017-05-07 03:54:09', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('824', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/linkSave/', '[]', TO_DATE('2017-05-07 03:54:20', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('890', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userList/', '[]', TO_DATE('2017-05-07 04:34:06', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('891', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userList/', '[]', TO_DATE('2017-05-07 04:34:09', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('892', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userList/', '[]', TO_DATE('2017-05-07 04:34:10', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('893', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userList/', '[]', TO_DATE('2017-05-07 04:34:13', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('894', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-07 04:34:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('895', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/logout', '[]', TO_DATE('2017-05-07 04:34:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('896', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-07 04:34:25', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('897', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=hecore}]', TO_DATE('2017-05-07 04:34:33', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('898', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-07 04:34:35', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('899', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-07 04:34:40', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('900', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/logout', '[]', TO_DATE('2017-05-07 04:34:44', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('901', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-07 04:34:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('902', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=admin}, {user.password=admin}]', TO_DATE('2017-05-07 04:35:04', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('903', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-07 04:35:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('904', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-07 04:35:08', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('905', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-07 04:35:12', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('906', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-07 04:35:15', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('907', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/logout', '[]', TO_DATE('2017-05-07 04:36:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('908', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-07 04:36:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('909', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=admin}, {user.password=admin}]', TO_DATE('2017-05-07 04:36:10', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('910', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-07 04:36:12', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('911', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-07 04:36:14', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('912', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-07 04:37:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('913', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-07 04:37:29', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('507', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/save/', '[]', TO_DATE('2017-05-06 23:19:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('508', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 23:19:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('509', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore	}, {user.password=he}]', TO_DATE('2017-05-06 23:19:38', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('510', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=he}]', TO_DATE('2017-05-06 23:19:46', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('511', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 23:19:48', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('512', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 23:19:52', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('513', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 23:19:53', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('514', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/add', '[]', TO_DATE('2017-05-06 23:19:55', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('515', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/add', '[]', TO_DATE('2017-05-06 23:20:35', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('516', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/save/', '[]', TO_DATE('2017-05-06 23:21:38', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('517', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/save/', '[]', TO_DATE('2017-05-06 23:22:08', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('518', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 23:22:10', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('519', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 23:22:56', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('520', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 23:23:51', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('521', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/add', '[]', TO_DATE('2017-05-06 23:23:55', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('522', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 23:23:59', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('523', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 23:24:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('524', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 23:24:03', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('525', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 23:24:04', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('526', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 23:24:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('527', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/', '[]', TO_DATE('2017-05-06 23:24:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('528', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/', '[]', TO_DATE('2017-05-06 23:24:10', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('529', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/', '[]', TO_DATE('2017-05-06 23:24:12', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('530', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/', '[]', TO_DATE('2017-05-06 23:24:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('531', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/%5B%E6%8C%A4%E7%9C%BC%5D', '[]', TO_DATE('2017-05-06 23:24:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('541', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/%5B%E5%98%BB%E5%98%BB%5D', '[]', TO_DATE('2017-05-06 23:25:12', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('542', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 23:25:14', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('573', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/%5B%E5%98%BB%E5%98%BB%5D', '[]', TO_DATE('2017-05-06 23:40:48', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('574', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 23:40:49', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('575', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=he}]', TO_DATE('2017-05-06 23:40:58', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('576', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 23:40:59', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('577', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 23:41:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('578', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 23:41:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('579', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/detail/1', '[]', TO_DATE('2017-05-06 23:41:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('580', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/detail/1', '[]', TO_DATE('2017-05-06 23:42:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('581', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/myVideo/', '[]', TO_DATE('2017-05-06 23:45:36', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('582', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/myVideo/', '[]', TO_DATE('2017-05-06 23:46:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('583', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/myVideo/', '[]', TO_DATE('2017-05-06 23:46:29', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('584', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/myVideo/', '[]', TO_DATE('2017-05-06 23:46:55', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('585', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/myVideo/', '[]', TO_DATE('2017-05-06 23:46:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('586', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/edit/1', '[]', TO_DATE('2017-05-06 23:47:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('587', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/edit/1', '[]', TO_DATE('2017-05-06 23:51:34', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('588', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/edit/1', '[]', TO_DATE('2017-05-06 23:52:47', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('589', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/update/', '[]', TO_DATE('2017-05-06 23:53:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('590', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/update/', '[]', TO_DATE('2017-05-06 23:54:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('591', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/update/', '[]', TO_DATE('2017-05-06 23:54:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('592', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/update/', '[]', TO_DATE('2017-05-06 23:54:41', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('593', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/update/', '[]', TO_DATE('2017-05-06 23:55:08', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('594', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/myVideo/', '[]', TO_DATE('2017-05-06 23:55:09', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('595', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/detail/1', '[]', TO_DATE('2017-05-06 23:55:12', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('596', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/detail/1', '[]', TO_DATE('2017-05-06 23:55:46', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('597', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/detail/1', '[]', TO_DATE('2017-05-06 23:58:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('598', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/detail/1', '[]', TO_DATE('2017-05-06 23:58:47', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('599', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 23:59:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('600', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 23:59:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('601', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 23:59:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('602', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/myBeauty/', '[]', TO_DATE('2017-05-06 23:59:06', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('603', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/myBeauty/', '[]', TO_DATE('2017-05-07 00:00:03', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('604', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/myBeauty/', '[]', TO_DATE('2017-05-07 00:00:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('605', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/delete/2', '[]', TO_DATE('2017-05-07 00:00:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('606', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/delete/2', '[]', TO_DATE('2017-05-07 00:01:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('607', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/myBeauty/', '[]', TO_DATE('2017-05-07 00:01:25', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('608', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-07 00:01:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('609', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-07 00:01:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('610', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-07 00:01:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('611', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/myVideo/', '[]', TO_DATE('2017-05-07 00:01:34', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('612', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/delete/1', '[]', TO_DATE('2017-05-07 00:01:38', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('613', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/delete/1', '[]', TO_DATE('2017-05-07 00:02:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('614', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/myVideo/', '[]', TO_DATE('2017-05-07 00:02:12', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('615', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/add', '[]', TO_DATE('2017-05-07 00:02:14', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('616', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/save/', '[]', TO_DATE('2017-05-07 00:03:15', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('617', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-07 00:03:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('618', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-07 00:03:19', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('619', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-07 00:03:20', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('620', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/', '[]', TO_DATE('2017-05-07 00:03:21', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('621', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/%5B%E6%8C%A4%E7%9C%BC%5D', '[]', TO_DATE('2017-05-07 00:03:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('628', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/%5B%E5%98%BB%E5%98%BB%5D', '[]', TO_DATE('2017-05-07 00:03:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('629', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-07 00:03:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('630', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-07 00:03:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('631', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index/search/', '[{keyword=日志}]', TO_DATE('2017-05-07 00:03:40', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('632', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index/getSearchJson/', '[{rank=}, {page=1}, {keyword=日志}, {type=all}]', TO_DATE('2017-05-07 00:03:41', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('633', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index/getSearchJson/', '[{rank=}, {page=1}, {keyword=日志}, {type=beauty}]', TO_DATE('2017-05-07 00:03:44', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('634', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-07 00:03:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('635', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[]', TO_DATE('2017-05-07 00:08:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('636', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-07 00:08:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('637', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/logout', '[]', TO_DATE('2017-05-07 00:08:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('638', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-07 00:08:34', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('639', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=admin}, {user.password=admin}]', TO_DATE('2017-05-07 00:08:41', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('640', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-07 00:08:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('411', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 22:42:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('412', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 22:42:19', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('413', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=he}]', TO_DATE('2017-05-06 22:42:26', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('414', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 22:42:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('415', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 22:42:29', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('416', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/add/', '[]', TO_DATE('2017-05-06 22:42:33', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('417', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 22:42:43', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('418', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 22:43:51', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('419', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 22:44:15', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('420', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/save', '[]', TO_DATE('2017-05-06 22:49:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('421', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/myblog', '[]', TO_DATE('2017-05-06 22:49:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('422', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/myblog', '[]', TO_DATE('2017-05-06 22:50:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('423', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/myblog', '[]', TO_DATE('2017-05-06 22:50:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('424', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/myblog', '[]', TO_DATE('2017-05-06 22:50:54', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('425', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 22:50:59', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('426', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/', '[]', TO_DATE('2017-05-06 22:51:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('427', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=hot}]', TO_DATE('2017-05-06 22:51:03', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('428', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=latest}]', TO_DATE('2017-05-06 22:51:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('429', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 22:51:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('430', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index/search', '[{keyword=2}]', TO_DATE('2017-05-06 22:52:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('431', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index/getSearchJson/', '[{rank=}, {page=1}, {keyword=2}, {type=all}]', TO_DATE('2017-05-06 22:52:06', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('432', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index/getSearchJson/', '[{rank=}, {page=1}, {keyword=2}, {type=blog}]', TO_DATE('2017-05-06 22:52:08', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('433', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index/getSearchJson/', '[{rank=}, {page=1}, {keyword=2}, {type=beauty}]', TO_DATE('2017-05-06 22:52:10', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('434', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index/getSearchJson/', '[{rank=}, {page=1}, {keyword=2}, {type=blog}]', TO_DATE('2017-05-06 22:52:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('435', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index/getSearchJson/', '[{rank=}, {page=1}, {keyword=2}, {type=video}]', TO_DATE('2017-05-06 22:52:12', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('436', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 22:52:13', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('437', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/', '[]', TO_DATE('2017-05-06 22:52:15', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('438', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=latest}]', TO_DATE('2017-05-06 22:52:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('439', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 22:52:33', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('440', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 22:52:35', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('441', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 22:52:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('442', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 22:53:06', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('443', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 22:53:09', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('444', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 22:53:10', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('445', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 22:53:12', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('446', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 22:53:14', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('447', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 22:53:16', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('448', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 22:53:19', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('449', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 22:53:20', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('450', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 22:53:21', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('451', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 22:53:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('452', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/add', '[]', TO_DATE('2017-05-06 22:53:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('453', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/add', '[]', TO_DATE('2017-05-06 22:55:29', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('454', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 22:55:33', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('455', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 22:55:35', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('456', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 22:55:36', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('457', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 22:55:38', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('458', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 22:55:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('459', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 22:55:44', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('460', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 22:55:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('461', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 22:55:47', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('462', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/add', '[]', TO_DATE('2017-05-06 22:55:49', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('463', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/add', '[]', TO_DATE('2017-05-06 22:56:58', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('464', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 23:02:08', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('465', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/add', '[]', TO_DATE('2017-05-06 23:02:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('466', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/add', '[]', TO_DATE('2017-05-06 23:02:16', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('467', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 23:02:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('468', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 23:02:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('469', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 23:02:20', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('470', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 23:02:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('471', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 23:02:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('472', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/user/personalInfo/', '[]', TO_DATE('2017-05-06 23:02:26', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('473', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 23:02:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('474', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 23:02:31', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('475', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 23:02:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('476', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/add', '[]', TO_DATE('2017-05-06 23:02:34', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('477', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 23:04:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('478', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=hecore}, {user.password=he}]', TO_DATE('2017-05-06 23:04:16', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('479', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-06 23:04:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('480', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 23:04:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('481', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 23:04:19', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('482', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 23:04:21', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('483', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/add', '[]', TO_DATE('2017-05-06 23:04:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('484', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 23:04:23', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('485', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 23:04:26', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('486', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/', '[]', TO_DATE('2017-05-06 23:04:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('487', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/add', '[]', TO_DATE('2017-05-06 23:04:31', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('488', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 23:04:33', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('489', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/add', '[]', TO_DATE('2017-05-06 23:04:35', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('490', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 23:04:36', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('491', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 23:04:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('492', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/add', '[]', TO_DATE('2017-05-06 23:04:40', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('493', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/save/', '[]', TO_DATE('2017-05-06 23:05:25', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('494', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/save/', '[]', TO_DATE('2017-05-06 23:06:54', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('495', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/save/', '[]', TO_DATE('2017-05-06 23:07:13', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('496', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/save/', '[]', TO_DATE('2017-05-06 23:09:31', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('497', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/save/', '[]', TO_DATE('2017-05-06 23:10:20', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('545', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 23:29:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('572', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/%E8%AF%B7%E8%BE%93%E5%85%A5%E5%9B%BE%E7%89%87%E5%9C%B0%E5%9D%80', '[]', TO_DATE('2017-05-06 23:40:48', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('622', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/%E8%AF%B7%E8%BE%93%E5%85%A5%E5%9B%BE%E7%89%87%E5%9C%B0%E5%9D%80', '[]', TO_DATE('2017-05-07 00:03:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('544', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 23:29:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('546', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 23:32:29', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('547', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 23:32:44', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('548', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 23:33:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('549', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 23:33:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('550', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 23:33:44', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('551', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 23:35:25', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('552', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 23:36:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('553', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 23:36:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('554', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 23:38:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('555', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 23:38:41', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('556', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 23:39:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('557', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 23:40:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('558', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 23:40:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('559', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 23:40:20', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('560', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 23:40:23', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('561', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/', '[]', TO_DATE('2017-05-06 23:40:25', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('562', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 23:40:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('563', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=latest}]', TO_DATE('2017-05-06 23:40:29', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('564', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-06 23:40:31', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('565', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog/', '[]', TO_DATE('2017-05-06 23:40:38', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('566', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=latest}]', TO_DATE('2017-05-06 23:40:40', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('567', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/blog', '[{ranktype=hot}]', TO_DATE('2017-05-06 23:40:43', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('568', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-06 23:40:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('569', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/video/', '[]', TO_DATE('2017-05-06 23:40:46', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('570', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/', '[]', TO_DATE('2017-05-06 23:40:47', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('571', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/%5B%E6%8C%A4%E7%9C%BC%5D', '[]', TO_DATE('2017-05-06 23:40:48', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('623', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/%5B%E5%98%BB%E5%98%BB%5D', '[]', TO_DATE('2017-05-07 00:03:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('624', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/beauty/', '[]', TO_DATE('2017-05-07 00:03:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('625', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/', '[]', TO_DATE('2017-05-07 00:03:23', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('626', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/%E8%AF%B7%E8%BE%93%E5%85%A5%E5%9B%BE%E7%89%87%E5%9C%B0%E5%9D%80', '[]', TO_DATE('2017-05-07 00:03:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('641', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-07 00:08:44', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('642', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-07 00:10:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('643', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-07 00:15:44', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('644', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-07 00:16:15', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('914', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-07 04:39:55', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('915', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/login', '[{user.username=admin}, {user.password=admin}]', TO_DATE('2017-05-07 04:40:03', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('916', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-07 04:40:06', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('917', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-07 04:40:08', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('918', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-07 04:40:34', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('919', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/index', '[]', TO_DATE('2017-05-07 04:42:44', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('920', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-07 04:42:46', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('921', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-07 04:42:49', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('922', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/', '[]', TO_DATE('2017-05-07 04:42:52', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('923', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userList/', '[]', TO_DATE('2017-05-07 04:42:55', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('924', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userRoleEdit', '[{id=2}]', TO_DATE('2017-05-07 04:42:59', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('925', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/admins/userRoleEdit', '[{id=1}]', TO_DATE('2017-05-07 04:43:03', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('926', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/', '[]', TO_DATE('2017-05-07 04:43:13', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."IPLOG" VALUES ('627', '0:0:0:0:0:0:0:1', 'http://localhost:8080/xylblog/liuyanban/%5B%E6%8C%A4%E7%9C%BC%5D', '[]', TO_DATE('2017-05-07 00:03:24', 'YYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for LINK
-- ----------------------------
DROP TABLE "TYXYL"."LINK";
CREATE TABLE "TYXYL"."LINK" (
"ID" NUMBER NOT NULL ,
"TITLE" VARCHAR2(20 BYTE) NOT NULL ,
"URL" VARCHAR2(50 BYTE) NOT NULL ,
"SN" NUMBER NOT NULL ,
"CREATE_TIME" DATE NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LINK
-- ----------------------------
INSERT INTO "TYXYL"."LINK" VALUES ('1', 'aa', 'http://localhost:8080/xylblog/admins/linkAdd/', '1', TO_DATE('2017-05-07 03:56:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."LINK" VALUES ('2', 'aa', 'http://localhost:8080/xylblog/admins/linkAdd/', '2', TO_DATE('2017-05-07 03:57:17', 'YYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for PICRECOMMEND
-- ----------------------------
DROP TABLE "TYXYL"."PICRECOMMEND";
CREATE TABLE "TYXYL"."PICRECOMMEND" (
"ID" NUMBER NOT NULL ,
"TITLE" VARCHAR2(255 BYTE) NOT NULL ,
"IMAGE" VARCHAR2(255 BYTE) NOT NULL ,
"URL" VARCHAR2(255 BYTE) NULL ,
"SN" NUMBER NULL ,
"DELETED" NUMBER NOT NULL ,
"CREATE_TIME" DATE NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of PICRECOMMEND
-- ----------------------------
INSERT INTO "TYXYL"."PICRECOMMEND" VALUES ('1', '欢迎使用校友录', 'fa9981d036cf4dd0874513e9fa818f0c.jpg', 'http://localhost/xyl/blog/detail/1', '1', '0', TO_DATE('2016-01-12 11:05:16', 'YYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for QQUSER
-- ----------------------------
DROP TABLE "TYXYL"."QQUSER";
CREATE TABLE "TYXYL"."QQUSER" (
"ID" NUMBER(11) NOT NULL ,
"OPENID" VARCHAR2(255 BYTE) NOT NULL ,
"USER_ID" NUMBER(11) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of QQUSER
-- ----------------------------

-- ----------------------------
-- Table structure for RESOURCESLOG
-- ----------------------------
DROP TABLE "TYXYL"."RESOURCESLOG";
CREATE TABLE "TYXYL"."RESOURCESLOG" (
"ID" NUMBER(20) NOT NULL ,
"OSNAME" VARCHAR2(100 BYTE) NULL ,
"IP" VARCHAR2(100 BYTE) NULL ,
"HOSTNAME" VARCHAR2(100 BYTE) NULL ,
"CPUNUMBER" VARCHAR2(20 BYTE) NULL ,
"CPURATIO" NUMBER(22) NULL ,
"PHYMEMORY" NUMBER(20) NULL ,
"PHYFREEMEMORY" NUMBER(20) NULL ,
"DISKMEMORY" NUMBER(20) NULL ,
"DISKFREEMEMORY" NUMBER(20) NULL ,
"JVMTOTALMEMORY" NUMBER(20) NULL ,
"JVMFREEMEMORY" NUMBER(20) NULL ,
"JVMMAXMEMORY" NUMBER(20) NULL ,
"GCCOUNT" NUMBER(20) NULL ,
"CREATE_TIME" DATE NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of RESOURCESLOG
-- ----------------------------
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('48', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '3199', '476829', '237207', '702', '610', '1758', '12', TO_DATE('2017-05-06 18:04:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('49', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3271', '476829', '237208', '702', '581', '1758', '12', TO_DATE('2017-05-06 18:06:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('50', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '2970', '476829', '237207', '702', '575', '1758', '12', TO_DATE('2017-05-06 18:08:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('51', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '2957', '476829', '237207', '711', '612', '1758', '14', TO_DATE('2017-05-06 18:10:16', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('52', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '2620', '476829', '237207', '711', '591', '1758', '14', TO_DATE('2017-05-06 18:12:16', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('53', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '2601', '476829', '237207', '706', '585', '1758', '14', TO_DATE('2017-05-06 18:13:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('54', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '2630', '476829', '237207', '706', '567', '1758', '14', TO_DATE('2017-05-06 18:15:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('55', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '2646', '476829', '237207', '706', '562', '1758', '14', TO_DATE('2017-05-06 18:17:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('56', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '2675', '476829', '237207', '706', '562', '1758', '14', TO_DATE('2017-05-06 18:19:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('57', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '2636', '476829', '237206', '712', '599', '1758', '14', TO_DATE('2017-05-06 18:19:43', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('58', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '2669', '476829', '237206', '712', '574', '1758', '14', TO_DATE('2017-05-06 18:21:43', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('59', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '2551', '476829', '237207', '712', '570', '1758', '14', TO_DATE('2017-05-06 18:23:43', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('60', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '2533', '476829', '237206', '712', '570', '1758', '14', TO_DATE('2017-05-06 18:25:43', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('61', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '2560', '476829', '237206', '712', '570', '1758', '14', TO_DATE('2017-05-06 18:27:43', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('62', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '2554', '476829', '237206', '712', '565', '1758', '14', TO_DATE('2017-05-06 18:29:43', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('63', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '2555', '476829', '237206', '712', '559', '1758', '14', TO_DATE('2017-05-06 18:31:43', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('64', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '2571', '476829', '237206', '712', '559', '1758', '14', TO_DATE('2017-05-06 18:33:43', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('65', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '100', '7906', '2553', '476829', '237206', '711', '614', '1758', '14', TO_DATE('2017-05-06 18:35:55', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('66', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '2555', '476829', '237206', '711', '590', '1758', '14', TO_DATE('2017-05-06 18:37:55', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('67', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '2569', '476829', '237206', '711', '585', '1758', '14', TO_DATE('2017-05-06 18:39:55', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('68', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '2573', '476829', '237206', '711', '585', '1758', '14', TO_DATE('2017-05-06 18:41:55', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('69', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '2562', '476829', '237206', '711', '585', '1758', '14', TO_DATE('2017-05-06 18:43:55', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('70', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '2570', '476829', '237206', '711', '585', '1758', '14', TO_DATE('2017-05-06 18:45:55', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('71', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '2573', '476829', '237206', '711', '583', '1758', '14', TO_DATE('2017-05-06 18:47:55', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('72', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '2560', '476829', '237206', '711', '583', '1758', '14', TO_DATE('2017-05-06 18:49:55', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('73', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '2566', '476829', '237206', '711', '574', '1758', '14', TO_DATE('2017-05-06 18:51:55', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('74', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '100', '7906', '2480', '476829', '237206', '714', '596', '1758', '14', TO_DATE('2017-05-06 18:53:25', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('75', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '2483', '476829', '237206', '714', '583', '1758', '14', TO_DATE('2017-05-06 18:55:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('76', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '2467', '476829', '237206', '714', '559', '1758', '14', TO_DATE('2017-05-06 18:57:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('77', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '2487', '476829', '237206', '714', '559', '1758', '14', TO_DATE('2017-05-06 18:59:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('78', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '3222', '476829', '237206', '715', '589', '1758', '14', TO_DATE('2017-05-06 19:00:41', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('79', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '3277', '476829', '237210', '702', '598', '1758', '14', TO_DATE('2017-05-06 19:02:44', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('80', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '100', '7906', '3210', '476829', '237210', '709', '587', '1758', '14', TO_DATE('2017-05-06 19:03:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('83', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '3298', '476829', '237209', '715', '590', '1758', '14', TO_DATE('2017-05-06 19:07:49', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('84', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '3278', '476829', '237209', '715', '553', '1758', '14', TO_DATE('2017-05-06 19:09:49', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('85', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3364', '476829', '237209', '715', '547', '1758', '14', TO_DATE('2017-05-06 19:11:49', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('86', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '2', '7906', '3777', '476829', '237209', '715', '547', '1758', '14', TO_DATE('2017-05-06 19:13:49', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('87', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '2', '7906', '3756', '476829', '237209', '715', '547', '1758', '14', TO_DATE('2017-05-06 19:15:49', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('88', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '3406', '476829', '237209', '715', '529', '1758', '14', TO_DATE('2017-05-06 19:17:49', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('89', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '3429', '476829', '237209', '715', '523', '1758', '14', TO_DATE('2017-05-06 19:19:49', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('90', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '3342', '476829', '237209', '715', '523', '1758', '14', TO_DATE('2017-05-06 19:21:49', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('91', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '3304', '476829', '237209', '715', '441', '1758', '14', TO_DATE('2017-05-06 19:23:49', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('92', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3295', '476829', '237209', '715', '438', '1758', '14', TO_DATE('2017-05-06 19:25:49', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('93', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3294', '476829', '237209', '715', '435', '1758', '14', TO_DATE('2017-05-06 19:27:49', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('94', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '100', '7906', '3295', '476829', '237209', '715', '596', '1758', '14', TO_DATE('2017-05-06 19:28:09', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('114', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '2950', '476829', '237208', '700', '328', '1758', '14', TO_DATE('2017-05-06 20:05:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('115', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '2954', '476829', '237208', '700', '328', '1758', '14', TO_DATE('2017-05-06 20:07:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('116', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '2975', '476829', '237208', '700', '321', '1758', '14', TO_DATE('2017-05-06 20:09:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('117', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '2952', '476829', '237208', '700', '312', '1758', '14', TO_DATE('2017-05-06 20:11:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('118', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '2832', '476829', '237206', '700', '193', '1758', '14', TO_DATE('2017-05-06 20:13:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('119', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '2801', '476829', '237206', '700', '190', '1758', '14', TO_DATE('2017-05-06 20:15:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('132', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '2357', '476829', '237204', '706', '596', '1758', '14', TO_DATE('2017-05-06 20:52:49', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('143', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '3332', '476829', '237201', '712', '577', '1758', '14', TO_DATE('2017-05-06 21:16:16', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('144', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '3340', '476829', '237202', '712', '508', '1758', '14', TO_DATE('2017-05-06 21:18:15', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('145', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '3320', '476829', '237202', '696', '569', '1758', '14', TO_DATE('2017-05-06 21:19:12', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('146', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '3196', '476829', '237202', '696', '538', '1758', '14', TO_DATE('2017-05-06 21:21:12', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('147', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '2', '7906', '3182', '476829', '237202', '696', '534', '1758', '14', TO_DATE('2017-05-06 21:23:12', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('148', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '3154', '476829', '237202', '696', '522', '1758', '14', TO_DATE('2017-05-06 21:25:12', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('149', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '3145', '476829', '237201', '696', '522', '1758', '14', TO_DATE('2017-05-06 21:27:12', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('173', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '4093', '476829', '237201', '714', '610', '1758', '14', TO_DATE('2017-05-06 22:16:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('174', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '3772', '476829', '237201', '714', '547', '1758', '14', TO_DATE('2017-05-06 22:18:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('175', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '100', '7906', '3772', '476829', '237201', '689', '596', '1758', '14', TO_DATE('2017-05-06 22:19:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('187', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '3476', '476829', '237200', '713', '613', '1758', '14', TO_DATE('2017-05-06 22:42:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('188', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '3459', '476829', '237199', '713', '489', '1758', '14', TO_DATE('2017-05-06 22:44:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('189', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '2', '7906', '3465', '476829', '237199', '713', '482', '1758', '14', TO_DATE('2017-05-06 22:46:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('190', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3434', '476829', '237199', '713', '476', '1758', '14', TO_DATE('2017-05-06 22:48:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('191', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3413', '476829', '237198', '713', '472', '1758', '14', TO_DATE('2017-05-06 22:50:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('192', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '3376', '476829', '237199', '713', '382', '1758', '14', TO_DATE('2017-05-06 22:52:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('193', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '3398', '476829', '237199', '713', '331', '1758', '14', TO_DATE('2017-05-06 22:54:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('194', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '3216', '476829', '237199', '713', '297', '1758', '14', TO_DATE('2017-05-06 22:56:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('195', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '3023', '476829', '237198', '713', '294', '1758', '14', TO_DATE('2017-05-06 22:58:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('196', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '2968', '476829', '237197', '713', '294', '1758', '14', TO_DATE('2017-05-06 23:00:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('197', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '13', '7906', '2772', '476829', '237184', '713', '285', '1758', '14', TO_DATE('2017-05-06 23:02:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('198', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '16', '7906', '3354', '476829', '237167', '713', '239', '1758', '14', TO_DATE('2017-05-06 23:04:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('199', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '3298', '476829', '237166', '713', '181', '1758', '14', TO_DATE('2017-05-06 23:06:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('200', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3313', '476829', '237165', '713', '174', '1758', '14', TO_DATE('2017-05-06 23:08:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('201', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3325', '476829', '237165', '713', '172', '1758', '14', TO_DATE('2017-05-06 23:10:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('218', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '9', '7906', '2753', '476829', '237168', '701', '446', '1758', '15', TO_DATE('2017-05-06 23:41:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('219', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '2805', '476829', '237168', '701', '427', '1758', '15', TO_DATE('2017-05-06 23:43:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('220', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '2810', '476829', '237168', '701', '424', '1758', '15', TO_DATE('2017-05-06 23:45:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('221', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '2800', '476829', '237167', '701', '387', '1758', '15', TO_DATE('2017-05-06 23:47:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('222', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '2', '7906', '2840', '476829', '237167', '701', '386', '1758', '15', TO_DATE('2017-05-06 23:49:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('223', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '2', '7906', '2840', '476829', '237167', '701', '386', '1758', '15', TO_DATE('2017-05-06 23:51:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('224', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '2809', '476829', '237166', '701', '353', '1758', '15', TO_DATE('2017-05-06 23:53:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('113', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '2971', '476829', '237208', '700', '360', '1758', '14', TO_DATE('2017-05-06 20:03:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('138', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '100', '7906', '2553', '476829', '237201', '696', '576', '1758', '14', TO_DATE('2017-05-06 21:07:40', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('139', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '2570', '476829', '237201', '696', '533', '1758', '14', TO_DATE('2017-05-06 21:09:39', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('142', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '3361', '476829', '237201', '711', '609', '1758', '14', TO_DATE('2017-05-06 21:15:09', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('157', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '3741', '476829', '237200', '699', '600', '1758', '14', TO_DATE('2017-05-06 21:43:47', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('225', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '2841', '476829', '237166', '701', '344', '1758', '15', TO_DATE('2017-05-06 23:55:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('226', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '2847', '476829', '237165', '701', '332', '1758', '15', TO_DATE('2017-05-06 23:57:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('227', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '2762', '476829', '237165', '701', '293', '1758', '15', TO_DATE('2017-05-06 23:59:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('228', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '2852', '476829', '237165', '701', '252', '1758', '15', TO_DATE('2017-05-07 00:01:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('229', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '2704', '476829', '237166', '701', '189', '1758', '15', TO_DATE('2017-05-07 00:03:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('230', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '2780', '476829', '237164', '701', '103', '1758', '15', TO_DATE('2017-05-07 00:05:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('231', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '2782', '476829', '237164', '701', '103', '1758', '15', TO_DATE('2017-05-07 00:07:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('232', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '2700', '476829', '237165', '701', '70', '1758', '15', TO_DATE('2017-05-07 00:09:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('296', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '3231', '476829', '237156', '714', '616', '1758', '14', TO_DATE('2017-05-07 03:56:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('297', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '3237', '476829', '237156', '714', '513', '1758', '14', TO_DATE('2017-05-07 03:58:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('298', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3221', '476829', '237156', '714', '508', '1758', '14', TO_DATE('2017-05-07 04:00:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('299', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '3201', '476829', '237156', '714', '502', '1758', '14', TO_DATE('2017-05-07 04:02:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('300', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '3215', '476829', '237156', '714', '502', '1758', '14', TO_DATE('2017-05-07 04:04:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('301', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '3259', '476829', '237156', '714', '502', '1758', '14', TO_DATE('2017-05-07 04:06:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('302', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '3255', '476829', '237156', '714', '480', '1758', '14', TO_DATE('2017-05-07 04:08:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('303', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3251', '476829', '237156', '714', '478', '1758', '14', TO_DATE('2017-05-07 04:10:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('304', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '3197', '476829', '237156', '714', '478', '1758', '14', TO_DATE('2017-05-07 04:12:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('305', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '3186', '476829', '237155', '714', '415', '1758', '14', TO_DATE('2017-05-07 04:14:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('306', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '3149', '476829', '237155', '714', '403', '1758', '14', TO_DATE('2017-05-07 04:16:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('307', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3133', '476829', '237154', '714', '403', '1758', '14', TO_DATE('2017-05-07 04:18:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('308', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3118', '476829', '237155', '714', '399', '1758', '14', TO_DATE('2017-05-07 04:20:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('309', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '3108', '476829', '237154', '714', '399', '1758', '14', TO_DATE('2017-05-07 04:22:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('310', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '3104', '476829', '237153', '714', '341', '1758', '14', TO_DATE('2017-05-07 04:24:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('311', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '3094', '476829', '237153', '714', '327', '1758', '14', TO_DATE('2017-05-07 04:26:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('312', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '3127', '476829', '237153', '714', '324', '1758', '14', TO_DATE('2017-05-07 04:28:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('313', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '3110', '476829', '237153', '714', '322', '1758', '14', TO_DATE('2017-05-07 04:30:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('314', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3067', '476829', '237153', '714', '322', '1758', '14', TO_DATE('2017-05-07 04:32:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('315', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3043', '476829', '237153', '714', '311', '1758', '14', TO_DATE('2017-05-07 04:34:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('316', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '3015', '476829', '237153', '714', '246', '1758', '14', TO_DATE('2017-05-07 04:36:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('317', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '3025', '476829', '237153', '714', '227', '1758', '14', TO_DATE('2017-05-07 04:38:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('2', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '2619', '476829', '237280', '333', '201', '1758', '10', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('18', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '2020', '476829', '237278', '332', '209', '1758', '10', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('19', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '1911', '476829', '237278', '332', '201', '1758', '10', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('40', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '100', '7906', '3216', '476829', '237277', '332', '223', '1758', '10', TO_DATE('2017-05-06 13:40:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('41', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '3153', '476829', '237276', '454', '352', '1758', '12', TO_DATE('2017-05-06 13:42:56', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('42', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '3180', '476829', '237276', '454', '348', '1758', '12', TO_DATE('2017-05-06 13:44:56', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('43', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '3182', '476829', '237276', '454', '347', '1758', '12', TO_DATE('2017-05-06 13:46:56', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('44', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '3171', '476829', '237276', '454', '346', '1758', '12', TO_DATE('2017-05-06 13:48:56', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('158', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '100', '7906', '3482', '476829', '237200', '699', '605', '1758', '14', TO_DATE('2017-05-06 21:44:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('168', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '3670', '476829', '237201', '699', '554', '1758', '14', TO_DATE('2017-05-06 22:09:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('169', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '9', '7906', '3677', '476829', '237200', '699', '463', '1758', '14', TO_DATE('2017-05-06 22:11:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('170', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3724', '476829', '237200', '699', '458', '1758', '14', TO_DATE('2017-05-06 22:13:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('172', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '4116', '476829', '237201', '492', '282', '1758', '12', TO_DATE('2017-05-06 22:16:21', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('176', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '3817', '476829', '237201', '701', '596', '1758', '14', TO_DATE('2017-05-06 22:21:36', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('177', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '3752', '476829', '237200', '701', '533', '1758', '14', TO_DATE('2017-05-06 22:23:35', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('212', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '3342', '476829', '237165', '688', '541', '1758', '14', TO_DATE('2017-05-06 23:29:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('213', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '3290', '476829', '237165', '688', '541', '1758', '14', TO_DATE('2017-05-06 23:31:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('214', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '3244', '476829', '237165', '688', '435', '1758', '14', TO_DATE('2017-05-06 23:33:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('215', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '9', '7906', '3069', '476829', '237166', '688', '318', '1758', '14', TO_DATE('2017-05-06 23:35:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('216', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '9', '7906', '3016', '476829', '237166', '688', '207', '1758', '14', TO_DATE('2017-05-06 23:37:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('217', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '2970', '476829', '237168', '688', '201', '1758', '14', TO_DATE('2017-05-06 23:39:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('237', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '1872', '476829', '237163', '713', '614', '1758', '14', TO_DATE('2017-05-07 01:57:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('238', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '8', '7906', '1807', '476829', '237162', '713', '564', '1758', '14', TO_DATE('2017-05-07 01:59:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('239', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '8', '7906', '1796', '476829', '237162', '713', '530', '1758', '14', TO_DATE('2017-05-07 02:01:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('240', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '9', '7906', '1790', '476829', '237162', '713', '459', '1758', '14', TO_DATE('2017-05-07 02:03:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('241', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '8', '7906', '1767', '476829', '237164', '713', '364', '1758', '14', TO_DATE('2017-05-07 02:05:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('242', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '1729', '476829', '237164', '713', '361', '1758', '14', TO_DATE('2017-05-07 02:07:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('243', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '8', '7906', '1733', '476829', '237163', '713', '330', '1758', '14', TO_DATE('2017-05-07 02:09:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('244', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '8', '7906', '1715', '476829', '237163', '713', '302', '1758', '14', TO_DATE('2017-05-07 02:11:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('245', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '9', '7906', '1679', '476829', '237162', '713', '215', '1758', '14', TO_DATE('2017-05-07 02:13:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('246', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '1691', '476829', '237162', '713', '212', '1758', '14', TO_DATE('2017-05-07 02:15:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('247', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '1685', '476829', '237162', '713', '212', '1758', '14', TO_DATE('2017-05-07 02:17:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('248', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '1690', '476829', '237162', '713', '210', '1758', '14', TO_DATE('2017-05-07 02:19:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('249', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '1630', '476829', '237162', '713', '157', '1758', '14', TO_DATE('2017-05-07 02:21:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('250', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '8', '7906', '1571', '476829', '237162', '713', '157', '1758', '14', TO_DATE('2017-05-07 02:23:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('251', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '8', '7906', '1508', '476829', '237162', '713', '126', '1758', '14', TO_DATE('2017-05-07 02:25:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('1', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '2675', '476829', '237280', '333', '222', '1758', '10', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('3', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '2645', '476829', '237280', '331', '223', '1758', '10', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('4', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '2680', '476829', '237280', '331', '193', '1758', '10', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('5', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '2', '7906', '2663', '476829', '237280', '331', '191', '1758', '10', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('6', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '2', '7906', '2671', '476829', '237280', '331', '190', '1758', '10', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('7', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '2', '7906', '2663', '476829', '237280', '331', '188', '1758', '10', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('8', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '2', '7906', '2631', '476829', '237280', '331', '188', '1758', '10', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('9', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '2', '7906', '2639', '476829', '237280', '331', '188', '1758', '10', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('10', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '2', '7906', '2631', '476829', '237280', '331', '188', '1758', '10', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('11', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '2', '7906', '2636', '476829', '237280', '331', '187', '1758', '10', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('12', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '2599', '476829', '237280', '331', '187', '1758', '10', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('13', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '2571', '476829', '237279', '331', '186', '1758', '10', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('14', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '2603', '476829', '237279', '331', '185', '1758', '10', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('15', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '2631', '476829', '237279', '331', '182', '1758', '10', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('16', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '8', '7906', '2348', '476829', '237279', '331', '182', '1758', '10', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('17', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '8', '7906', '2171', '476829', '237279', '331', '182', '1758', '10', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('20', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '1833', '476829', '237277', '332', '223', '1758', '10', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('21', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '1806', '476829', '237278', '332', '194', '1758', '10', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('22', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '1799', '476829', '237278', '332', '223', '1758', '10', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('23', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '4252', '476829', '237277', '332', '222', '1758', '10', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('24', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '4151', '476829', '237277', '459', '356', '1758', '12', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('45', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '3741', '476829', '237273', '332', '222', '1758', '10', TO_DATE('2017-05-06 16:31:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('46', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '3728', '476829', '237273', '333', '211', '1758', '10', TO_DATE('2017-05-06 16:33:08', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('47', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '3722', '476829', '237273', '331', '207', '1758', '10', TO_DATE('2017-05-06 16:33:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('97', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '3270', '476829', '237209', '704', '568', '1758', '14', TO_DATE('2017-05-06 19:32:46', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('98', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3332', '476829', '237209', '704', '560', '1758', '14', TO_DATE('2017-05-06 19:34:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('99', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '2', '7906', '3298', '476829', '237209', '704', '554', '1758', '14', TO_DATE('2017-05-06 19:36:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('100', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '100', '7906', '3290', '476829', '237209', '700', '601', '1758', '14', TO_DATE('2017-05-06 19:37:46', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('101', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '2', '7906', '3289', '476829', '237209', '700', '576', '1758', '14', TO_DATE('2017-05-06 19:39:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('102', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '1', '7906', '3295', '476829', '237209', '700', '571', '1758', '14', TO_DATE('2017-05-06 19:41:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('103', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '1', '7906', '3304', '476829', '237209', '700', '571', '1758', '14', TO_DATE('2017-05-06 19:43:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('104', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '2', '7906', '3297', '476829', '237209', '700', '571', '1758', '14', TO_DATE('2017-05-06 19:45:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('105', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3294', '476829', '237209', '700', '556', '1758', '14', TO_DATE('2017-05-06 19:47:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('106', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3270', '476829', '237209', '700', '478', '1758', '14', TO_DATE('2017-05-06 19:49:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('107', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3112', '476829', '237209', '700', '478', '1758', '14', TO_DATE('2017-05-06 19:51:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('108', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '1', '7906', '3152', '476829', '237209', '700', '471', '1758', '14', TO_DATE('2017-05-06 19:53:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('109', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '1', '7906', '3154', '476829', '237209', '700', '471', '1758', '14', TO_DATE('2017-05-06 19:55:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('110', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3157', '476829', '237209', '700', '467', '1758', '14', TO_DATE('2017-05-06 19:57:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('111', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3149', '476829', '237209', '700', '454', '1758', '14', TO_DATE('2017-05-06 19:59:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('112', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '3035', '476829', '237208', '700', '447', '1758', '14', TO_DATE('2017-05-06 20:01:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('133', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '2451', '476829', '237203', '700', '602', '1758', '14', TO_DATE('2017-05-06 20:57:33', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('134', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '2449', '476829', '237202', '700', '515', '1758', '14', TO_DATE('2017-05-06 20:59:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('135', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '2', '7906', '2464', '476829', '237202', '700', '511', '1758', '14', TO_DATE('2017-05-06 21:01:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('136', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '2474', '476829', '237202', '700', '505', '1758', '14', TO_DATE('2017-05-06 21:03:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('137', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '2481', '476829', '237202', '700', '505', '1758', '14', TO_DATE('2017-05-06 21:05:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('140', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '3383', '476829', '237201', '710', '578', '1758', '14', TO_DATE('2017-05-06 21:12:09', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('141', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '3371', '476829', '237201', '710', '553', '1758', '14', TO_DATE('2017-05-06 21:14:08', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('152', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '3054', '476829', '237201', '697', '543', '1758', '14', TO_DATE('2017-05-06 21:32:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('153', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '2936', '476829', '237201', '697', '538', '1758', '14', TO_DATE('2017-05-06 21:34:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('154', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '2968', '476829', '237201', '697', '524', '1758', '14', TO_DATE('2017-05-06 21:36:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('155', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '2', '7906', '2974', '476829', '237201', '697', '524', '1758', '14', TO_DATE('2017-05-06 21:38:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('156', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '2850', '476829', '237200', '697', '475', '1758', '14', TO_DATE('2017-05-06 21:40:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('159', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '3474', '476829', '237199', '495', '279', '1758', '12', TO_DATE('2017-05-06 21:47:20', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('166', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '4036', '476829', '237201', '683', '589', '1758', '14', TO_DATE('2017-05-06 22:06:29', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('167', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '3700', '476829', '237201', '683', '538', '1758', '14', TO_DATE('2017-05-06 22:08:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('171', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '4060', '476829', '237201', '694', '577', '1758', '14', TO_DATE('2017-05-06 22:15:36', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('178', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '3736', '476829', '237200', '694', '592', '1758', '14', TO_DATE('2017-05-06 22:24:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('179', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '3738', '476829', '237200', '694', '516', '1758', '14', TO_DATE('2017-05-06 22:26:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('180', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '11', '7906', '3508', '476829', '237200', '694', '510', '1758', '14', TO_DATE('2017-05-06 22:28:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('181', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3527', '476829', '237200', '694', '503', '1758', '14', TO_DATE('2017-05-06 22:30:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('182', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '3527', '476829', '237199', '694', '498', '1758', '14', TO_DATE('2017-05-06 22:32:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('183', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3557', '476829', '237199', '694', '495', '1758', '14', TO_DATE('2017-05-06 22:34:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('184', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3538', '476829', '237200', '694', '492', '1758', '14', TO_DATE('2017-05-06 22:36:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('185', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3546', '476829', '237200', '694', '492', '1758', '14', TO_DATE('2017-05-06 22:38:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('186', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '3521', '476829', '237200', '694', '483', '1758', '14', TO_DATE('2017-05-06 22:40:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('202', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '3324', '476829', '237167', '669', '496', '1758', '11', TO_DATE('2017-05-06 23:11:35', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('203', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '3223', '476829', '237163', '669', '456', '1758', '11', TO_DATE('2017-05-06 23:13:35', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('204', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3223', '476829', '237163', '669', '446', '1758', '11', TO_DATE('2017-05-06 23:15:35', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('210', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '8', '7906', '3231', '476829', '237165', '708', '371', '1758', '14', TO_DATE('2017-05-06 23:25:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('211', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '3239', '476829', '237165', '708', '371', '1758', '14', TO_DATE('2017-05-06 23:27:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('233', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '2919', '476829', '237164', '702', '604', '1758', '14', TO_DATE('2017-05-07 00:10:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('234', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '2958', '476829', '237164', '702', '579', '1758', '14', TO_DATE('2017-05-07 00:12:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('235', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '2889', '476829', '237169', '702', '568', '1758', '14', TO_DATE('2017-05-07 00:14:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('236', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '2907', '476829', '237169', '702', '564', '1758', '14', TO_DATE('2017-05-07 00:16:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('252', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '100', '7906', '1636', '476829', '237162', '709', '616', '1758', '14', TO_DATE('2017-05-07 02:26:46', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('253', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '9', '7906', '1566', '476829', '237162', '709', '471', '1758', '14', TO_DATE('2017-05-07 02:28:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('254', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '9', '7906', '1614', '476829', '237162', '709', '402', '1758', '14', TO_DATE('2017-05-07 02:30:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('255', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '8', '7906', '1641', '476829', '237161', '709', '352', '1758', '14', TO_DATE('2017-05-07 02:32:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('256', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '14', '7906', '1533', '476829', '237160', '709', '316', '1758', '14', TO_DATE('2017-05-07 02:34:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('257', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '8', '7906', '1526', '476829', '237161', '709', '278', '1758', '14', TO_DATE('2017-05-07 02:36:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('258', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '15', '7906', '1511', '476829', '237160', '709', '240', '1758', '14', TO_DATE('2017-05-07 02:38:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('259', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '1509', '476829', '237160', '709', '231', '1758', '14', TO_DATE('2017-05-07 02:40:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('260', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '1504', '476829', '237160', '709', '226', '1758', '14', TO_DATE('2017-05-07 02:42:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('261', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '1409', '476829', '237160', '709', '224', '1758', '14', TO_DATE('2017-05-07 02:44:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('25', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '4033', '476829', '237276', '333', '221', '1758', '10', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('26', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '2', '7906', '4066', '476829', '237277', '333', '205', '1758', '10', TO_DATE('1970-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('27', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '3366', '476829', '237276', '333', '223', '1758', '10', TO_DATE('2017-05-06 12:44:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('28', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '8', '7906', '3384', '476829', '237276', '333', '179', '1758', '10', TO_DATE('2017-05-06 12:46:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('29', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '3405', '476829', '237276', '333', '177', '1758', '10', TO_DATE('2017-05-06 12:48:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('30', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '3412', '476829', '237276', '333', '176', '1758', '10', TO_DATE('2017-05-06 12:50:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('31', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '3468', '476829', '237276', '333', '174', '1758', '10', TO_DATE('2017-05-06 12:52:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('32', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '3475', '476829', '237276', '333', '174', '1758', '10', TO_DATE('2017-05-06 12:54:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('33', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '3477', '476829', '237276', '333', '174', '1758', '10', TO_DATE('2017-05-06 12:56:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('34', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '3477', '476829', '237276', '333', '173', '1758', '10', TO_DATE('2017-05-06 12:58:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('35', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '3469', '476829', '237276', '333', '173', '1758', '10', TO_DATE('2017-05-06 13:00:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('36', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '3463', '476829', '237276', '333', '170', '1758', '10', TO_DATE('2017-05-06 13:02:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('37', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '3380', '476829', '237276', '354', '232', '1758', '8', TO_DATE('2017-05-06 13:04:33', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('38', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '8', '7906', '3307', '476829', '237277', '354', '199', '1758', '8', TO_DATE('2017-05-06 13:06:33', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('39', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '3332', '476829', '237277', '354', '197', '1758', '8', TO_DATE('2017-05-06 13:08:33', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('81', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '3251', '476829', '237210', '712', '606', '1758', '14', TO_DATE('2017-05-06 19:04:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('82', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '3243', '476829', '237210', '703', '590', '1758', '14', TO_DATE('2017-05-06 19:05:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('95', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3280', '476829', '237209', '715', '567', '1758', '14', TO_DATE('2017-05-06 19:30:09', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('96', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '2', '7906', '3323', '476829', '237209', '715', '557', '1758', '14', TO_DATE('2017-05-06 19:32:09', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('120', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '2834', '476829', '237206', '708', '582', '1758', '14', TO_DATE('2017-05-06 20:16:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('121', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '2855', '476829', '237206', '708', '538', '1758', '14', TO_DATE('2017-05-06 20:18:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('122', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '2851', '476829', '237206', '708', '528', '1758', '14', TO_DATE('2017-05-06 20:20:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('123', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '2849', '476829', '237205', '708', '509', '1758', '14', TO_DATE('2017-05-06 20:22:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('124', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '2840', '476829', '237205', '708', '490', '1758', '14', TO_DATE('2017-05-06 20:24:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('125', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '2760', '476829', '237205', '708', '386', '1758', '14', TO_DATE('2017-05-06 20:26:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('126', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '2782', '476829', '237205', '708', '345', '1758', '14', TO_DATE('2017-05-06 20:28:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('127', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '2782', '476829', '237205', '712', '609', '1758', '14', TO_DATE('2017-05-06 20:30:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('128', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '2762', '476829', '237205', '712', '498', '1758', '14', TO_DATE('2017-05-06 20:32:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('129', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '2765', '476829', '237205', '712', '492', '1758', '14', TO_DATE('2017-05-06 20:34:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('130', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '2461', '476829', '237204', '712', '485', '1758', '14', TO_DATE('2017-05-06 20:36:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('131', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '2403', '476829', '237204', '712', '485', '1758', '14', TO_DATE('2017-05-06 20:38:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('150', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '3162', '476829', '237200', '696', '522', '1758', '14', TO_DATE('2017-05-06 21:29:12', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('151', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '100', '7906', '3140', '476829', '237200', '697', '569', '1758', '14', TO_DATE('2017-05-06 21:30:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('160', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '100', '7906', '4018', '476829', '237203', '669', '513', '1758', '11', TO_DATE('2017-05-06 21:55:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('161', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '3665', '476829', '237203', '669', '509', '1758', '11', TO_DATE('2017-05-06 21:57:41', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('162', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '3587', '476829', '237202', '669', '385', '1758', '11', TO_DATE('2017-05-06 21:59:41', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('163', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '100', '7906', '3769', '476829', '237202', '695', '599', '1758', '14', TO_DATE('2017-05-06 22:01:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('164', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '3696', '476829', '237201', '695', '526', '1758', '14', TO_DATE('2017-05-06 22:03:04', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('165', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '3700', '476829', '237201', '695', '522', '1758', '14', TO_DATE('2017-05-06 22:05:04', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('205', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '0', '7906', '3363', '476829', '237162', '714', '616', '1758', '14', TO_DATE('2017-05-06 23:16:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('206', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '3328', '476829', '237162', '714', '607', '1758', '14', TO_DATE('2017-05-06 23:18:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('207', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '100', '7906', '3325', '476829', '237165', '708', '602', '1758', '14', TO_DATE('2017-05-06 23:19:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('208', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '3273', '476829', '237165', '708', '467', '1758', '14', TO_DATE('2017-05-06 23:21:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('209', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '3282', '476829', '237165', '708', '438', '1758', '14', TO_DATE('2017-05-06 23:23:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('262', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '1413', '476829', '237160', '709', '224', '1758', '14', TO_DATE('2017-05-07 02:46:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('263', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '1342', '476829', '237160', '709', '218', '1758', '14', TO_DATE('2017-05-07 02:48:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('264', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '1334', '476829', '237160', '709', '216', '1758', '14', TO_DATE('2017-05-07 02:50:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('265', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '1327', '476829', '237160', '709', '216', '1758', '14', TO_DATE('2017-05-07 02:52:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('266', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '1331', '476829', '237159', '709', '213', '1758', '14', TO_DATE('2017-05-07 02:54:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('267', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '1298', '476829', '237159', '709', '179', '1758', '14', TO_DATE('2017-05-07 02:56:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('268', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '7', '7906', '1304', '476829', '237159', '709', '167', '1758', '14', TO_DATE('2017-05-07 02:58:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('269', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '8', '7906', '1192', '476829', '237159', '709', '158', '1758', '14', TO_DATE('2017-05-07 03:00:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('270', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '9', '7906', '1091', '476829', '237158', '709', '158', '1758', '14', TO_DATE('2017-05-07 03:02:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('271', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '8', '7906', '1035', '476829', '237159', '709', '114', '1758', '14', TO_DATE('2017-05-07 03:04:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('272', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '8', '7906', '1056', '476829', '237159', '709', '109', '1758', '14', TO_DATE('2017-05-07 03:06:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('273', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '8', '7906', '899', '476829', '237159', '709', '109', '1758', '14', TO_DATE('2017-05-07 03:08:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('274', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '10', '7906', '884', '476829', '237162', '709', '109', '1758', '14', TO_DATE('2017-05-07 03:10:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('275', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '13', '7906', '877', '476829', '237162', '709', '107', '1758', '14', TO_DATE('2017-05-07 03:12:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('276', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '11', '7906', '856', '476829', '237161', '709', '107', '1758', '14', TO_DATE('2017-05-07 03:14:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('277', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '12', '7906', '830', '476829', '237161', '709', '107', '1758', '14', TO_DATE('2017-05-07 03:16:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('278', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '12', '7906', '892', '476829', '237161', '709', '107', '1758', '14', TO_DATE('2017-05-07 03:18:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('279', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '12', '7906', '935', '476829', '237161', '709', '107', '1758', '14', TO_DATE('2017-05-07 03:20:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('280', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '12', '7906', '935', '476829', '237161', '709', '104', '1758', '14', TO_DATE('2017-05-07 03:22:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('281', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '12', '7906', '889', '476829', '237161', '709', '104', '1758', '14', TO_DATE('2017-05-07 03:24:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('282', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '3005', '476829', '237161', '711', '580', '1758', '15', TO_DATE('2017-05-07 03:26:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('283', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '3043', '476829', '237161', '711', '580', '1758', '15', TO_DATE('2017-05-07 03:28:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('284', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '3022', '476829', '237160', '711', '576', '1758', '15', TO_DATE('2017-05-07 03:30:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('285', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '3', '7906', '3040', '476829', '237160', '711', '575', '1758', '15', TO_DATE('2017-05-07 03:32:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('286', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '3046', '476829', '237160', '711', '575', '1758', '15', TO_DATE('2017-05-07 03:34:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('287', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '2986', '476829', '237156', '711', '568', '1758', '15', TO_DATE('2017-05-07 03:36:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('288', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '3017', '476829', '237155', '711', '560', '1758', '15', TO_DATE('2017-05-07 03:38:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('289', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '3037', '476829', '237155', '711', '560', '1758', '15', TO_DATE('2017-05-07 03:40:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('290', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '3040', '476829', '237154', '711', '556', '1758', '15', TO_DATE('2017-05-07 03:42:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('291', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '3051', '476829', '237154', '711', '555', '1758', '15', TO_DATE('2017-05-07 03:44:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('292', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '3065', '476829', '237155', '711', '553', '1758', '15', TO_DATE('2017-05-07 03:46:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('293', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '4', '7906', '3088', '476829', '237155', '711', '553', '1758', '15', TO_DATE('2017-05-07 03:48:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('294', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '2969', '476829', '237156', '711', '465', '1758', '15', TO_DATE('2017-05-07 03:50:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('295', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '5', '7906', '2929', '476829', '237156', '711', '448', '1758', '15', TO_DATE('2017-05-07 03:52:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('318', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '100', '7906', '3364', '476829', '237154', '703', '605', '1758', '14', TO_DATE('2017-05-07 04:39:53', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."RESOURCESLOG" VALUES ('319', 'Windows 7', '192.168.72.1', 'thinkpad', '8', '6', '7906', '3357', '476829', '237154', '703', '557', '1758', '14', TO_DATE('2017-05-07 04:41:53', 'YYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for ROLE
-- ----------------------------
DROP TABLE "TYXYL"."ROLE";
CREATE TABLE "TYXYL"."ROLE" (
"ID" NUMBER(11) NOT NULL ,
"ROLE_NAME" VARCHAR2(20 BYTE) NOT NULL ,
"ROLE_PERMISSION" VARCHAR2(255 BYTE) NULL ,
"CREATE_TIME" DATE NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of ROLE
-- ----------------------------
INSERT INTO "TYXYL"."ROLE" VALUES ('1', 'administrator', '超级管理员', TO_DATE('2015-07-18 18:14:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."ROLE" VALUES ('2', 'user', '除管理员权限和其他具有特殊权限的模块外才能访问,即普通用户', TO_DATE('2015-09-24 12:46:01', 'YYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for TEST
-- ----------------------------
DROP TABLE "TYXYL"."TEST";
CREATE TABLE "TYXYL"."TEST" (
"ID" NUMBER(18) NOT NULL ,
"NAME" VARCHAR2(255 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of TEST
-- ----------------------------
INSERT INTO "TYXYL"."TEST" VALUES ('2', 'hh');
INSERT INTO "TYXYL"."TEST" VALUES ('3', 'hh');
INSERT INTO "TYXYL"."TEST" VALUES ('1', 'he');

-- ----------------------------
-- Table structure for TEST_BLOG
-- ----------------------------
DROP TABLE "TYXYL"."TEST_BLOG";
CREATE TABLE "TYXYL"."TEST_BLOG" (
"ID" NUMBER(11) NOT NULL ,
"TITLE" VARCHAR2(200 BYTE) NOT NULL ,
"CONTENT" VARCHAR2(2000 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of TEST_BLOG
-- ----------------------------
INSERT INTO "TYXYL"."TEST_BLOG" VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for USERLOGININFO
-- ----------------------------
DROP TABLE "TYXYL"."USERLOGININFO";
CREATE TABLE "TYXYL"."USERLOGININFO" (
"ID" NUMBER(11) NOT NULL ,
"USER_ID" NUMBER(11) NULL ,
"LOGIN_TIME" DATE NULL ,
"LOGIN_IP" VARCHAR2(255 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of USERLOGININFO
-- ----------------------------
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('1', '2', TO_DATE('2017-05-06 19:17:39', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('3', '2', TO_DATE('2017-05-06 20:05:26', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('6', '2', TO_DATE('2017-05-06 20:52:59', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('11', '2', TO_DATE('2017-05-06 21:17:32', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('12', '2', TO_DATE('2017-05-06 21:19:22', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('19', '2', TO_DATE('2017-05-06 22:16:57', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('20', '2', TO_DATE('2017-05-06 22:19:32', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('23', '2', TO_DATE('2017-05-06 22:42:26', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('24', '2', TO_DATE('2017-05-06 23:04:16', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('27', '2', TO_DATE('2017-05-06 23:40:58', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('28', '3', TO_DATE('2017-05-07 00:08:41', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('8', '2', TO_DATE('2017-05-06 21:08:01', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('10', '2', TO_DATE('2017-05-06 21:15:23', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('31', '1', TO_DATE('2017-05-07 02:27:17', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('14', '2', TO_DATE('2017-05-06 21:44:28', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('18', '2', TO_DATE('2017-05-06 22:10:02', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('21', '2', TO_DATE('2017-05-06 22:21:45', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('36', '1', TO_DATE('2017-05-07 04:40:03', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('7', '2', TO_DATE('2017-05-06 20:57:44', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('9', '2', TO_DATE('2017-05-06 21:12:15', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('13', '2', TO_DATE('2017-05-06 21:30:34', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('17', '2', TO_DATE('2017-05-06 22:08:07', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('22', '2', TO_DATE('2017-05-06 22:25:07', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('25', '2', TO_DATE('2017-05-06 23:11:42', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('29', '6', TO_DATE('2017-05-07 02:00:07', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('30', '1', TO_DATE('2017-05-07 02:02:33', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('32', '1', TO_DATE('2017-05-07 03:56:36', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('33', '2', TO_DATE('2017-05-07 04:34:33', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('34', '1', TO_DATE('2017-05-07 04:35:04', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('35', '1', TO_DATE('2017-05-07 04:36:10', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('2', '2', TO_DATE('2017-05-06 19:28:18', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('4', '2', TO_DATE('2017-05-06 20:17:32', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('5', '2', TO_DATE('2017-05-06 20:31:38', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('15', '2', TO_DATE('2017-05-06 21:58:16', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('16', '2', TO_DATE('2017-05-06 22:02:07', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');
INSERT INTO "TYXYL"."USERLOGININFO" VALUES ('26', '2', TO_DATE('2017-05-06 23:19:46', 'YYYY-MM-DD HH24:MI:SS'), '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for USERROLE
-- ----------------------------
DROP TABLE "TYXYL"."USERROLE";
CREATE TABLE "TYXYL"."USERROLE" (
"ID" NUMBER(11) NOT NULL ,
"USER_ID" NUMBER(11) NOT NULL ,
"ROLE_ID" NUMBER(11) NOT NULL ,
"CREATE_TIME" DATE NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of USERROLE
-- ----------------------------
INSERT INTO "TYXYL"."USERROLE" VALUES ('1', '1', '1', TO_DATE('2017-05-07 04:42:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "TYXYL"."USERROLE" VALUES ('2', '2', '2', TO_DATE('2017-05-07 04:00:32', 'YYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for USERS
-- ----------------------------
DROP TABLE "TYXYL"."USERS";
CREATE TABLE "TYXYL"."USERS" (
"ID" NUMBER(11) NOT NULL ,
"USERNAME" VARCHAR2(255 BYTE) NOT NULL ,
"REALNAME" VARCHAR2(255 BYTE) NULL ,
"UUID" VARCHAR2(32 BYTE) NOT NULL ,
"PASSWORD" VARCHAR2(32 BYTE) NULL ,
"AVATAR" VARCHAR2(255 BYTE) NULL ,
"SEX" NUMBER(11) NULL ,
"FOLK" VARCHAR2(20 BYTE) NULL ,
"MAIL" VARCHAR2(255 BYTE) NULL ,
"MOBILE" VARCHAR2(255 BYTE) NULL ,
"QQ" VARCHAR2(255 BYTE) NULL ,
"ADDRESS" VARCHAR2(255 BYTE) NULL ,
"JOB" VARCHAR2(255 BYTE) NULL ,
"CREATE_TIME" DATE NOT NULL ,
"LOGIN_TIME" DATE NULL ,
"DELETED" NUMBER(11) NOT NULL ,
"TYPE" NUMBER(11) NOT NULL ,
"AGE" NUMBER(11) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of USERS
-- ----------------------------
INSERT INTO "TYXYL"."USERS" VALUES ('1', 'admin', '超级管理员', 'db2ec2f146de4baba94142c3597da4d2', '9a5d81293cb5b17fc5ed311f8d471aa8', null, null, null, null, null, null, null, null, TO_DATE('2016-01-12 10:47:38', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2017-05-07 04:40:03', 'YYYY-MM-DD HH24:MI:SS'), '0', '0', null);
INSERT INTO "TYXYL"."USERS" VALUES ('2', 'hecore', 'hecore', '8190d79ac7be44c3a6c589342855548d', 'ecf2d7fe31701768482cd91953b0b8ef', 'default.png', null, null, 'hecore@163.com', null, null, null, null, TO_DATE('2017-05-07 01:59:18', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2017-05-07 04:34:33', 'YYYY-MM-DD HH24:MI:SS'), '0', '0', null);

-- ----------------------------
-- Table structure for VIDEO
-- ----------------------------
DROP TABLE "TYXYL"."VIDEO";
CREATE TABLE "TYXYL"."VIDEO" (
"ID" NUMBER(11) NOT NULL ,
"USER_ID" NUMBER(11) NOT NULL ,
"TITLE" VARCHAR2(255 BYTE) NOT NULL ,
"PRE" CLOB NOT NULL ,
"CONTENT" CLOB NULL ,
"KEYWORD" VARCHAR2(50 BYTE) NULL ,
"IMAGE" VARCHAR2(50 BYTE) NULL ,
"BLEVEL" NUMBER(11) NOT NULL ,
"BVIEW" NUMBER(11) NOT NULL ,
"BTYPE" NUMBER(11) NOT NULL ,
"CREATE_TIME" DATE NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of VIDEO
-- ----------------------------
INSERT INTO "TYXYL"."VIDEO" VALUES ('2', '2', '三生三世', '<iframe marginwidth=0 marginheight=0 src=''http://v.youku.com/v_show/id_XMjQ4MTc0ODMyOA==.html?firsttime=0'' frameborder=0 width=900 scrolling=no height=600 allowtransparency></iframe>', 'ss', 'ss', '2d467ba1e41b46fc97b4bad962cb38f0.png', '0', '0', '0', TO_DATE('2017-05-07 00:03:15', 'YYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for XYL_USER
-- ----------------------------
DROP TABLE "TYXYL"."XYL_USER";
CREATE TABLE "TYXYL"."XYL_USER" (
"ID" NUMBER(18) NOT NULL ,
"LOGINNAME" VARCHAR2(255 BYTE) NULL ,
"PASSWORD" VARCHAR2(255 BYTE) NULL ,
"GRANTFLAG" VARCHAR2(255 BYTE) NULL ,
"WECHAT" VARCHAR2(255 BYTE) NULL ,
"WEIBO" VARCHAR2(255 BYTE) NULL ,
"QQ" VARCHAR2(18 BYTE) NULL ,
"EMAIL" VARCHAR2(255 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of XYL_USER
-- ----------------------------
INSERT INTO "TYXYL"."XYL_USER" VALUES ('6', '王闯', '2222', '0', null, null, null, '707515594@qq.com');
INSERT INTO "TYXYL"."XYL_USER" VALUES ('11', 'hecore', 'hecore', '0', '1', '1', '1', 'hecore@163.com');
INSERT INTO "TYXYL"."XYL_USER" VALUES ('1', 'admin', 'admin', '1', null, null, null, null);
INSERT INTO "TYXYL"."XYL_USER" VALUES ('9', 'ztzt', '2222', '0', null, null, null, '54615461@163.com');
INSERT INTO "TYXYL"."XYL_USER" VALUES ('10', 'ztzt', '2222', '0', null, null, null, '54615461@163.com');
INSERT INTO "TYXYL"."XYL_USER" VALUES ('7', 'ztzt', '2222', '0', null, null, null, '54615461@163.com');
INSERT INTO "TYXYL"."XYL_USER" VALUES ('8', 'ztzt', '2222', '0', null, null, null, '54615461@163.com');
INSERT INTO "TYXYL"."XYL_USER" VALUES ('2', '张婷', '950320', '0', null, null, null, '780038081@qq.com');
INSERT INTO "TYXYL"."XYL_USER" VALUES ('5', '张婷', '950320', '0', null, null, null, '7800');

-- ----------------------------
-- Sequence structure for SEQ_BEAUTY
-- ----------------------------
DROP SEQUENCE "TYXYL"."SEQ_BEAUTY";
CREATE SEQUENCE "TYXYL"."SEQ_BEAUTY"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 21
 CACHE 20;

-- ----------------------------
-- Sequence structure for SEQ_BLOG
-- ----------------------------
DROP SEQUENCE "TYXYL"."SEQ_BLOG";
CREATE SEQUENCE "TYXYL"."SEQ_BLOG"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 22
 CACHE 20;

-- ----------------------------
-- Sequence structure for SEQ_GONGGAO
-- ----------------------------
DROP SEQUENCE "TYXYL"."SEQ_GONGGAO";
CREATE SEQUENCE "TYXYL"."SEQ_GONGGAO"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 21
 CACHE 20;

-- ----------------------------
-- Sequence structure for SEQ_IPLOG
-- ----------------------------
DROP SEQUENCE "TYXYL"."SEQ_IPLOG";
CREATE SEQUENCE "TYXYL"."SEQ_IPLOG"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 941
 CACHE 20;

-- ----------------------------
-- Sequence structure for SEQ_LINK
-- ----------------------------
DROP SEQUENCE "TYXYL"."SEQ_LINK";
CREATE SEQUENCE "TYXYL"."SEQ_LINK"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 21
 CACHE 20;

-- ----------------------------
-- Sequence structure for SEQ_PICRECOMMEND
-- ----------------------------
DROP SEQUENCE "TYXYL"."SEQ_PICRECOMMEND";
CREATE SEQUENCE "TYXYL"."SEQ_PICRECOMMEND"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 22
 CACHE 20;

-- ----------------------------
-- Sequence structure for SEQ_RESOURCCESLOG
-- ----------------------------
DROP SEQUENCE "TYXYL"."SEQ_RESOURCCESLOG";
CREATE SEQUENCE "TYXYL"."SEQ_RESOURCCESLOG"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 321
 CACHE 20;

-- ----------------------------
-- Sequence structure for SEQ_TEST
-- ----------------------------
DROP SEQUENCE "TYXYL"."SEQ_TEST";
CREATE SEQUENCE "TYXYL"."SEQ_TEST"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 21
 CACHE 20;

-- ----------------------------
-- Sequence structure for SEQ_USER
-- ----------------------------
DROP SEQUENCE "TYXYL"."SEQ_USER";
CREATE SEQUENCE "TYXYL"."SEQ_USER"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 22
 CACHE 20;

-- ----------------------------
-- Sequence structure for SEQ_USERLOGININFO
-- ----------------------------
DROP SEQUENCE "TYXYL"."SEQ_USERLOGININFO";
CREATE SEQUENCE "TYXYL"."SEQ_USERLOGININFO"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 41
 CACHE 20;

-- ----------------------------
-- Sequence structure for SEQ_VIDEO
-- ----------------------------
DROP SEQUENCE "TYXYL"."SEQ_VIDEO";
CREATE SEQUENCE "TYXYL"."SEQ_VIDEO"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 21
 CACHE 20;

-- ----------------------------
-- Sequence structure for SEQ_XYL_USER
-- ----------------------------
DROP SEQUENCE "TYXYL"."SEQ_XYL_USER";
CREATE SEQUENCE "TYXYL"."SEQ_XYL_USER"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 22
 CACHE 20;

-- ----------------------------
-- Sequence structure for TEST_SEQ_BLOG
-- ----------------------------
DROP SEQUENCE "TYXYL"."TEST_SEQ_BLOG";
CREATE SEQUENCE "TYXYL"."TEST_SEQ_BLOG"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 1
 CACHE 20;

-- ----------------------------
-- Indexes structure for table ADVICE
-- ----------------------------
CREATE BITMAP INDEX "TYXYL"."ADVICE_USERID_FOREGIGNKEY"
ON "TYXYL"."ADVICE" ("USER_ID" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table ADVICE
-- ----------------------------
ALTER TABLE "TYXYL"."ADVICE" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TYXYL"."ADVICE" ADD CHECK ("CONTENT" IS NOT NULL);
ALTER TABLE "TYXYL"."ADVICE" ADD CHECK ("ISREAD" IS NOT NULL);
ALTER TABLE "TYXYL"."ADVICE" ADD CHECK ("CREATE_TIME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table ADVICE
-- ----------------------------
ALTER TABLE "TYXYL"."ADVICE" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table BEAUTY
-- ----------------------------

-- ----------------------------
-- Triggers structure for table BEAUTY
-- ----------------------------
CREATE OR REPLACE TRIGGER "TYXYL"."TRG_BEAUTY" BEFORE INSERT ON "TYXYL"."BEAUTY" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
begin
select SEQ_BEAUTY.nextval into :new.ID from dual;
end;
-- ----------------------------
-- Checks structure for table BEAUTY
-- ----------------------------
ALTER TABLE "TYXYL"."BEAUTY" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TYXYL"."BEAUTY" ADD CHECK ("USER_ID" IS NOT NULL);
ALTER TABLE "TYXYL"."BEAUTY" ADD CHECK ("TITLE" IS NOT NULL);
ALTER TABLE "TYXYL"."BEAUTY" ADD CHECK ("IMG" IS NOT NULL);
ALTER TABLE "TYXYL"."BEAUTY" ADD CHECK ("BVIEW" IS NOT NULL);
ALTER TABLE "TYXYL"."BEAUTY" ADD CHECK ("BLEVEL" IS NOT NULL);
ALTER TABLE "TYXYL"."BEAUTY" ADD CHECK ("CREATE_TIME" IS NOT NULL);
ALTER TABLE "TYXYL"."BEAUTY" ADD CHECK ("DELETED" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table BEAUTY
-- ----------------------------
ALTER TABLE "TYXYL"."BEAUTY" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table BLOG
-- ----------------------------
CREATE BITMAP INDEX "TYXYL"."BLOG_USERID_FOREGIGNKEY"
ON "TYXYL"."BLOG" ("USER_ID" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Triggers structure for table BLOG
-- ----------------------------
CREATE OR REPLACE TRIGGER "TYXYL"."TRG_BLOG" BEFORE INSERT ON "TYXYL"."BLOG" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
begin
select SEQ_BLOG.nextval into :new.ID from dual;
end;
-- ----------------------------
-- Checks structure for table BLOG
-- ----------------------------
ALTER TABLE "TYXYL"."BLOG" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TYXYL"."BLOG" ADD CHECK ("USER_ID" IS NOT NULL);
ALTER TABLE "TYXYL"."BLOG" ADD CHECK ("TITLE" IS NOT NULL);
ALTER TABLE "TYXYL"."BLOG" ADD CHECK ("CONTENT" IS NOT NULL);
ALTER TABLE "TYXYL"."BLOG" ADD CHECK ("ISPUBLIC" IS NOT NULL);
ALTER TABLE "TYXYL"."BLOG" ADD CHECK ("DELETED" IS NOT NULL);
ALTER TABLE "TYXYL"."BLOG" ADD CHECK ("CATEGORY" IS NOT NULL);
ALTER TABLE "TYXYL"."BLOG" ADD CHECK ("BVIEW" IS NOT NULL);
ALTER TABLE "TYXYL"."BLOG" ADD CHECK ("TYPE" IS NOT NULL);
ALTER TABLE "TYXYL"."BLOG" ADD CHECK ("CREATE_TIME" IS NOT NULL);
ALTER TABLE "TYXYL"."BLOG" ADD CHECK ("ZHUANZAI" IS NOT NULL);
ALTER TABLE "TYXYL"."BLOG" ADD CHECK ("EDITORTYPE" IS NOT NULL);
ALTER TABLE "TYXYL"."BLOG" ADD CHECK ("BLEVEL" IS NOT NULL);
ALTER TABLE "TYXYL"."BLOG" ADD CHECK ("SHOWSIDE" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table BLOG
-- ----------------------------
ALTER TABLE "TYXYL"."BLOG" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table BLOGCATEGORY
-- ----------------------------

-- ----------------------------
-- Checks structure for table BLOGCATEGORY
-- ----------------------------
ALTER TABLE "TYXYL"."BLOGCATEGORY" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TYXYL"."BLOGCATEGORY" ADD CHECK ("CATEGORY" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table BLOGCATEGORY
-- ----------------------------
ALTER TABLE "TYXYL"."BLOGCATEGORY" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table GONGGAO
-- ----------------------------

-- ----------------------------
-- Triggers structure for table GONGGAO
-- ----------------------------
CREATE OR REPLACE TRIGGER "TYXYL"."TRG_GONGGAO" BEFORE INSERT ON "TYXYL"."GONGGAO" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
begin
select SEQ_GONGGAO.nextval into :new.ID from dual;
end;
-- ----------------------------
-- Checks structure for table GONGGAO
-- ----------------------------
ALTER TABLE "TYXYL"."GONGGAO" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TYXYL"."GONGGAO" ADD CHECK ("TYPE" IS NOT NULL);
ALTER TABLE "TYXYL"."GONGGAO" ADD CHECK ("CONTENT" IS NOT NULL);
ALTER TABLE "TYXYL"."GONGGAO" ADD CHECK ("DELETED" IS NOT NULL);
ALTER TABLE "TYXYL"."GONGGAO" ADD CHECK ("SN" IS NOT NULL);
ALTER TABLE "TYXYL"."GONGGAO" ADD CHECK ("CREATE_TIME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table GONGGAO
-- ----------------------------
ALTER TABLE "TYXYL"."GONGGAO" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table IPLOG
-- ----------------------------

-- ----------------------------
-- Triggers structure for table IPLOG
-- ----------------------------
CREATE OR REPLACE TRIGGER "TYXYL"."TRG_IPLOG" BEFORE INSERT ON "TYXYL"."IPLOG" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
begin
select SEQ_IPLOG.nextval into :new.ID from dual;
end;
-- ----------------------------
-- Checks structure for table IPLOG
-- ----------------------------
ALTER TABLE "TYXYL"."IPLOG" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TYXYL"."IPLOG" ADD CHECK ("IP" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table IPLOG
-- ----------------------------
ALTER TABLE "TYXYL"."IPLOG" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table LINK
-- ----------------------------

-- ----------------------------
-- Triggers structure for table LINK
-- ----------------------------
CREATE OR REPLACE TRIGGER "TYXYL"."TRG_LINK" BEFORE INSERT ON "TYXYL"."LINK" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
begin
select SEQ_LINK.nextval into :new.ID from dual;
end;
-- ----------------------------
-- Checks structure for table LINK
-- ----------------------------
ALTER TABLE "TYXYL"."LINK" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TYXYL"."LINK" ADD CHECK ("TITLE" IS NOT NULL);
ALTER TABLE "TYXYL"."LINK" ADD CHECK ("URL" IS NOT NULL);
ALTER TABLE "TYXYL"."LINK" ADD CHECK ("SN" IS NOT NULL);
ALTER TABLE "TYXYL"."LINK" ADD CHECK ("CREATE_TIME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table LINK
-- ----------------------------
ALTER TABLE "TYXYL"."LINK" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table PICRECOMMEND
-- ----------------------------

-- ----------------------------
-- Triggers structure for table PICRECOMMEND
-- ----------------------------
CREATE OR REPLACE TRIGGER "TYXYL"."TRG_PICRECOMMEND" BEFORE INSERT ON "TYXYL"."PICRECOMMEND" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
begin
select SEQ_PICRECOMMEND.nextval into :new.ID from dual;
end;
-- ----------------------------
-- Checks structure for table PICRECOMMEND
-- ----------------------------
ALTER TABLE "TYXYL"."PICRECOMMEND" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TYXYL"."PICRECOMMEND" ADD CHECK ("TITLE" IS NOT NULL);
ALTER TABLE "TYXYL"."PICRECOMMEND" ADD CHECK ("IMAGE" IS NOT NULL);
ALTER TABLE "TYXYL"."PICRECOMMEND" ADD CHECK ("DELETED" IS NOT NULL);
ALTER TABLE "TYXYL"."PICRECOMMEND" ADD CHECK ("CREATE_TIME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table PICRECOMMEND
-- ----------------------------
ALTER TABLE "TYXYL"."PICRECOMMEND" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table QQUSER
-- ----------------------------
CREATE BITMAP INDEX "TYXYL"."qquser_userid_foregignkey"
ON "TYXYL"."QQUSER" ("USER_ID" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table QQUSER
-- ----------------------------
ALTER TABLE "TYXYL"."QQUSER" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TYXYL"."QQUSER" ADD CHECK ("OPENID" IS NOT NULL);
ALTER TABLE "TYXYL"."QQUSER" ADD CHECK ("USER_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table QQUSER
-- ----------------------------
ALTER TABLE "TYXYL"."QQUSER" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table RESOURCESLOG
-- ----------------------------

-- ----------------------------
-- Triggers structure for table RESOURCESLOG
-- ----------------------------
CREATE OR REPLACE TRIGGER "TYXYL"."TRG_RESOURCCESLOG" BEFORE INSERT ON "TYXYL"."RESOURCESLOG" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
begin
select SEQ_RESOURCCESLOG.nextval into :new.ID from dual;
end;
-- ----------------------------
-- Checks structure for table RESOURCESLOG
-- ----------------------------
ALTER TABLE "TYXYL"."RESOURCESLOG" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TYXYL"."RESOURCESLOG" ADD CHECK ("CREATE_TIME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table RESOURCESLOG
-- ----------------------------
ALTER TABLE "TYXYL"."RESOURCESLOG" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table ROLE
-- ----------------------------

-- ----------------------------
-- Checks structure for table ROLE
-- ----------------------------
ALTER TABLE "TYXYL"."ROLE" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TYXYL"."ROLE" ADD CHECK ("ROLE_NAME" IS NOT NULL);
ALTER TABLE "TYXYL"."ROLE" ADD CHECK ("CREATE_TIME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table ROLE
-- ----------------------------
ALTER TABLE "TYXYL"."ROLE" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table TEST
-- ----------------------------

-- ----------------------------
-- Checks structure for table TEST
-- ----------------------------
ALTER TABLE "TYXYL"."TEST" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table TEST
-- ----------------------------
ALTER TABLE "TYXYL"."TEST" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table TEST_BLOG
-- ----------------------------

-- ----------------------------
-- Checks structure for table TEST_BLOG
-- ----------------------------
ALTER TABLE "TYXYL"."TEST_BLOG" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TYXYL"."TEST_BLOG" ADD CHECK ("TITLE" IS NOT NULL);
ALTER TABLE "TYXYL"."TEST_BLOG" ADD CHECK ("CONTENT" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table TEST_BLOG
-- ----------------------------
ALTER TABLE "TYXYL"."TEST_BLOG" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table USERLOGININFO
-- ----------------------------

-- ----------------------------
-- Triggers structure for table USERLOGININFO
-- ----------------------------
CREATE OR REPLACE TRIGGER "TYXYL"."TRG_USERLOGININFO" BEFORE INSERT ON "TYXYL"."USERLOGININFO" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
begin
select SEQ_USERLOGININFO.nextval into :new.ID from dual;
end;
-- ----------------------------
-- Checks structure for table USERLOGININFO
-- ----------------------------
ALTER TABLE "TYXYL"."USERLOGININFO" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table USERLOGININFO
-- ----------------------------
ALTER TABLE "TYXYL"."USERLOGININFO" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table USERROLE
-- ----------------------------

-- ----------------------------
-- Checks structure for table USERROLE
-- ----------------------------
ALTER TABLE "TYXYL"."USERROLE" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TYXYL"."USERROLE" ADD CHECK ("USER_ID" IS NOT NULL);
ALTER TABLE "TYXYL"."USERROLE" ADD CHECK ("ROLE_ID" IS NOT NULL);
ALTER TABLE "TYXYL"."USERROLE" ADD CHECK ("CREATE_TIME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table USERROLE
-- ----------------------------
ALTER TABLE "TYXYL"."USERROLE" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table USERS
-- ----------------------------
CREATE UNIQUE INDEX "TYXYL"."user_username_uniquekey"
ON "TYXYL"."USERS" ("USERNAME" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Triggers structure for table USERS
-- ----------------------------
CREATE OR REPLACE TRIGGER "TYXYL"."TRG_USER" BEFORE INSERT ON "TYXYL"."USERS" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
begin
select SEQ_USER.nextval into :new.ID from dual;
end;
-- ----------------------------
-- Checks structure for table USERS
-- ----------------------------
ALTER TABLE "TYXYL"."USERS" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TYXYL"."USERS" ADD CHECK ("USERNAME" IS NOT NULL);
ALTER TABLE "TYXYL"."USERS" ADD CHECK ("UUID" IS NOT NULL);
ALTER TABLE "TYXYL"."USERS" ADD CHECK ("CREATE_TIME" IS NOT NULL);
ALTER TABLE "TYXYL"."USERS" ADD CHECK ("DELETED" IS NOT NULL);
ALTER TABLE "TYXYL"."USERS" ADD CHECK ("TYPE" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table USERS
-- ----------------------------
ALTER TABLE "TYXYL"."USERS" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table VIDEO
-- ----------------------------

-- ----------------------------
-- Triggers structure for table VIDEO
-- ----------------------------
CREATE OR REPLACE TRIGGER "TYXYL"."TRG_VIDEO" BEFORE INSERT ON "TYXYL"."VIDEO" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
begin
select SEQ_VIDEO.nextval into :new.ID from dual;
end;
-- ----------------------------
-- Checks structure for table VIDEO
-- ----------------------------
ALTER TABLE "TYXYL"."VIDEO" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TYXYL"."VIDEO" ADD CHECK ("USER_ID" IS NOT NULL);
ALTER TABLE "TYXYL"."VIDEO" ADD CHECK ("TITLE" IS NOT NULL);
ALTER TABLE "TYXYL"."VIDEO" ADD CHECK ("PRE" IS NOT NULL);
ALTER TABLE "TYXYL"."VIDEO" ADD CHECK ("BLEVEL" IS NOT NULL);
ALTER TABLE "TYXYL"."VIDEO" ADD CHECK ("BVIEW" IS NOT NULL);
ALTER TABLE "TYXYL"."VIDEO" ADD CHECK ("BTYPE" IS NOT NULL);
ALTER TABLE "TYXYL"."VIDEO" ADD CHECK ("CREATE_TIME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table VIDEO
-- ----------------------------
ALTER TABLE "TYXYL"."VIDEO" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table XYL_USER
-- ----------------------------

-- ----------------------------
-- Triggers structure for table XYL_USER
-- ----------------------------
CREATE OR REPLACE TRIGGER "TYXYL"."TRG_XYL_USER" BEFORE INSERT ON "TYXYL"."XYL_USER" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
begin
select SEQ_XYL_USER.nextval into :new.ID from dual;
end;
-- ----------------------------
-- Checks structure for table XYL_USER
-- ----------------------------
ALTER TABLE "TYXYL"."XYL_USER" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table XYL_USER
-- ----------------------------
ALTER TABLE "TYXYL"."XYL_USER" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Foreign Key structure for table "TYXYL"."BLOG"
-- ----------------------------
ALTER TABLE "TYXYL"."BLOG" ADD FOREIGN KEY ("CATEGORY") REFERENCES "TYXYL"."BLOGCATEGORY" ("ID") ON DELETE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "TYXYL"."USERROLE"
-- ----------------------------
ALTER TABLE "TYXYL"."USERROLE" ADD FOREIGN KEY ("ROLE_ID") REFERENCES "TYXYL"."ROLE" ("ID") ON DELETE CASCADE;
ALTER TABLE "TYXYL"."USERROLE" ADD FOREIGN KEY ("USER_ID") REFERENCES "TYXYL"."USERS" ("ID") ON DELETE CASCADE;
