SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_datasource_conf
-- ----------------------------
DROP TABLE IF EXISTS `gen_datasource_conf`;
CREATE TABLE `gen_datasource_conf`
(
    `id`          bigint                                                        NOT NULL COMMENT 'ID',
    `name`        varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '数据源名称',
    `url`         varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JDBC连接地址',
    `username`    varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '用户名',
    `password`    varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '密码',
    `create_time` datetime                                                      NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` datetime                                                      NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `del_flag`    char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT '0' COMMENT '逻辑删除(0-正常, 1-已删除)',
    `ds_type`     varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '数据库类型',
    `conf_type`   char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT NULL COMMENT '配置类型(0-主机, 1-JDBC)',
    `ds_name`     varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '数据库名',
    `instance`    varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '实例名',
    `port`        int                                                           NULL DEFAULT NULL COMMENT '端口',
    `host`        varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主机地址',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '数据源配置表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_datasource_conf
-- ----------------------------

-- ----------------------------
-- Table structure for gen_field_type
-- ----------------------------
DROP TABLE IF EXISTS `gen_field_type`;
CREATE TABLE `gen_field_type`
(
    `id`           bigint                                                        NOT NULL COMMENT 'ID',
    `column_type`  varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段类型',
    `attr_type`    varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性类型',
    `package_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性包名',
    `create_time`  datetime                                                      NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `create_by`    varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '创建人',
    `update_time`  datetime                                                      NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `update_by`    varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '更新人',
    `del_flag`     char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT '0' COMMENT '逻辑删除标记(0-正常, 1-已删除)',
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `column_type` (`column_type` ASC) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 1634915190321451010
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '代码生成字段类型表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_field_type
-- ----------------------------
INSERT INTO `gen_field_type`
VALUES (1, 'datetime', 'LocalDateTime', 'java.time.LocalDateTime', '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (2, 'date', 'LocalDate', 'java.time.LocalDate', '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (3, 'tinyint', 'Integer', NULL, '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (4, 'smallint', 'Integer', NULL, '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (5, 'mediumint', 'Integer', NULL, '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (6, 'int', 'Integer', NULL, '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (7, 'integer', 'Integer', NULL, '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (8, 'bigint', 'Long', NULL, '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (9, 'float', 'Float', NULL, '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (10, 'double', 'Double', NULL, '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (11, 'decimal', 'BigDecimal', 'java.math.BigDecimal', '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (12, 'bit', 'Boolean', NULL, '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (13, 'char', 'String', NULL, '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (14, 'varchar', 'String', NULL, '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (15, 'tinytext', 'String', NULL, '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (16, 'text', 'String', NULL, '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (17, 'mediumtext', 'String', NULL, '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (18, 'longtext', 'String', NULL, '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (19, 'timestamp', 'LocalDateTime', 'java.time.LocalDateTime', '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (20, 'NUMBER', 'Integer', NULL, '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (21, 'BINARY_INTEGER', 'Integer', NULL, '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (22, 'BINARY_FLOAT', 'Float', NULL, '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (23, 'BINARY_DOUBLE', 'Double', NULL, '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (24, 'VARCHAR2', 'String', NULL, '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (25, 'NVARCHAR', 'String', NULL, '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (26, 'NVARCHAR2', 'String', NULL, '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (27, 'CLOB', 'String', NULL, '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (28, 'int8', 'Long', NULL, '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (29, 'int4', 'Integer', NULL, '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (30, 'int2', 'Integer', NULL, '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (31, 'numeric', 'BigDecimal', 'java.math.BigDecimal', '2026-03-04 20:56:30', NULL, NULL, NULL, '0');
INSERT INTO `gen_field_type`
VALUES (32, 'json', 'String', NULL, '2026-03-04 20:56:30', NULL, NULL, NULL, '0');

-- ----------------------------
-- Table structure for gen_group
-- ----------------------------
DROP TABLE IF EXISTS `gen_group`;
CREATE TABLE `gen_group`
(
    `id`          bigint                                                        NOT NULL,
    `group_name`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分组名称',
    `group_desc`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分组描述',
    `create_by`   varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '创建人',
    `update_by`   varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '更新人',
    `create_time` datetime                                                      NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` datetime                                                      NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `del_flag`    char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT '0' COMMENT '逻辑删除标记(0-正常, 1-已删除)',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '代码生成分组表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_group
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`
(
    `id`               bigint                                                        NOT NULL COMMENT 'ID',
    `table_name`       varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表名',
    `class_name`       varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类名',
    `db_type`          varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据库类型',
    `table_comment`    varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表说明',
    `author`           varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作者',
    `email`            varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
    `package_name`     varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '包名',
    `version`          varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '版本号',
    `i18n`             char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT '0' COMMENT '生成i18n(0-否, 1-是)',
    `style`            bigint                                                        NULL DEFAULT NULL COMMENT '代码风格',
    `child_table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '子表名',
    `main_field`       varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主表关联键',
    `child_field`      varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '子表关联键',
    `generator_type`   char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT '0' COMMENT '生成方式(0-zip, 1-目录)',
    `backend_path`     varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '后端路径',
    `frontend_path`    varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '前端路径',
    `module_name`      varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模块名',
    `function_name`    varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '功能名',
    `form_layout`      tinyint                                                       NULL DEFAULT NULL COMMENT '表单布局(1-一列, 2-两列)',
    `ds_name`          varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据源',
    `baseclass_id`     bigint                                                        NULL DEFAULT NULL COMMENT '基类ID',
    `create_time`      datetime                                                      NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `table_name` (`table_name` ASC, `ds_name` ASC) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '代码生成主表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`
(
    `id`              bigint                                                        NOT NULL COMMENT 'ID',
    `ds_name`         varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据源',
    `table_name`      varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表名',
    `field_name`      varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段名',
    `field_type`      varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段类型',
    `field_comment`   varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段说明',
    `attr_name`       varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性名',
    `attr_type`       varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性类型',
    `package_name`    varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性包名',
    `sort`            int                                                           NULL DEFAULT NULL COMMENT '排序',
    `auto_fill`       varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '自动填充(DEFAULT,INSERT,UPDATE,INSERT_UPDATE)',
    `primary_pk`      char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT '0' COMMENT '主键(0-否, 1-是)',
    `base_field`      char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT '0' COMMENT '基类字段(0-否, 1-是)',
    `form_item`       char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT '0' COMMENT '表单项(0-否, 1-是)',
    `form_required`   char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT '0' COMMENT '表单必填(0-否, 1-是)',
    `form_type`       varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表单控件',
    `form_validator`  varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表单校验',
    `grid_item`       char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT '0' COMMENT '列表项(0-否, 1-是)',
    `grid_sort`       char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT '0' COMMENT '列表排序(0-否, 1-是)',
    `query_item`      char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT '0' COMMENT '查询项(0-否, 1-是)',
    `query_type`      varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '查询方式(==, LIKE等)',
    `query_form_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '查询表单控件',
    `field_dict`      varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典类型',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '代码生成列信息表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------

-- ----------------------------
-- Table structure for gen_template
-- ----------------------------
DROP TABLE IF EXISTS `gen_template`;
CREATE TABLE `gen_template`
(
    `id`             bigint                                                        NOT NULL COMMENT 'ID',
    `template_name`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '模板名称',
    `generator_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '模板路径',
    `template_desc`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '模板描述',
    `template_code`  text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci         NOT NULL COMMENT '模板代码',
    `create_time`    datetime                                                      NULL     DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time`    datetime                                                      NULL     DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `del_flag`       char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NOT NULL DEFAULT '0' COMMENT '逻辑删除标记(0-正常, 1-已删除)',
    `create_by`      varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL     DEFAULT NULL COMMENT '创建人',
    `update_by`      varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL     DEFAULT NULL COMMENT '更新人',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '代码生成模板表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_template
-- ----------------------------

-- ----------------------------
-- Table structure for gen_template_group
-- ----------------------------
DROP TABLE IF EXISTS `gen_template_group`;
CREATE TABLE `gen_template_group`
(
    `group_id`    bigint NOT NULL COMMENT '分组id',
    `template_id` bigint NOT NULL COMMENT '模板id',
    PRIMARY KEY (`group_id`, `template_id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '代码生成模板分组关联表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_template_group
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`
(
    `SCHED_NAME`    varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度器名称',
    `TRIGGER_NAME`  varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器名称',
    `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器组名',
    `BLOB_DATA`     blob                                                          NULL COMMENT 'BLOB类型的触发器自定义数据',
    PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
    CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = 'Quartz BLOB类型触发器表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`
(
    `SCHED_NAME`    varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度器名称',
    `CALENDAR_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '日历名称',
    `CALENDAR`      blob                                                          NOT NULL COMMENT '日历信息',
    PRIMARY KEY (`SCHED_NAME`, `CALENDAR_NAME`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = 'Quartz 日历信息表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`
(
    `SCHED_NAME`      varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度器名称',
    `TRIGGER_NAME`    varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器名称',
    `TRIGGER_GROUP`   varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器组名',
    `CRON_EXPRESSION` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Cron表达式',
    `TIME_ZONE_ID`    varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '时区ID',
    PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
    CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = 'Quartz Cron类型触发器表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`
(
    `SCHED_NAME`        varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度器名称',
    `ENTRY_ID`          varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL COMMENT 'ID',
    `TRIGGER_NAME`      varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器名称',
    `TRIGGER_GROUP`     varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器组名',
    `INSTANCE_NAME`     varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度器实例名称',
    `FIRED_TIME`        bigint                                                        NOT NULL COMMENT '触发时间',
    `SCHED_TIME`        bigint                                                        NOT NULL COMMENT '调度时间',
    `PRIORITY`          int                                                           NOT NULL COMMENT '优先级',
    `STATE`             varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL COMMENT '触发状态',
    `JOB_NAME`          varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务名称',
    `JOB_GROUP`         varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务组名',
    `IS_NONCONCURRENT`  varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci   NULL DEFAULT NULL COMMENT '是否是非并发执行',
    `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci   NULL DEFAULT NULL COMMENT '是否请求恢复执行',
    PRIMARY KEY (`SCHED_NAME`, `ENTRY_ID`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = 'Quartz 已触发的触发器表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`
(
    `SCHED_NAME`        varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度器名称',
    `JOB_NAME`          varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
    `JOB_GROUP`         varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
    `DESCRIPTION`       varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务描述',
    `JOB_CLASS_NAME`    varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务类全限定名',
    `IS_DURABLE`        varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci   NOT NULL COMMENT '是否持久化',
    `IS_NONCONCURRENT`  varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci   NOT NULL COMMENT '是否是非并发执行',
    `IS_UPDATE_DATA`    varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci   NOT NULL COMMENT '是否更新数据',
    `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci   NOT NULL COMMENT '是否请求恢复执行',
    `JOB_DATA`          blob                                                          NULL COMMENT '任务数据',
    PRIMARY KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = 'Quartz 任务详情表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`
(
    `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度器名称',
    `LOCK_NAME`  varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL COMMENT '锁名称',
    PRIMARY KEY (`SCHED_NAME`, `LOCK_NAME`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = 'Quartz 锁机制表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`
(
    `SCHED_NAME`    varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度器名称',
    `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '暂停的触发器组名',
    PRIMARY KEY (`SCHED_NAME`, `TRIGGER_GROUP`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = 'Quartz 暂停触发器组表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`
(
    `SCHED_NAME`        varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度器名称',
    `INSTANCE_NAME`     varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '实例名称',
    `LAST_CHECKIN_TIME` bigint                                                        NOT NULL COMMENT '最后心跳时间',
    `CHECKIN_INTERVAL`  bigint                                                        NOT NULL COMMENT '心跳检查间隔',
    PRIMARY KEY (`SCHED_NAME`, `INSTANCE_NAME`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = 'Quartz 调度器状态表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`
(
    `SCHED_NAME`      varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度器名称',
    `TRIGGER_NAME`    varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器名称',
    `TRIGGER_GROUP`   varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器组名',
    `REPEAT_COUNT`    bigint                                                        NOT NULL COMMENT '重复次数',
    `REPEAT_INTERVAL` bigint                                                        NOT NULL COMMENT '重复间隔',
    `TIMES_TRIGGERED` bigint                                                        NOT NULL COMMENT '已触发次数',
    PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
    CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = 'Quartz 简单类型触发器表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`
(
    `SCHED_NAME`    varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度器名称',
    `TRIGGER_NAME`  varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器名称',
    `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器组名',
    `STR_PROP_1`    varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字符串属性1',
    `STR_PROP_2`    varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字符串属性2',
    `STR_PROP_3`    varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字符串属性3',
    `INT_PROP_1`    int                                                           NULL DEFAULT NULL COMMENT '整型属性1',
    `INT_PROP_2`    int                                                           NULL DEFAULT NULL COMMENT '整型属性2',
    `LONG_PROP_1`   bigint                                                        NULL DEFAULT NULL COMMENT '长整型属性1',
    `LONG_PROP_2`   bigint                                                        NULL DEFAULT NULL COMMENT '长整型属性2',
    `DEC_PROP_1`    decimal(13, 4)                                                NULL DEFAULT NULL COMMENT '十进制属性1',
    `DEC_PROP_2`    decimal(13, 4)                                                NULL DEFAULT NULL COMMENT '十进制属性2',
    `BOOL_PROP_1`   varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci   NULL DEFAULT NULL COMMENT '布尔属性1',
    `BOOL_PROP_2`   varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci   NULL DEFAULT NULL COMMENT '布尔属性2',
    PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
    CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = 'Quartz 属性类型触发器表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`
(
    `SCHED_NAME`     varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度器名称',
    `TRIGGER_NAME`   varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器名称',
    `TRIGGER_GROUP`  varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器组名',
    `JOB_NAME`       varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
    `JOB_GROUP`      varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
    `DESCRIPTION`    varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '触发器描述',
    `NEXT_FIRE_TIME` bigint                                                        NULL DEFAULT NULL COMMENT '下次触发时间',
    `PREV_FIRE_TIME` bigint                                                        NULL DEFAULT NULL COMMENT '上次触发时间',
    `PRIORITY`       int                                                           NULL DEFAULT NULL COMMENT '优先级',
    `TRIGGER_STATE`  varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL COMMENT '触发器状态',
    `TRIGGER_TYPE`   varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci   NOT NULL COMMENT '触发器类型',
    `START_TIME`     bigint                                                        NOT NULL COMMENT '开始时间',
    `END_TIME`       bigint                                                        NULL DEFAULT NULL COMMENT '结束时间',
    `CALENDAR_NAME`  varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日历名称',
    `MISFIRE_INSTR`  smallint                                                      NULL DEFAULT NULL COMMENT '错失触发策略',
    `JOB_DATA`       blob                                                          NULL COMMENT '任务数据',
    PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
    INDEX `SCHED_NAME` (`SCHED_NAME` ASC, `JOB_NAME` ASC, `JOB_GROUP` ASC) USING BTREE,
    CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = 'Quartz 触发器通用信息表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`
(
    `dept_id`     bigint                                                       NOT NULL COMMENT 'ID',
    `name`        varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL     DEFAULT NULL COMMENT '部门名称',
    `sort_order`  int                                                          NOT NULL DEFAULT 0 COMMENT '排序',
    `create_by`   varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL     DEFAULT NULL COMMENT '创建人',
    `update_by`   varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL     DEFAULT NULL COMMENT '更新人',
    `create_time` datetime                                                     NULL     DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` datetime                                                     NULL     DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `del_flag`    char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci     NULL     DEFAULT '0' COMMENT '逻辑删除标记(0-正常, 1-已删除)',
    `parent_id`   bigint                                                       NULL     DEFAULT NULL COMMENT '父级部门ID',
    PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '系统部门表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept`
VALUES (1, '总裁办', 1, 'admin', 'admin', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '0', 0);
INSERT INTO `sys_dept`
VALUES (2, '技术部', 2, 'admin', 'admin', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '0', 1);
INSERT INTO `sys_dept`
VALUES (3, '市场部', 3, 'admin', 'admin', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '0', 1);
INSERT INTO `sys_dept`
VALUES (4, '销售部', 4, 'admin', 'admin', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '0', 1);
INSERT INTO `sys_dept`
VALUES (5, '财务部', 5, 'admin', 'admin', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '0', 1);
INSERT INTO `sys_dept`
VALUES (6, '人事行政部', 6, 'admin', 'admin', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '1', 1);
INSERT INTO `sys_dept`
VALUES (7, '研发部', 7, 'admin', 'admin', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '0', 2);
INSERT INTO `sys_dept`
VALUES (8, 'UI设计部', 11, 'admin', 'admin', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '0', 7);
INSERT INTO `sys_dept`
VALUES (9, '产品部', 12, 'admin', 'admin', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '0', 2);
INSERT INTO `sys_dept`
VALUES (10, '渠道部', 13, 'admin', 'admin', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '0', 3);
INSERT INTO `sys_dept`
VALUES (11, '推广部', 14, 'admin', 'admin', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '0', 3);
INSERT INTO `sys_dept`
VALUES (12, '客服部', 15, 'admin', 'admin', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '0', 4);
INSERT INTO `sys_dept`
VALUES (13, '财务会计部', 16, 'admin', 'admin', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '0', 5);
INSERT INTO `sys_dept`
VALUES (14, '审计风控部', 17, 'admin', 'admin', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '0', 5);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`
(
    `id`          bigint                                                        NOT NULL COMMENT 'ID',
    `dict_type`   varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典类型',
    `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
    `create_by`   varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '创建人',
    `update_by`   varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '更新人',
    `create_time` datetime                                                      NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` datetime                                                      NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `remarks`     varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
    `system_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT '0' COMMENT '系统内置(0-否, 1-是)',
    `del_flag`    char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT '0' COMMENT '逻辑删除(0-正常, 1-已删除)',
    PRIMARY KEY (`id`) USING BTREE,
    INDEX `sys_dict_del_flag` (`del_flag` ASC) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '系统字典主表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict`
VALUES (1, 'log_type', '日志类型', ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '异常、正常', '1', '0');
INSERT INTO `sys_dict`
VALUES (2, 'social_type', '社交登录', ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '微信、QQ', '1', '0');
INSERT INTO `sys_dict`
VALUES (3, 'job_type', '定时任务类型', ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', 'quartz', '1', '0');
INSERT INTO `sys_dict`
VALUES (4, 'job_status', '定时任务状态', ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '发布状态、运行状态',
        '1', '0');
INSERT INTO `sys_dict`
VALUES (5, 'job_execute_status', '定时任务执行状态', ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30',
        '正常、异常', '1', '0');
INSERT INTO `sys_dict`
VALUES (6, 'misfire_policy', '定时任务错失执行策略', ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '周期',
        '1', '0');
INSERT INTO `sys_dict`
VALUES (7, 'gender', '性别', ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '微信用户性别', '1', '0');
INSERT INTO `sys_dict`
VALUES (8, 'subscribe', '订阅状态', ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '公众号订阅状态', '1', '0');
INSERT INTO `sys_dict`
VALUES (9, 'response_type', '回复', ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '微信消息是否已回复', '1',
        '0');
INSERT INTO `sys_dict`
VALUES (10, 'param_type', '参数配置', ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30',
        '检索、原文、报表、安全、文档、消息、其他', '1', '0');
INSERT INTO `sys_dict`
VALUES (11, 'status_type', '租户状态', ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '租户状态', '1', '0');
INSERT INTO `sys_dict`
VALUES (12, 'dict_type', '字典类型', ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '系统类不能修改', '1',
        '0');
INSERT INTO `sys_dict`
VALUES (13, 'channel_type', '支付类型', ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '系统类不能修改', '1',
        '0');
INSERT INTO `sys_dict`
VALUES (14, 'grant_types', '授权类型', ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', NULL, '1', '0');
INSERT INTO `sys_dict`
VALUES (15, 'style_type', '前端风格', ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '0-Avue 1-element', '1',
        '0');
INSERT INTO `sys_dict`
VALUES (16, 'captcha_flag_types', '验证码开关', ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30',
        '是否校验验证码', '1', '0');
INSERT INTO `sys_dict`
VALUES (17, 'enc_flag_types', '前端密码加密', ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30',
        '前端密码是否加密传输', '1', '0');
INSERT INTO `sys_dict`
VALUES (18, 'lock_flag', '用户状态', 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '1', '0');
INSERT INTO `sys_dict`
VALUES (19, 'ds_config_type', '数据连接类型', 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '1', '0');
INSERT INTO `sys_dict`
VALUES (20, 'common_status', '通用状态', 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '1', '0');
INSERT INTO `sys_dict`
VALUES (21, 'app_social_type', 'app社交登录', 'admin', ' ', '2026-03-04 20:56:30', NULL, 'app社交登录', '1', '0');
INSERT INTO `sys_dict`
VALUES (22, 'yes_no_type', '是否', 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '1', '0');
INSERT INTO `sys_dict`
VALUES (23, 'repType', '微信消息类型', 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '0', '0');
INSERT INTO `sys_dict`
VALUES (24, 'leave_status', '请假状态', 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '0', '0');
INSERT INTO `sys_dict`
VALUES (25, 'schedule_type', '日程类型', 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '0', '0');
INSERT INTO `sys_dict`
VALUES (26, 'schedule_status', '日程状态', 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '0', '0');
INSERT INTO `sys_dict`
VALUES (27, 'ds_type', '代码生成器支持的数据库类型', 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '1', '0');

-- ----------------------------
-- Table structure for sys_dict_item
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_item`;
CREATE TABLE `sys_dict_item`
(
    `id`          bigint                                                        NOT NULL COMMENT 'ID',
    `dict_id`     bigint                                                        NOT NULL COMMENT '字典ID',
    `item_value`  varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL     DEFAULT NULL COMMENT '字典项值',
    `label`       varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL     DEFAULT NULL COMMENT '标签',
    `dict_type`   varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL     DEFAULT NULL COMMENT '字典类型',
    `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL     DEFAULT NULL COMMENT '描述',
    `sort_order`  int                                                           NOT NULL DEFAULT 0 COMMENT '排序',
    `create_by`   varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL     DEFAULT NULL COMMENT '创建人',
    `update_by`   varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL     DEFAULT NULL COMMENT '更新人',
    `create_time` datetime                                                      NULL     DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` datetime                                                      NULL     DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `remarks`     varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL     DEFAULT NULL COMMENT '备注',
    `del_flag`    char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL     DEFAULT '0' COMMENT '逻辑删除(0-正常, 1-已删除)',
    PRIMARY KEY (`id`) USING BTREE,
    INDEX `sys_dict_value` (`item_value` ASC) USING BTREE,
    INDEX `sys_dict_label` (`label` ASC) USING BTREE,
    INDEX `sys_dict_item_del_flag` (`del_flag` ASC) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '系统字典明细表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_item
-- ----------------------------
INSERT INTO `sys_dict_item`
VALUES (1, 1, '9', '异常', 'log_type', '日志异常', 1, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '', '0');
INSERT INTO `sys_dict_item`
VALUES (2, 1, '0', '正常', 'log_type', '日志正常', 0, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '', '0');
INSERT INTO `sys_dict_item`
VALUES (3, 2, 'WX', '微信', 'social_type', '微信登录', 0, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '',
        '0');
INSERT INTO `sys_dict_item`
VALUES (4, 2, 'QQ', 'QQ', 'social_type', 'QQ登录', 1, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '', '0');
INSERT INTO `sys_dict_item`
VALUES (5, 3, '1', 'java类', 'job_type', 'java类', 1, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '', '0');
INSERT INTO `sys_dict_item`
VALUES (6, 3, '2', 'spring bean', 'job_type', 'spring bean容器实例', 2, ' ', ' ', '2026-03-04 20:56:30',
        '2026-03-04 20:56:30', '', '0');
INSERT INTO `sys_dict_item`
VALUES (7, 3, '9', '其他', 'job_type', '其他类型', 9, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '', '0');
INSERT INTO `sys_dict_item`
VALUES (8, 3, '3', 'Rest 调用', 'job_type', 'Rest 调用', 3, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '',
        '0');
INSERT INTO `sys_dict_item`
VALUES (9, 3, '4', 'jar', 'job_type', 'jar类型', 4, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '', '0');
INSERT INTO `sys_dict_item`
VALUES (10, 4, '1', '未发布', 'job_status', '未发布', 1, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '',
        '0');
INSERT INTO `sys_dict_item`
VALUES (11, 4, '2', '运行中', 'job_status', '运行中', 2, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '',
        '0');
INSERT INTO `sys_dict_item`
VALUES (12, 4, '3', '暂停', 'job_status', '暂停', 3, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '', '0');
INSERT INTO `sys_dict_item`
VALUES (13, 5, '0', '正常', 'job_execute_status', '正常', 0, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '',
        '0');
INSERT INTO `sys_dict_item`
VALUES (14, 5, '1', '异常', 'job_execute_status', '异常', 1, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '',
        '0');
INSERT INTO `sys_dict_item`
VALUES (15, 6, '1', '错失周期立即执行', 'misfire_policy', '错失周期立即执行', 1, ' ', ' ', '2026-03-04 20:56:30',
        '2026-03-04 20:56:30', '', '0');
INSERT INTO `sys_dict_item`
VALUES (16, 6, '2', '错失周期执行一次', 'misfire_policy', '错失周期执行一次', 2, ' ', ' ', '2026-03-04 20:56:30',
        '2026-03-04 20:56:30', '', '0');
INSERT INTO `sys_dict_item`
VALUES (17, 6, '3', '下周期执行', 'misfire_policy', '下周期执行', 3, ' ', ' ', '2026-03-04 20:56:30',
        '2026-03-04 20:56:30', '', '0');
INSERT INTO `sys_dict_item`
VALUES (18, 7, '1', '男', 'gender', '微信-男', 0, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '微信-男',
        '0');
INSERT INTO `sys_dict_item`
VALUES (19, 7, '2', '女', 'gender', '女-微信', 1, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '女-微信',
        '0');
INSERT INTO `sys_dict_item`
VALUES (20, 7, '0', '未知', 'gender', 'x性别未知', 3, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30',
        'x性别未知', '0');
INSERT INTO `sys_dict_item`
VALUES (21, 8, '0', '未关注', 'subscribe', '公众号-未关注', 0, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30',
        '公众号-未关注', '0');
INSERT INTO `sys_dict_item`
VALUES (22, 8, '1', '已关注', 'subscribe', '公众号-已关注', 1, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30',
        '公众号-已关注', '0');
INSERT INTO `sys_dict_item`
VALUES (23, 9, '0', '未回复', 'response_type', '微信消息-未回复', 0, ' ', ' ', '2026-03-04 20:56:30',
        '2026-03-04 20:56:30', '微信消息-未回复', '0');
INSERT INTO `sys_dict_item`
VALUES (24, 9, '1', '已回复', 'response_type', '微信消息-已回复', 1, ' ', ' ', '2026-03-04 20:56:30',
        '2026-03-04 20:56:30', '微信消息-已回复', '0');
INSERT INTO `sys_dict_item`
VALUES (25, 10, '1', '检索', 'param_type', '检索', 0, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '检索',
        '0');
INSERT INTO `sys_dict_item`
VALUES (26, 10, '2', '原文', 'param_type', '原文', 0, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '原文',
        '0');
INSERT INTO `sys_dict_item`
VALUES (27, 10, '3', '报表', 'param_type', '报表', 0, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '报表',
        '0');
INSERT INTO `sys_dict_item`
VALUES (28, 10, '4', '安全', 'param_type', '安全', 0, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '安全',
        '0');
INSERT INTO `sys_dict_item`
VALUES (29, 10, '5', '文档', 'param_type', '文档', 0, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '文档',
        '0');
INSERT INTO `sys_dict_item`
VALUES (30, 10, '6', '消息', 'param_type', '消息', 0, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '消息',
        '0');
INSERT INTO `sys_dict_item`
VALUES (31, 10, '9', '其他', 'param_type', '其他', 0, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '其他',
        '0');
INSERT INTO `sys_dict_item`
VALUES (32, 10, '0', '默认', 'param_type', '默认', 0, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '默认',
        '0');
INSERT INTO `sys_dict_item`
VALUES (33, 11, '0', '正常', 'status_type', '状态正常', 0, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30',
        '状态正常', '0');
INSERT INTO `sys_dict_item`
VALUES (34, 11, '9', '冻结', 'status_type', '状态冻结', 1, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30',
        '状态冻结', '0');
INSERT INTO `sys_dict_item`
VALUES (35, 12, '1', '系统类', 'dict_type', '系统类字典', 0, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30',
        '不能修改删除', '0');
INSERT INTO `sys_dict_item`
VALUES (36, 12, '0', '业务类', 'dict_type', '业务类字典', 0, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30',
        '可以修改', '0');
INSERT INTO `sys_dict_item`
VALUES (37, 2, 'GITEE', '码云', 'social_type', '码云', 2, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30',
        '码云', '0');
INSERT INTO `sys_dict_item`
VALUES (38, 2, 'OSC', '开源中国', 'social_type', '开源中国登录', 2, ' ', ' ', '2026-03-04 20:56:30',
        '2026-03-04 20:56:30', '', '0');
INSERT INTO `sys_dict_item`
VALUES (39, 14, 'password', '密码模式', 'grant_types', '支持oauth密码模式', 0, ' ', ' ', '2026-03-04 20:56:30',
        '2026-03-04 20:56:30', NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (40, 14, 'authorization_code', '授权码模式', 'grant_types', 'oauth2 授权码模式', 1, ' ', ' ',
        '2026-03-04 20:56:30', '2026-03-04 20:56:30', NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (41, 14, 'client_credentials', '客户端模式', 'grant_types', 'oauth2 客户端模式', 2, ' ', ' ',
        '2026-03-04 20:56:30', '2026-03-04 20:56:30', NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (42, 14, 'refresh_token', '刷新模式', 'grant_types', 'oauth2 刷新token', 3, ' ', ' ', '2026-03-04 20:56:30',
        '2026-03-04 20:56:30', NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (43, 14, 'implicit', '简化模式', 'grant_types', 'oauth2 简化模式', 4, ' ', ' ', '2026-03-04 20:56:30',
        '2026-03-04 20:56:30', NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (44, 15, '0', 'Avue', 'style_type', 'Avue风格', 0, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '',
        '0');
INSERT INTO `sys_dict_item`
VALUES (45, 15, '1', 'element', 'style_type', 'element-ui', 1, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30',
        '', '0');
INSERT INTO `sys_dict_item`
VALUES (46, 16, '0', '关', 'captcha_flag_types', '不校验验证码', 0, ' ', ' ', '2026-03-04 20:56:30',
        '2026-03-04 20:56:30', '不校验验证码 -0', '0');
INSERT INTO `sys_dict_item`
VALUES (47, 16, '1', '开', 'captcha_flag_types', '校验验证码', 1, ' ', ' ', '2026-03-04 20:56:30',
        '2026-03-04 20:56:30', '不校验验证码-1', '0');
INSERT INTO `sys_dict_item`
VALUES (48, 17, '0', '否', 'enc_flag_types', '不加密', 0, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30',
        '不加密-0', '0');
INSERT INTO `sys_dict_item`
VALUES (49, 17, '1', '是', 'enc_flag_types', '加密', 1, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30',
        '加密-1', '0');
INSERT INTO `sys_dict_item`
VALUES (50, 13, 'MERGE_PAY', '聚合支付', 'channel_type', '聚合支付', 1, ' ', ' ', '2026-03-04 20:56:30',
        '2026-03-04 20:56:30', '聚合支付', '0');
INSERT INTO `sys_dict_item`
VALUES (51, 2, 'CAS', 'CAS登录', 'social_type', 'CAS 单点登录系统', 3, ' ', ' ', '2026-03-04 20:56:30',
        '2026-03-04 20:56:30', NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (52, 2, 'DINGTALK', '钉钉', 'social_type', '钉钉', 3, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30',
        NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (53, 2, 'WEIXIN_CP', '企业微信', 'social_type', '企业微信', 3, ' ', ' ', '2026-03-04 20:56:30',
        '2026-03-04 20:56:30', NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (54, 15, '2', 'APP', 'style_type', 'uview风格', 1, ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '',
        '0');
INSERT INTO `sys_dict_item`
VALUES (55, 13, 'ALIPAY_WAP', '支付宝支付', 'channel_type', '支付宝支付', 1, ' ', ' ', '2026-03-04 20:56:30',
        '2026-03-04 20:56:30', '聚合支付', '0');
INSERT INTO `sys_dict_item`
VALUES (56, 13, 'WEIXIN_MP', '微信支付', 'channel_type', '微信支付', 1, ' ', ' ', '2026-03-04 20:56:30',
        '2026-03-04 20:56:30', '聚合支付', '0');
INSERT INTO `sys_dict_item`
VALUES (57, 14, 'mobile', 'mobile', 'grant_types', '移动端登录', 5, 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL,
        '0');
INSERT INTO `sys_dict_item`
VALUES (58, 18, '0', '有效', 'lock_flag', '有效', 0, 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (59, 18, '9', '禁用', 'lock_flag', '禁用', 1, 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (60, 15, '4', 'vue3', 'style_type', 'element-plus', 4, 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (61, 19, '0', '主机', 'ds_config_type', '主机', 0, 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (62, 19, '1', 'JDBC', 'ds_config_type', 'jdbc', 2, 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (63, 20, 'false', '否', 'common_status', '否', 1, 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (64, 20, 'true', '是', 'common_status', '是', 2, 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (65, 21, 'MINI', '小程序', 'app_social_type', '小程序登录', 0, 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL,
        '0');
INSERT INTO `sys_dict_item`
VALUES (66, 22, '0', '否', 'yes_no_type', '0', 0, 'admin', ' ', '2026-03-04 20:56:30', NULL, '0', '0');
INSERT INTO `sys_dict_item`
VALUES (67, 22, '1', '是', 'yes_no_type', '1', 0, 'admin', ' ', '2026-03-04 20:56:30', NULL, '1', '0');
INSERT INTO `sys_dict_item`
VALUES (69, 23, 'text', '文本', 'repType', '文本', 0, 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (70, 23, 'image', '图片', 'repType', '图片', 0, 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (71, 23, 'voice', '语音', 'repType', '语音', 0, 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (72, 23, 'video', '视频', 'repType', '视频', 0, 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (73, 23, 'shortvideo', '小视频', 'repType', '小视频', 0, 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (74, 23, 'location', '地理位置', 'repType', '地理位置', 0, 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (75, 23, 'link', '链接消息', 'repType', '链接消息', 0, 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (76, 23, 'event', '事件推送', 'repType', '事件推送', 0, 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (77, 24, '0', '未提交', 'leave_status', '未提交', 0, 'admin', ' ', '2026-03-04 20:56:30', NULL, '未提交', '0');
INSERT INTO `sys_dict_item`
VALUES (78, 24, '1', '审批中', 'leave_status', '审批中', 0, 'admin', ' ', '2026-03-04 20:56:30', NULL, '审批中', '0');
INSERT INTO `sys_dict_item`
VALUES (79, 24, '2', '完成', 'leave_status', '完成', 0, 'admin', ' ', '2026-03-04 20:56:30', NULL, '完成', '0');
INSERT INTO `sys_dict_item`
VALUES (80, 24, '9', '驳回', 'leave_status', '驳回', 0, 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (81, 25, 'record', '日程记录', 'schedule_type', '日程记录', 0, 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL,
        '0');
INSERT INTO `sys_dict_item`
VALUES (82, 25, 'plan', '计划', 'schedule_type', '计划类型', 0, 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (83, 26, '0', '计划中', 'schedule_status', '日程状态', 0, 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (84, 26, '1', '已开始', 'schedule_status', '已开始', 0, 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (85, 26, '3', '已结束', 'schedule_status', '已结束', 0, 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '0');
INSERT INTO `sys_dict_item`
VALUES (86, 27, 'mysql', 'mysql', 'ds_type', 'mysql', 0, 'admin', ' ', '2026-03-04 20:56:30', NULL, NULL, '0');

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file`
(
    `id`          bigint                                                        NOT NULL COMMENT 'ID',
    `file_name`   varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件名',
    `bucket_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件存储桶名称',
    `original`    varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '原始文件名',
    `type`        varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '文件类型',
    `file_size`   bigint                                                        NULL DEFAULT NULL COMMENT '文件大小',
    `create_by`   varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '创建人',
    `update_by`   varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '更新人',
    `create_time` datetime                                                      NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` datetime                                                      NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `del_flag`    char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT '0' COMMENT '逻辑删除标记(0-正常, 1-已删除)',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '系统文件表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_file
-- ----------------------------

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`
(
    `job_id`              bigint                                                         NOT NULL COMMENT 'ID',
    `job_name`            varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci   NOT NULL COMMENT '任务名称',
    `job_group`           varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci   NOT NULL COMMENT '任务组名',
    `job_order`           char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci       NULL     DEFAULT '1' COMMENT '优先级(1-9)',
    `job_type`            char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci       NOT NULL DEFAULT '1' COMMENT '任务类型(1-Java, 2-SpringBean, 3-Rest, 4-Jar)',
    `execute_path`        varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL     DEFAULT NULL COMMENT '执行路径',
    `class_name`          varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL     DEFAULT NULL COMMENT '执行类名',
    `method_name`         varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL     DEFAULT NULL COMMENT '执行方法',
    `method_params_value` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL     DEFAULT NULL COMMENT '参数值',
    `cron_expression`     varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL     DEFAULT NULL COMMENT 'Cron表达式',
    `misfire_policy`      varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci   NULL     DEFAULT '3' COMMENT '错失策略(1-立即, 2-执行一次, 3-下周期)',
    `job_tenant_type`     char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci       NULL     DEFAULT '1' COMMENT '租户类型(1-多租户, 2-非多租户)',
    `job_status`          char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci       NULL     DEFAULT '0' COMMENT '状态(1-未发布, 2-运行, 3-暂停, 4-删除)',
    `job_execute_status`  char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci       NULL     DEFAULT '0' COMMENT '执行状态(0-正常, 1-异常)',
    `create_by`           varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci   NULL     DEFAULT NULL COMMENT '创建人',
    `create_time`         datetime                                                       NULL     DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_by`           varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci   NULL     DEFAULT NULL COMMENT '更新人',
    `update_time`         datetime                                                       NULL     DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `start_time`          timestamp                                                      NULL     DEFAULT NULL COMMENT '开始时间',
    `previous_time`       timestamp                                                      NULL     DEFAULT NULL COMMENT '上次时间',
    `next_time`           timestamp                                                      NULL     DEFAULT NULL COMMENT '下次时间',
    `remark`              varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL     DEFAULT '' COMMENT '备注',
    PRIMARY KEY (`job_id`) USING BTREE,
    UNIQUE INDEX `job_name_group_idx` (`job_name` ASC, `job_group` ASC) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '定时任务配置表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`
(
    `job_log_id`          bigint                                                         NOT NULL COMMENT 'ID',
    `job_id`              bigint                                                         NOT NULL COMMENT '任务ID',
    `job_name`            varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci   NULL     DEFAULT NULL COMMENT '任务名称',
    `job_group?`          varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci   NULL     DEFAULT NULL COMMENT '任务组名',
    `job_order`           char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci       NULL     DEFAULT NULL COMMENT '优先级',
    `job_type`            char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci       NOT NULL DEFAULT '1' COMMENT '任务类型(1-Java, 2-SpringBean, 3-Rest, 4-Jar)',
    `execute_path`        varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL     DEFAULT NULL COMMENT '执行路径',
    `class_name`          varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL     DEFAULT NULL COMMENT '执行类名',
    `method_name`         varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL     DEFAULT NULL COMMENT '执行方法',
    `method_params_value` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL     DEFAULT NULL COMMENT '参数值',
    `cron_expression`     varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL     DEFAULT NULL COMMENT 'Cron表达式',
    `job_message`         varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL     DEFAULT NULL COMMENT '日志信息',
    `job_log_status`      char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci       NULL     DEFAULT '0' COMMENT '执行状态(0-正常, 1-失败)',
    `execute_time`        varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci   NULL     DEFAULT NULL COMMENT '耗时(ms)',
    `exception_info`      varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL     DEFAULT '' COMMENT '异常信息',
    `create_time`         datetime                                                       NULL     DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '定时任务执行日志表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`
(
    `id`          bigint                                                         NOT NULL COMMENT 'ID',
    `log_type`    char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci       NULL DEFAULT '0' COMMENT '类型(0-正常, 9-异常)',
    `title`       varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '标题',
    `service_id`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci   NULL DEFAULT NULL COMMENT '服务ID',
    `create_by`   varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci   NULL DEFAULT NULL COMMENT '创建人',
    `update_by`   varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci   NULL DEFAULT NULL COMMENT '更新人',
    `create_time` datetime                                                       NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` datetime                                                       NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `remote_addr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '操作IP',
    `user_agent`  varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户代理',
    `request_uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '请求URI',
    `method`      varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci   NULL DEFAULT NULL COMMENT '请求方法',
    `params`      text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci          NULL COMMENT '请求参数',
    `time`        bigint                                                         NULL DEFAULT NULL COMMENT '耗时',
    `del_flag`    char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci       NULL DEFAULT '0' COMMENT '逻辑删除(0-正常, 1-已删除)',
    `exception`   text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci          NULL COMMENT '异常信息',
    PRIMARY KEY (`id`) USING BTREE,
    INDEX `sys_log_request_uri` (`request_uri` ASC) USING BTREE,
    INDEX `sys_log_type` (`log_type` ASC) USING BTREE,
    INDEX `sys_log_create_date` (`create_time` ASC) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '系统操作日志表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`
(
    `menu_id`     bigint                                                        NOT NULL COMMENT 'ID',
    `name`        varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '名称',
    `en_name`     varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '英文名',
    `permission`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '权限标识',
    `path`        varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路由地址',
    `parent_id`   bigint                                                        NULL DEFAULT NULL COMMENT '父ID',
    `icon`        varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '图标',
    `visible`     char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT '1' COMMENT '显示(0-隐藏, 1-显示)',
    `sort_order`  int                                                           NULL DEFAULT 1 COMMENT '排序',
    `keep_alive`  char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT '0' COMMENT '缓存(0-否, 1-是)',
    `embedded`    char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT NULL COMMENT '内嵌(0-否, 1-是)',
    `menu_type`   char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT '0' COMMENT '类型(0-目录, 1-菜单, 2-按钮)',
    `create_by`   varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '创建人',
    `create_time` datetime                                                      NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_by`   varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '更新人',
    `update_time` datetime                                                      NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `del_flag`    char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT '0' COMMENT '逻辑删除(0-正常, 1-已删除)',
    PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '系统菜单权限表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu`
VALUES (1000, '权限管理', 'authorization', NULL, '/admin', -1, 'iconfont icon-icon-', '1', 0, '0', '0', '0', '',
        '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (1100, '用户管理', 'user', NULL, '/admin/user/index', 1000, 'ele-User', '1', 1, '0', '0', '0', '',
        '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (1101, '用户新增', NULL, 'sys_user_add', NULL, 1100, NULL, '1', 1, '0', NULL, '1', ' ', '2026-03-04 20:56:30',
        ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (1102, '用户修改', NULL, 'sys_user_edit', NULL, 1100, NULL, '1', 1, '0', NULL, '1', ' ', '2026-03-04 20:56:30',
        ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (1103, '用户删除', NULL, 'sys_user_del', NULL, 1100, NULL, '1', 1, '0', NULL, '1', ' ', '2026-03-04 20:56:30',
        ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (1104, '导入导出', NULL, 'sys_user_export', NULL, 1100, NULL, '1', 1, '0', NULL, '1', ' ', '2026-03-04 20:56:30',
        ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (1200, '菜单管理', 'menu', NULL, '/admin/menu/index', 1000, 'iconfont icon-caidan', '1', 2, '0', '0', '0', '',
        '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (1201, '菜单新增', NULL, 'sys_menu_add', NULL, 1200, NULL, '1', 1, '0', NULL, '1', ' ', '2026-03-04 20:56:30',
        ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (1202, '菜单修改', NULL, 'sys_menu_edit', NULL, 1200, NULL, '1', 1, '0', NULL, '1', ' ', '2026-03-04 20:56:30',
        ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (1203, '菜单删除', NULL, 'sys_menu_del', NULL, 1200, NULL, '1', 1, '0', NULL, '1', ' ', '2026-03-04 20:56:30',
        ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (1300, '角色管理', 'role', NULL, '/admin/role/index', 1000, 'iconfont icon-gerenzhongxin', '1', 3, '0', NULL,
        '0', '', '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (1301, '角色新增', NULL, 'sys_role_add', NULL, 1300, NULL, '1', 1, '0', NULL, '1', ' ', '2026-03-04 20:56:30',
        ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (1302, '角色修改', NULL, 'sys_role_edit', NULL, 1300, NULL, '1', 1, '0', NULL, '1', ' ', '2026-03-04 20:56:30',
        ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (1303, '角色删除', NULL, 'sys_role_del', NULL, 1300, NULL, '1', 1, '0', NULL, '1', ' ', '2026-03-04 20:56:30',
        ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (1304, '分配权限', NULL, 'sys_role_perm', NULL, 1300, NULL, '1', 1, '0', NULL, '1', ' ', '2026-03-04 20:56:30',
        ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (1305, '角色导入导出', NULL, 'sys_role_export', NULL, 1300, NULL, '1', 4, '0', NULL, '1', ' ',
        '2026-03-04 20:56:30', ' ', NULL, '0');
INSERT INTO `sys_menu`
VALUES (1400, '部门管理', 'dept', NULL, '/admin/dept/index', 1000, 'iconfont icon-zidingyibuju', '1', 4, '0', NULL, '0',
        '', '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (1401, '部门新增', NULL, 'sys_dept_add', NULL, 1400, NULL, '1', 1, '0', NULL, '1', ' ', '2026-03-04 20:56:30',
        ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (1402, '部门修改', NULL, 'sys_dept_edit', NULL, 1400, NULL, '1', 1, '0', NULL, '1', ' ', '2026-03-04 20:56:30',
        ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (1403, '部门删除', NULL, 'sys_dept_del', NULL, 1400, NULL, '1', 1, '0', NULL, '1', ' ', '2026-03-04 20:56:30',
        ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (1600, '岗位管理', 'post', NULL, '/admin/post/index', 1000, 'iconfont icon--chaifenhang', '1', 5, '1', '0', '0',
        '', '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (1601, '岗位信息查看', NULL, 'sys_post_view', NULL, 1600, NULL, '1', 0, '0', NULL, '1', ' ',
        '2026-03-04 20:56:30', ' ', NULL, '0');
INSERT INTO `sys_menu`
VALUES (1602, '岗位信息新增', NULL, 'sys_post_add', NULL, 1600, NULL, '1', 1, '0', NULL, '1', ' ',
        '2026-03-04 20:56:30', ' ', NULL, '0');
INSERT INTO `sys_menu`
VALUES (1603, '岗位信息修改', NULL, 'sys_post_edit', NULL, 1600, NULL, '1', 2, '0', NULL, '1', ' ',
        '2026-03-04 20:56:30', ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (1604, '岗位信息删除', NULL, 'sys_post_del', NULL, 1600, NULL, '1', 3, '0', NULL, '1', ' ',
        '2026-03-04 20:56:30', ' ', NULL, '0');
INSERT INTO `sys_menu`
VALUES (1605, '岗位导入导出', NULL, 'sys_post_export', NULL, 1600, NULL, '1', 4, '0', NULL, '1', ' ',
        '2026-03-04 20:56:30', ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2000, '系统管理', 'system', NULL, '/system', -1, 'iconfont icon-quanjushezhi_o', '1', 1, '0', NULL, '0', '',
        '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2001, '日志管理', 'log', NULL, '/admin/logs', 2000, 'ele-Cloudy', '1', 0, '0', '0', '0', 'admin',
        '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2100, '操作日志', 'operation', NULL, '/admin/log/index', 2001, 'iconfont icon-jinridaiban', '1', 2, '0', '0',
        '0', '', '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2101, '日志删除', NULL, 'sys_log_del', NULL, 2100, NULL, '1', 1, '0', NULL, '1', ' ', '2026-03-04 20:56:30',
        ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2102, '导入导出', NULL, 'sys_log_export', NULL, 2100, NULL, '1', 1, '0', NULL, '1', ' ', '2026-03-04 20:56:30',
        ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2200, '字典管理', 'dict', NULL, '/admin/dict/index', 2000, 'iconfont icon-zhongduancanshuchaxun', '1', 6, '0',
        NULL, '0', '', '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2201, '字典删除', NULL, 'sys_dict_del', NULL, 2200, NULL, '1', 1, '0', NULL, '1', ' ', '2026-03-04 20:56:30',
        ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2202, '字典新增', NULL, 'sys_dict_add', NULL, 2200, NULL, '1', 1, '0', NULL, '1', ' ', '2026-03-04 20:56:30',
        ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2203, '字典修改', NULL, 'sys_dict_edit', NULL, 2200, NULL, '1', 1, '0', NULL, '1', ' ', '2026-03-04 20:56:30',
        ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2210, '参数管理', 'parameter', NULL, '/admin/param/index', 2000, 'iconfont icon-wenducanshu-05', '1', 7, '1',
        NULL, '0', '', '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2211, '参数新增', NULL, 'sys_syspublicparam_add', NULL, 2210, NULL, '1', 1, '0', NULL, '1', ' ',
        '2026-03-04 20:56:30', ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2212, '参数删除', NULL, 'sys_syspublicparam_del', NULL, 2210, NULL, '1', 1, '0', NULL, '1', ' ',
        '2026-03-04 20:56:30', ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2213, '参数编辑', NULL, 'sys_syspublicparam_edit', NULL, 2210, NULL, '1', 1, '0', NULL, '1', ' ',
        '2026-03-04 20:56:30', ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2300, '代码生成', 'code', NULL, '/gen/table/index', 9000, 'iconfont icon-zhongduancanshu', '1', 1, '0', '0',
        '0', '', '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2400, '终端管理', 'client', NULL, '/admin/client/index', 2000, 'iconfont icon-gongju', '1', 9, '1', NULL, '0',
        '', '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2401, '客户端新增', NULL, 'sys_client_add', NULL, 2400, '1', '1', 1, '0', NULL, '1', ' ', '2026-03-04 20:56:30',
        ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2402, '客户端修改', NULL, 'sys_client_edit', NULL, 2400, NULL, '1', 1, '0', NULL, '1', ' ',
        '2026-03-04 20:56:30', ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2403, '客户端删除', NULL, 'sys_client_del', NULL, 2400, NULL, '1', 1, '0', NULL, '1', ' ',
        '2026-03-04 20:56:30', ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2600, '令牌管理', 'token', NULL, '/admin/token/index', 2000, 'ele-Key', '1', 11, '0', NULL, '0', '',
        '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2601, '令牌删除', NULL, 'sys_token_del', NULL, 2600, NULL, '1', 1, '0', NULL, '1', ' ', '2026-03-04 20:56:30',
        ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2800, 'Quartz管理', 'quartz', NULL, '/daemon/job-manage/index', 2000, 'ele-AlarmClock', '1', 8, '0', NULL, '0',
        '', '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2810, '任务新增', NULL, 'job_sys_job_add', NULL, 2800, '1', '1', 0, '0', NULL, '1', ' ', '2026-03-04 20:56:30',
        ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2820, '任务修改', NULL, 'job_sys_job_edit', NULL, 2800, '1', '1', 0, '0', NULL, '1', ' ', '2026-03-04 20:56:30',
        ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2830, '任务删除', NULL, 'job_sys_job_del', NULL, 2800, '1', '1', 0, '0', NULL, '1', ' ', '2026-03-04 20:56:30',
        ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2840, '任务暂停', NULL, 'job_sys_job_shutdown_job', NULL, 2800, '1', '1', 0, '0', NULL, '1', ' ',
        '2026-03-04 20:56:30', ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2850, '任务开始', NULL, 'job_sys_job_start_job', NULL, 2800, '1', '1', 0, '0', NULL, '1', ' ',
        '2026-03-04 20:56:30', ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2860, '任务刷新', NULL, 'job_sys_job_refresh_job', NULL, 2800, '1', '1', 0, '0', NULL, '1', ' ',
        '2026-03-04 20:56:30', ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2870, '执行任务', NULL, 'job_sys_job_run_job', NULL, 2800, '1', '1', 0, '0', NULL, '1', ' ',
        '2026-03-04 20:56:30', ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2871, '导出', NULL, 'job_sys_job_export', NULL, 2800, NULL, '1', 0, '0', '0', '1', 'admin',
        '2026-03-04 20:56:30', ' ', NULL, '0');
INSERT INTO `sys_menu`
VALUES (2906, '文件管理', 'file', NULL, '/admin/file/index', 2000, 'ele-Files', '1', 6, '0', NULL, '0', '',
        '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (2907, '删除文件', NULL, 'sys_file_del', NULL, 2906, NULL, '1', 1, '0', NULL, '1', ' ', '2026-03-04 20:56:30',
        ' ', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (4000, '系统监控', 'monitor', NULL, '/daemon', -1, 'iconfont icon-shuju', '1', 3, '0', '0', '0', 'admin',
        '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (4001, '文档扩展', 'doc', NULL, 'http://pig-gateway:9999/swagger-ui.html', 4000, 'iconfont icon-biaodan', '1', 2,
        '0', '1', '0', '', '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (4002, '缓存监控', 'cache', NULL, '/ext/cache', 4000, 'iconfont icon-shuju', '1', 1, '0', '0', '0', 'admin',
        '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (9000, '开发平台', 'develop', NULL, '/gen', -1, 'iconfont icon-shuxingtu', '1', 9, '0', '0', '0', '',
        '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (9005, '数据源管理', 'datasource', NULL, '/gen/datasource/index', 9000, 'ele-Coin', '1', 0, '0', NULL, '0', '',
        '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (9006, '表单设计', 'Form Design', NULL, '/gen/design/index', 9000, 'iconfont icon-AIshiyanshi', '0', 2, '0', '0',
        '0', '', '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (9007, '生成页面', 'generation', NULL, '/gen/gener/index', 9000, 'iconfont icon-tongzhi4', '0', 0, '0', '0', '0',
        'admin', '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (9050, '元数据管理', 'metadata', NULL, '/gen/metadata', 9000, 'iconfont icon--chaifenhang', '1', 9, '0', '0',
        '0', '', '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (9051, '模板管理', 'template', NULL, '/gen/template/index', 9050, 'iconfont icon--chaifenhang', '1', 5, '0', '0',
        '0', 'admin', '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (9052, '查询', NULL, 'codegen_template_view', NULL, 9051, NULL, '0', 0, '0', '0', '1', 'admin',
        '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (9053, '增加', NULL, 'codegen_template_add', NULL, 9051, NULL, '1', 0, '0', '0', '1', 'admin',
        '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (9054, '新增', NULL, 'codegen_template_add', NULL, 9051, NULL, '0', 1, '0', '0', '1', 'admin',
        '2026-03-04 20:56:30', ' ', NULL, '0');
INSERT INTO `sys_menu`
VALUES (9055, '导出', NULL, 'codegen_template_export', NULL, 9051, NULL, '0', 2, '0', '0', '1', 'admin',
        '2026-03-04 20:56:30', ' ', NULL, '0');
INSERT INTO `sys_menu`
VALUES (9056, '删除', NULL, 'codegen_template_del', NULL, 9051, NULL, '0', 3, '0', '0', '1', 'admin',
        '2026-03-04 20:56:30', ' ', NULL, '0');
INSERT INTO `sys_menu`
VALUES (9057, '编辑', NULL, 'codegen_template_edit', NULL, 9051, NULL, '0', 4, '0', '0', '1', 'admin',
        '2026-03-04 20:56:30', ' ', NULL, '0');
INSERT INTO `sys_menu`
VALUES (9059, '模板分组', 'group', NULL, '/gen/group/index', 9050, 'iconfont icon-shuxingtu', '1', 6, '0', '0', '0',
        'admin', '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_menu`
VALUES (9060, '查询', NULL, 'codegen_group_view', NULL, 9059, NULL, '0', 0, '0', '0', '1', 'admin',
        '2026-03-04 20:56:30', ' ', NULL, '0');
INSERT INTO `sys_menu`
VALUES (9061, '新增', NULL, 'codegen_group_add', NULL, 9059, NULL, '0', 0, '0', '0', '1', 'admin',
        '2026-03-04 20:56:30', ' ', NULL, '0');
INSERT INTO `sys_menu`
VALUES (9062, '修改', NULL, 'codegen_group_edit', NULL, 9059, NULL, '0', 0, '0', '0', '1', 'admin',
        '2026-03-04 20:56:30', ' ', NULL, '0');
INSERT INTO `sys_menu`
VALUES (9063, '删除', NULL, 'codegen_group_del', NULL, 9059, NULL, '0', 0, '0', '0', '1', 'admin',
        '2026-03-04 20:56:30', ' ', NULL, '0');
INSERT INTO `sys_menu`
VALUES (9064, '导出', NULL, 'codegen_group_export', NULL, 9059, NULL, '0', 0, '0', '0', '1', 'admin',
        '2026-03-04 20:56:30', ' ', NULL, '0');
INSERT INTO `sys_menu`
VALUES (9065, '字段管理', 'field', NULL, '/gen/field-type/index', 9050, 'iconfont icon-fuwenben', '1', 0, '0', '0', '0',
        'admin', '2026-03-04 20:56:30', 'admin', '2026-03-04 20:56:30', '0');

-- ----------------------------
-- Table structure for sys_oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `sys_oauth_client_details`;
CREATE TABLE `sys_oauth_client_details`
(
    `id`                      bigint                                                         NOT NULL COMMENT 'ID',
    `client_id`               varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci   NOT NULL COMMENT '客户端ID',
    `resource_ids`            varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '资源ID集合',
    `client_secret`           varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '客户端秘钥',
    `scope`                   varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '作用域',
    `authorized_grant_types`  varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '授权类型',
    `web_server_redirect_uri` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '回调地址',
    `authorities`             varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '权限集合',
    `access_token_validity`   int                                                            NULL DEFAULT NULL COMMENT '令牌有效期(秒)',
    `refresh_token_validity`  int                                                            NULL DEFAULT NULL COMMENT '刷新有效期(秒)',
    `additional_information`  varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '附加信息',
    `autoapprove`             varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '自动授权',
    `del_flag`                char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci       NULL DEFAULT '0' COMMENT '逻辑删除(0-正常, 1-已删除)',
    `create_by`               varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci   NULL DEFAULT NULL COMMENT '创建人',
    `update_by`               varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci   NULL DEFAULT NULL COMMENT '更新人',
    `create_time`             datetime                                                       NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time`             datetime                                                       NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = 'OAuth客户端详情表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oauth_client_details
-- ----------------------------
INSERT INTO `sys_oauth_client_details`
VALUES (1, 'app', NULL, 'app', 'server', 'password,refresh_token,authorization_code,client_credentials,mobile',
        'http://localhost:4040/sso1/login,http://localhost:4041/sso1/login,http://localhost:8080/renren-admin/sys/oauth2-sso,http://localhost:8090/sys/oauth2-sso',
        NULL, 43200, 2592001, '{\"enc_flag\":\"1\",\"captcha_flag\":\"1\",\"online_quantity\":\"1\"}', 'true', '0', '',
        'admin', NULL, '2026-03-04 20:56:30');
INSERT INTO `sys_oauth_client_details`
VALUES (2, 'daemon', NULL, 'daemon', 'server', 'password,refresh_token', NULL, NULL, 43200, 2592001,
        '{\"enc_flag\":\"1\",\"captcha_flag\":\"1\"}', 'true', '0', ' ', ' ', NULL, NULL);
INSERT INTO `sys_oauth_client_details`
VALUES (3, 'gen', NULL, 'gen', 'server', 'password,refresh_token', NULL, NULL, 43200, 2592001,
        '{\"enc_flag\":\"1\",\"captcha_flag\":\"1\"}', 'true', '0', ' ', ' ', NULL, NULL);
INSERT INTO `sys_oauth_client_details`
VALUES (4, 'mp', NULL, 'mp', 'server', 'password,refresh_token', NULL, NULL, 43200, 2592001,
        '{\"enc_flag\":\"1\",\"captcha_flag\":\"1\"}', 'true', '0', ' ', ' ', NULL, NULL);
INSERT INTO `sys_oauth_client_details`
VALUES (5, 'pig', NULL, 'pig', 'server', 'password,refresh_token,authorization_code,client_credentials,mobile',
        'http://localhost:4040/sso1/login,http://localhost:4041/sso1/login,http://localhost:8080/renren-admin/sys/oauth2-sso,http://localhost:8090/sys/oauth2-sso',
        NULL, 43200, 2592001, '{\"enc_flag\":\"1\",\"captcha_flag\":\"1\",\"online_quantity\":\"1\"}', 'false', '0', '',
        'admin', NULL, '2026-03-04 20:56:30');
INSERT INTO `sys_oauth_client_details`
VALUES (6, 'test', NULL, 'test', 'server', 'password,refresh_token', NULL, NULL, 43200, 2592001,
        '{ \"enc_flag\":\"1\",\"captcha_flag\":\"0\"}', 'true', '0', ' ', ' ', NULL, NULL);
INSERT INTO `sys_oauth_client_details`
VALUES (7, 'social', NULL, 'social', 'server', 'password,refresh_token,mobile', NULL, NULL, 43200, 2592001,
        '{ \"enc_flag\":\"0\",\"captcha_flag\":\"0\"}', 'true', '0', ' ', ' ', NULL, NULL);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`
(
    `post_id`     bigint                                                        NOT NULL COMMENT 'ID',
    `post_code`   varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL COMMENT '岗位编码',
    `post_name`   varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL COMMENT '岗位名称',
    `post_sort`   int                                                           NOT NULL COMMENT '岗位排序值',
    `remark`      varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL     DEFAULT NULL COMMENT '岗位备注',
    `del_flag`    char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NOT NULL DEFAULT '0' COMMENT '逻辑删除标记(-1-已删除, 0-正常)',
    `create_time` datetime                                                      NULL     DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `create_by`   varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL     DEFAULT NULL COMMENT '创建人',
    `update_time` datetime                                                      NULL     DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `update_by`   varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL     DEFAULT NULL COMMENT '更新人',
    PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '系统岗位表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post`
VALUES (1, 'CTO', 'CTO', 0, 'CTOOO', '0', '2026-03-04 20:56:30', '', '2026-03-04 20:56:30', 'admin');

-- ----------------------------
-- Table structure for sys_public_param
-- ----------------------------
DROP TABLE IF EXISTS `sys_public_param`;
CREATE TABLE `sys_public_param`
(
    `public_id`     bigint                                                        NOT NULL COMMENT 'ID',
    `public_name`   varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
    `public_key`    varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '键',
    `public_value`  varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '值',
    `status`        char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT '0' COMMENT '状态，0禁用，1启用',
    `validate_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '校验码',
    `create_by`     varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '创建人',
    `update_by`     varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '更新人',
    `create_time`   datetime                                                      NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time`   datetime                                                      NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `public_type`   char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT '0' COMMENT '类型(0-未知, 1-系统, 2-业务)',
    `system_flag`   char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT '0' COMMENT '系统标识(0-非系统, 1-系统)',
    `del_flag`      char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT '0' COMMENT '逻辑删除标记(0-正常, 1-已删除)',
    PRIMARY KEY (`public_id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '系统公共参数表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_public_param
-- ----------------------------
INSERT INTO `sys_public_param`
VALUES (1, '租户默认来源', 'TENANT_DEFAULT_ID', '1', '0', '', ' ', ' ', '2026-03-04 20:56:30', '2026-03-04 20:56:30',
        '2', '0', '1');
INSERT INTO `sys_public_param`
VALUES (2, '租户默认部门名称', 'TENANT_DEFAULT_DEPTNAME', '租户默认部门', '0', '', ' ', ' ', '2026-03-04 20:56:30',
        NULL, '2', '1', '0');
INSERT INTO `sys_public_param`
VALUES (3, '租户默认账户', 'TENANT_DEFAULT_USERNAME', 'admin', '0', '', ' ', ' ', '2026-03-04 20:56:30', NULL, '2', '1',
        '0');
INSERT INTO `sys_public_param`
VALUES (4, '租户默认密码', 'TENANT_DEFAULT_PASSWORD', '123456', '0', '', ' ', ' ', '2026-03-04 20:56:30', NULL, '2',
        '1', '0');
INSERT INTO `sys_public_param`
VALUES (5, '租户默认角色编码', 'TENANT_DEFAULT_ROLECODE', 'ROLE_ADMIN', '0', '', ' ', ' ', '2026-03-04 20:56:30', NULL,
        '2', '1', '0');
INSERT INTO `sys_public_param`
VALUES (6, '租户默认角色名称', 'TENANT_DEFAULT_ROLENAME', '租户默认角色', '0', '', ' ', ' ', '2026-03-04 20:56:30',
        NULL, '2', '1', '0');
INSERT INTO `sys_public_param`
VALUES (7, '表前缀', 'GEN_TABLE_PREFIX', 'tb_', '0', '', ' ', ' ', '2026-03-04 20:56:30', NULL, '9', '1', '0');
INSERT INTO `sys_public_param`
VALUES (8, '接口文档不显示的字段', 'GEN_HIDDEN_COLUMNS', 'tenant_id', '0', '', ' ', ' ', '2026-03-04 20:56:30', NULL,
        '9', '1', '0');
INSERT INTO `sys_public_param`
VALUES (9, '注册用户默认角色', 'USER_DEFAULT_ROLE', 'GENERAL_USER', '0', NULL, ' ', ' ', '2026-03-04 20:56:30', NULL,
        '2', '1', '0');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`
(
    `role_id`     bigint                                                        NOT NULL COMMENT 'ID',
    `role_name`   varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '角色名称',
    `role_code`   varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '角色编码',
    `role_desc`   varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色描述',
    `create_by`   varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '创建人',
    `update_by`   varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '更新人',
    `create_time` datetime                                                      NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` datetime                                                      NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `del_flag`    char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT '0' COMMENT '逻辑删除标记(0-正常, 1-已删除)',
    PRIMARY KEY (`role_id`) USING BTREE,
    INDEX `role_idx1_role_code` (`role_code` ASC) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '系统角色表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role`
VALUES (1, '管理员', 'ROLE_ADMIN', '管理员', '', 'admin', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '0');
INSERT INTO `sys_role`
VALUES (2, '普通用户', 'GENERAL_USER', '普通用户', '', 'admin', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '0');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`
(
    `role_id` bigint NOT NULL COMMENT '角色ID',
    `menu_id` bigint NOT NULL COMMENT '菜单ID',
    PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '角色与菜单关联表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu`
VALUES (1, 1000);
INSERT INTO `sys_role_menu`
VALUES (1, 1100);
INSERT INTO `sys_role_menu`
VALUES (1, 1101);
INSERT INTO `sys_role_menu`
VALUES (1, 1102);
INSERT INTO `sys_role_menu`
VALUES (1, 1103);
INSERT INTO `sys_role_menu`
VALUES (1, 1104);
INSERT INTO `sys_role_menu`
VALUES (1, 1200);
INSERT INTO `sys_role_menu`
VALUES (1, 1201);
INSERT INTO `sys_role_menu`
VALUES (1, 1202);
INSERT INTO `sys_role_menu`
VALUES (1, 1203);
INSERT INTO `sys_role_menu`
VALUES (1, 1300);
INSERT INTO `sys_role_menu`
VALUES (1, 1301);
INSERT INTO `sys_role_menu`
VALUES (1, 1302);
INSERT INTO `sys_role_menu`
VALUES (1, 1303);
INSERT INTO `sys_role_menu`
VALUES (1, 1304);
INSERT INTO `sys_role_menu`
VALUES (1, 1305);
INSERT INTO `sys_role_menu`
VALUES (1, 1400);
INSERT INTO `sys_role_menu`
VALUES (1, 1401);
INSERT INTO `sys_role_menu`
VALUES (1, 1402);
INSERT INTO `sys_role_menu`
VALUES (1, 1403);
INSERT INTO `sys_role_menu`
VALUES (1, 1600);
INSERT INTO `sys_role_menu`
VALUES (1, 1601);
INSERT INTO `sys_role_menu`
VALUES (1, 1602);
INSERT INTO `sys_role_menu`
VALUES (1, 1603);
INSERT INTO `sys_role_menu`
VALUES (1, 1604);
INSERT INTO `sys_role_menu`
VALUES (1, 1605);
INSERT INTO `sys_role_menu`
VALUES (1, 2000);
INSERT INTO `sys_role_menu`
VALUES (1, 2001);
INSERT INTO `sys_role_menu`
VALUES (1, 2100);
INSERT INTO `sys_role_menu`
VALUES (1, 2101);
INSERT INTO `sys_role_menu`
VALUES (1, 2102);
INSERT INTO `sys_role_menu`
VALUES (1, 2200);
INSERT INTO `sys_role_menu`
VALUES (1, 2201);
INSERT INTO `sys_role_menu`
VALUES (1, 2202);
INSERT INTO `sys_role_menu`
VALUES (1, 2203);
INSERT INTO `sys_role_menu`
VALUES (1, 2210);
INSERT INTO `sys_role_menu`
VALUES (1, 2211);
INSERT INTO `sys_role_menu`
VALUES (1, 2212);
INSERT INTO `sys_role_menu`
VALUES (1, 2213);
INSERT INTO `sys_role_menu`
VALUES (1, 2300);
INSERT INTO `sys_role_menu`
VALUES (1, 2400);
INSERT INTO `sys_role_menu`
VALUES (1, 2401);
INSERT INTO `sys_role_menu`
VALUES (1, 2402);
INSERT INTO `sys_role_menu`
VALUES (1, 2403);
INSERT INTO `sys_role_menu`
VALUES (1, 2600);
INSERT INTO `sys_role_menu`
VALUES (1, 2601);
INSERT INTO `sys_role_menu`
VALUES (1, 2800);
INSERT INTO `sys_role_menu`
VALUES (1, 2810);
INSERT INTO `sys_role_menu`
VALUES (1, 2820);
INSERT INTO `sys_role_menu`
VALUES (1, 2830);
INSERT INTO `sys_role_menu`
VALUES (1, 2840);
INSERT INTO `sys_role_menu`
VALUES (1, 2850);
INSERT INTO `sys_role_menu`
VALUES (1, 2860);
INSERT INTO `sys_role_menu`
VALUES (1, 2870);
INSERT INTO `sys_role_menu`
VALUES (1, 2871);
INSERT INTO `sys_role_menu`
VALUES (1, 2906);
INSERT INTO `sys_role_menu`
VALUES (1, 2907);
INSERT INTO `sys_role_menu`
VALUES (1, 4000);
INSERT INTO `sys_role_menu`
VALUES (1, 4001);
INSERT INTO `sys_role_menu`
VALUES (1, 4002);
INSERT INTO `sys_role_menu`
VALUES (1, 9000);
INSERT INTO `sys_role_menu`
VALUES (1, 9005);
INSERT INTO `sys_role_menu`
VALUES (1, 9006);
INSERT INTO `sys_role_menu`
VALUES (1, 9007);
INSERT INTO `sys_role_menu`
VALUES (1, 9050);
INSERT INTO `sys_role_menu`
VALUES (1, 9051);
INSERT INTO `sys_role_menu`
VALUES (1, 9052);
INSERT INTO `sys_role_menu`
VALUES (1, 9053);
INSERT INTO `sys_role_menu`
VALUES (1, 9054);
INSERT INTO `sys_role_menu`
VALUES (1, 9055);
INSERT INTO `sys_role_menu`
VALUES (1, 9056);
INSERT INTO `sys_role_menu`
VALUES (1, 9057);
INSERT INTO `sys_role_menu`
VALUES (1, 9059);
INSERT INTO `sys_role_menu`
VALUES (1, 9060);
INSERT INTO `sys_role_menu`
VALUES (1, 9061);
INSERT INTO `sys_role_menu`
VALUES (1, 9062);
INSERT INTO `sys_role_menu`
VALUES (1, 9063);
INSERT INTO `sys_role_menu`
VALUES (1, 9064);
INSERT INTO `sys_role_menu`
VALUES (1, 9065);
INSERT INTO `sys_role_menu`
VALUES (2, 4000);
INSERT INTO `sys_role_menu`
VALUES (2, 4001);
INSERT INTO `sys_role_menu`
VALUES (2, 4002);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`
(
    `user_id`     bigint                                                        NOT NULL COMMENT 'ID',
    `username`    varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '用户名',
    `password`    varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
    `salt`        varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '盐值',
    `phone`       varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '手机号',
    `avatar`      varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
    `nickname`    varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '昵称',
    `name`        varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '姓名',
    `email`       varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
    `dept_id`     bigint                                                        NULL DEFAULT NULL COMMENT '部门ID',
    `create_by`   varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '创建人',
    `update_by`   varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '更新人',
    `create_time` datetime                                                      NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` datetime                                                      NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `lock_flag`   char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT '0' COMMENT '锁定(0-正常, 9-已锁定)',
    `del_flag`    char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NULL DEFAULT '0' COMMENT '逻辑删除(0-正常, 1-已删除)',
    `wx_openid`   varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '微信OpenID',
    `mini_openid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '小程序OpenID',
    `qq_openid`   varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT 'QQ OpenID',
    `gitee_login` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Gitee',
    `osc_id`      varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'OSC',
    PRIMARY KEY (`user_id`) USING BTREE,
    INDEX `user_wx_openid` (`wx_openid` ASC) USING BTREE,
    INDEX `user_qq_openid` (`qq_openid` ASC) USING BTREE,
    INDEX `user_idx1_username` (`username` ASC) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '系统用户表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user`
VALUES (1, 'admin', '$2a$10$c/Ae0pRjJtMZg3BnvVpO.eIK6WYWVbKTzqgdy3afR7w.vd.xi3Mgy', '', '17034642999',
        '/admin/sys-file/s3demo/7ff4ca6b7bf446f3a5a13ac016dc21af.png', '管理员', '管理员', 'pig4cloud@qq.com', 4, ' ',
        'admin', '2026-03-04 20:56:30', '2026-03-04 20:56:30', '0', '0', NULL, 'oBxPy5E-v82xWGsfzZVzkD3wEX64', NULL,
        'log4j', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`
(
    `user_id` bigint NOT NULL COMMENT '用户ID',
    `post_id` bigint NOT NULL COMMENT '岗位ID',
    PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '用户与岗位关联表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post`
VALUES (1, 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`
(
    `user_id` bigint NOT NULL COMMENT '用户ID',
    `role_id` bigint NOT NULL COMMENT '角色ID',
    PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '用户与角色关联表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role`
VALUES (1, 1);
INSERT INTO `sys_user_role`
VALUES (1676492190299299842, 2);

SET FOREIGN_KEY_CHECKS = 1;
