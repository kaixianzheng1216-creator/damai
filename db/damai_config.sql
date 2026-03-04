SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config_info
-- ----------------------------
DROP TABLE IF EXISTS `config_info`;
CREATE TABLE `config_info`
(
    `id`                 bigint                                                  NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `data_id`            varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin  NOT NULL COMMENT 'Data ID',
    `group_id`           varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin  NULL     DEFAULT NULL COMMENT 'Group ID',
    `content`            longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin      NOT NULL COMMENT '配置内容',
    `md5`                varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin   NULL     DEFAULT NULL COMMENT 'MD5',
    `gmt_create`         datetime                                                NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `gmt_modified`       datetime                                                NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
    `src_user`           text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin          NULL COMMENT '来源用户',
    `src_ip`             varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin   NULL     DEFAULT NULL COMMENT '来源IP',
    `app_name`           varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin  NULL     DEFAULT NULL COMMENT '应用名',
    `tenant_id`          varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin  NULL     DEFAULT '' COMMENT 'Tenant ID',
    `c_desc`             varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin  NULL     DEFAULT NULL COMMENT '描述',
    `c_use`              varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin   NULL     DEFAULT NULL COMMENT '用途',
    `effect`             varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin   NULL     DEFAULT NULL COMMENT '生效描述',
    `type`               varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin   NULL     DEFAULT NULL COMMENT '配置类型',
    `c_schema`           text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin          NULL COMMENT 'Schema',
    `encrypted_data_key` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '' COMMENT '加解密秘钥',
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `uk_configinfo_datagrouptenant` (`data_id` ASC, `group_id` ASC, `tenant_id` ASC) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 8
  CHARACTER SET = utf8mb3
  COLLATE = utf8mb3_bin COMMENT = 'Nacos配置主表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config_info
-- ----------------------------
INSERT INTO `config_info`
VALUES (1, 'application-dev.yml', 'DEFAULT_GROUP',
        '# 配置文件加密根密码\njasypt:\n  encryptor:\n    password: pig\n    algorithm: PBEWithMD5AndDES\n    iv-generator-classname: org.jasypt.iv.NoIvGenerator\n    \n# Spring 相关\nspring:\n  cache:\n    type: redis\n  data:\n    redis:\n      host: ${REDIS_HOST:127.0.0.1}\n      password: ${REDIS_PASSWORD:}\n      port: ${REDIS_PORT:6379}\n      database: ${REDIS_DATABASE:0}\n  cloud:\n    sentinel:\n      eager: true\n      transport:\n        dashboard: pig-sentinel:5003\n    openfeign:\n      sentinel:\n        enabled: true\n      okhttp:\n        enabled: true\n      httpclient:\n        enabled: false\n      compression:\n        request:\n          enabled: true\n        response:\n          enabled: true\n\n# 暴露监控端点\nmanagement:\n  endpoints:\n    web:\n      exposure:\n        include: \"*\"  \n  endpoint:\n    health:\n      show-details: ALWAYS\n\n# mybaits-plus配置\nmybatis-plus:\n  mapper-locations: classpath:/mapper/*Mapper.xml\n  global-config:\n    banner: false\n    db-config:\n      id-type: auto\n      table-underline: true\n      logic-delete-value: 1\n      logic-not-delete-value: 0\n  type-handlers-package: com.pig4cloud.pig.common.mybatis.handler\n  configuration:\n    map-underscore-to-camel-case: true\n    shrink-whitespaces-in-sql: true\n\n# 短信插件配置：https://www.yuque.com/vxixfq/pig/zw8udk\nsms:\n  is-print: false # 是否打印日志\n  config-type: yaml # 配置类型，yaml',
        '670b60f71ed234ee2c2d363721a1e2c9', '2025-05-16 12:48:39', '2025-10-29 09:01:23', 'nacos', '10.25.25.1', '',
        'public', '', NULL, NULL, 'yaml', NULL, '');
INSERT INTO `config_info`
VALUES (2, 'pig-auth-dev.yml', 'DEFAULT_GROUP',
        '# 数据源\nspring:\n  freemarker:\n    allow-request-override: false\n    allow-session-override: false\n    cache: true\n    charset: UTF-8\n    check-template-location: true\n    content-type: text/html\n    enabled: true\n    request-context-attribute: request\n    expose-request-attributes: false\n    expose-session-attributes: false\n    expose-spring-macro-helpers: true\n    prefer-file-system-access: true\n    suffix: .ftl\n    template-loader-path: classpath:/templates/\n\n\nsecurity:\n  encode-key: \'thanks,pig4cloud\'\n  ignore-clients:\n    - test\n    - client\n    - open\n    - app',
        'b4a660ece61e8180b4940a0770eddfee', '2025-01-30 16:50:04', '2025-01-30 16:50:04', 'nacos', '127.0.0.1', '',
        'public', NULL, NULL, NULL, 'yaml', NULL, '');
INSERT INTO `config_info`
VALUES (3, 'pig-codegen-dev.yml', 'DEFAULT_GROUP',
        '# 数据源配置\nspring:\n  datasource:\n    type: com.zaxxer.hikari.HikariDataSource\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    username: ${MYSQL_USERNAME:root}\n    password: ${MYSQL_PASSWORD:root}\n    url: jdbc:mysql://${MYSQL_HOST:127.0.0.1}:${MYSQL_PORT:3306}/${MYSQL_DB:pig}?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&allowMultiQueries=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=Asia/Shanghai&nullCatalogMeansCurrent=true&allowPublicKeyRetrieval=true\n  resources:\n    static-locations: classpath:/static/,classpath:/views/\n',
        'a1e1ae7127517eae96a2df8b15d94fe3', '2025-10-29 11:39:40', '2025-10-29 11:39:40', 'nacos', '10.25.25.2', '',
        'public', '', NULL, NULL, 'yaml', NULL, '');
INSERT INTO `config_info`
VALUES (4, 'pig-gateway-dev.yml', 'DEFAULT_GROUP',
        'spring:\n  cloud:\n    gateway:\n      server:\n        webflux:\n          routes:\n            # 认证中心\n            - id: pig-auth\n              uri: lb://pig-auth\n              predicates:\n                - Path=/auth/**\n            #UPMS 模块\n            - id: pig-upms-biz\n              uri: lb://pig-upms-biz\n              predicates:\n                - Path=/admin/**\n              filters:\n                # 限流配置\n                - name: RequestRateLimiter\n                  args:\n                    key-resolver: \'#{@remoteAddrKeyResolver}\'\n                    redis-rate-limiter.replenishRate: 100\n                    redis-rate-limiter.burstCapacity: 200\n            # 代码生成模块\n            - id: pig-codegen\n              uri: lb://pig-codegen\n              predicates:\n                - Path=/gen/**\n            # 代码生成模块\n            - id: pig-quartz\n              uri: lb://pig-quartz\n              predicates:\n                - Path=/job/**\n            # 固定路由转发配置 无修改\n            - id: openapi\n              uri: lb://pig-gateway\n              predicates:\n                - Path=/v3/api-docs/**\n              filters:\n                - RewritePath=/v3/api-docs/(?<path>.*), /$\\{path}/$\\{path}/v3/api-docs',
        '53ace4035d810f07e3767d94e1e68379', '2025-01-30 16:50:04', '2025-05-30 08:36:27', 'nacos_namespace_migrate',
        '0:0:0:0:0:0:0:1', '', 'public', '', NULL, NULL, 'yaml', NULL, '');
INSERT INTO `config_info`
VALUES (5, 'pig-monitor-dev.yml', 'DEFAULT_GROUP',
        'spring:\n  autoconfigure:\n    exclude: com.pig4cloud.pig.common.core.config.JacksonConfiguration\n  # 安全配置\n  security:\n    user:\n      name: ENC(8Hk2ILNJM8UTOuW/Xi75qg==)     # pig\n      password: ENC(o6cuPFfUevmTbkmBnE67Ow====) # pig\n',
        '650bdfa15f60f3faa84dfe6e6878b8cf', '2025-01-30 16:50:04', '2025-01-30 16:50:04', 'nacos', '127.0.0.1', '',
        'public', NULL, NULL, NULL, 'yaml', NULL, '');
INSERT INTO `config_info`
VALUES (6, 'pig-upms-biz-dev.yml', 'DEFAULT_GROUP',
        '# 数据源\nspring:\n  datasource:\n    type: com.zaxxer.hikari.HikariDataSource\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    username: ${MYSQL_USERNAME:root}\n    password: ${MYSQL_PASSWORD:root}\n    url: jdbc:mysql://${MYSQL_HOST:127.0.0.1}:${MYSQL_PORT:3306}/${MYSQL_DB:pig}?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&allowMultiQueries=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=Asia/Shanghai&nullCatalogMeansCurrent=true&allowPublicKeyRetrieval=true\n\n# 文件上传相关 支持阿里云、华为云、腾讯、minio\nfile:\n  bucketName: s3demo \n  local:\n    enable: true\n    base-path: /Users/lengleng/Downloads/img',
        '80cf3a9b7b490e32b03550c429dea33e', '2025-10-29 11:39:40', '2025-10-29 11:39:40', 'nacos', '10.25.25.2', '',
        'public', '', NULL, NULL, 'yaml', NULL, '');
INSERT INTO `config_info`
VALUES (7, 'pig-quartz-dev.yml', 'DEFAULT_GROUP',
        'spring:\n  datasource:\n    type: com.zaxxer.hikari.HikariDataSource\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    username: ${MYSQL_USERNAME:root}\n    password: ${MYSQL_PASSWORD:root}\n    url: jdbc:mysql://${MYSQL_HOST:127.0.0.1}:${MYSQL_PORT:3306}/${MYSQL_DB:pig}?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&allowMultiQueries=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=Asia/Shanghai&nullCatalogMeansCurrent=true&allowPublicKeyRetrieval=true\n',
        'e0c9ce980fd14fd28f955852061970ca', '2025-10-29 11:39:40', '2025-10-29 11:39:40', 'nacos', '10.25.25.2', '',
        'public', '', NULL, NULL, 'yaml', NULL, '');

-- ----------------------------
-- Table structure for config_info_beta
-- ----------------------------
DROP TABLE IF EXISTS `config_info_beta`;
CREATE TABLE `config_info_beta`
(
    `id`                 bigint                                                  NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `data_id`            varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin  NOT NULL COMMENT 'Data ID',
    `group_id`           varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin  NOT NULL COMMENT 'Group ID',
    `app_name`           varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin  NULL     DEFAULT NULL COMMENT '应用名',
    `content`            longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin      NOT NULL COMMENT '配置内容',
    `beta_ips`           varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL     DEFAULT NULL COMMENT '灰度IP',
    `md5`                varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin   NULL     DEFAULT NULL COMMENT 'MD5',
    `gmt_create`         datetime                                                NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `gmt_modified`       datetime                                                NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
    `src_user`           text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin          NULL COMMENT '来源用户',
    `src_ip`             varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin   NULL     DEFAULT NULL COMMENT '来源IP',
    `tenant_id`          varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin  NULL     DEFAULT '' COMMENT 'Tenant ID',
    `encrypted_data_key` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '' COMMENT '加解密秘钥',
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `uk_configinfobeta_datagrouptenant` (`data_id` ASC, `group_id` ASC, `tenant_id` ASC) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb3
  COLLATE = utf8mb3_bin COMMENT = 'Nacos灰度配置表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config_info_beta
-- ----------------------------

-- ----------------------------
-- Table structure for config_info_gray
-- ----------------------------
DROP TABLE IF EXISTS `config_info_gray`;
CREATE TABLE `config_info_gray`
(
    `id`                 bigint UNSIGNED                                               NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `data_id`            varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'Data ID',
    `group_id`           varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'Group ID',
    `content`            longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci     NOT NULL COMMENT '配置内容',
    `md5`                varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci  NULL     DEFAULT NULL COMMENT 'MD5',
    `src_user`           text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci         NULL COMMENT '来源用户',
    `src_ip`             varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT NULL COMMENT '来源IP',
    `gmt_create`         datetime(3)                                                   NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '创建时间',
    `gmt_modified`       datetime(3)                                                   NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '修改时间',
    `app_name`           varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT NULL COMMENT '应用名',
    `tenant_id`          varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT '' COMMENT 'Tenant ID',
    `gray_name`          varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '灰度名称',
    `gray_rule`          text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci         NOT NULL COMMENT '灰度规则',
    `encrypted_data_key` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '加解密秘钥',
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `uk_configinfogray_datagrouptenantgray` (`data_id` ASC, `group_id` ASC, `tenant_id` ASC, `gray_name` ASC) USING BTREE,
    INDEX `idx_dataid_gmt_modified` (`data_id` ASC, `gmt_modified` ASC) USING BTREE,
    INDEX `idx_gmt_modified` (`gmt_modified` ASC) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb3
  COLLATE = utf8mb3_general_ci COMMENT = 'Nacos灰度配置表(旧)'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config_info_gray
-- ----------------------------

-- ----------------------------
-- Table structure for config_info_tag
-- ----------------------------
DROP TABLE IF EXISTS `config_info_tag`;
CREATE TABLE `config_info_tag`
(
    `id`           bigint                                                 NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `data_id`      varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT 'Data ID',
    `group_id`     varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT 'Group ID',
    `tenant_id`    varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL     DEFAULT '' COMMENT 'Tenant ID',
    `tag_id`       varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT 'Tag ID',
    `app_name`     varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL     DEFAULT NULL COMMENT '应用名',
    `content`      longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin     NOT NULL COMMENT '配置内容',
    `md5`          varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin  NULL     DEFAULT NULL COMMENT 'MD5',
    `gmt_create`   datetime                                               NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `gmt_modified` datetime                                               NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
    `src_user`     text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin         NULL COMMENT '来源用户',
    `src_ip`       varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin  NULL     DEFAULT NULL COMMENT '来源IP',
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `uk_configinfotag_datagrouptenanttag` (`data_id` ASC, `group_id` ASC, `tenant_id` ASC, `tag_id` ASC) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb3
  COLLATE = utf8mb3_bin COMMENT = 'Nacos标签配置表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config_info_tag
-- ----------------------------

-- ----------------------------
-- Table structure for config_tags_relation
-- ----------------------------
DROP TABLE IF EXISTS `config_tags_relation`;
CREATE TABLE `config_tags_relation`
(
    `id`        bigint                                                 NOT NULL COMMENT 'ID',
    `tag_name`  varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '标签名称',
    `tag_type`  varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin  NULL DEFAULT NULL COMMENT '标签类型',
    `data_id`   varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT 'Data ID',
    `group_id`  varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT 'Group ID',
    `tenant_id` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '' COMMENT 'Tenant ID',
    `nid`       bigint                                                 NOT NULL AUTO_INCREMENT COMMENT '唯一自增ID',
    PRIMARY KEY (`nid`) USING BTREE,
    UNIQUE INDEX `uk_configtagrelation_configidtag` (`id` ASC, `tag_name` ASC, `tag_type` ASC) USING BTREE,
    INDEX `idx_tenant_id` (`tenant_id` ASC) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb3
  COLLATE = utf8mb3_bin COMMENT = 'Nacos配置标签关联表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config_tags_relation
-- ----------------------------

-- ----------------------------
-- Table structure for group_capacity
-- ----------------------------
DROP TABLE IF EXISTS `group_capacity`;
CREATE TABLE `group_capacity`
(
    `id`                bigint UNSIGNED                                        NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `group_id`          varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '' COMMENT 'Group ID，空字符表示整个集群',
    `quota`             int UNSIGNED                                           NOT NULL DEFAULT 0 COMMENT '配额，0表示使用默认值',
    `usage`             int UNSIGNED                                           NOT NULL DEFAULT 0 COMMENT '使用量',
    `max_size`          int UNSIGNED                                           NOT NULL DEFAULT 0 COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
    `max_aggr_count`    int UNSIGNED                                           NOT NULL DEFAULT 0 COMMENT '聚合子配置最大个数，，0表示使用默认值',
    `max_aggr_size`     int UNSIGNED                                           NOT NULL DEFAULT 0 COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
    `max_history_count` int UNSIGNED                                           NOT NULL DEFAULT 0 COMMENT '最大变更历史数量',
    `gmt_create`        datetime                                               NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `gmt_modified`      datetime                                               NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `uk_group_id` (`group_id` ASC) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb3
  COLLATE = utf8mb3_bin COMMENT = 'Nacos分组容量表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of group_capacity
-- ----------------------------

-- ----------------------------
-- Table structure for his_config_info
-- ----------------------------
DROP TABLE IF EXISTS `his_config_info`;
CREATE TABLE `his_config_info`
(
    `id`                 bigint UNSIGNED                                         NOT NULL COMMENT 'ID',
    `nid`                bigint UNSIGNED                                         NOT NULL AUTO_INCREMENT COMMENT '唯一自增ID',
    `data_id`            varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin  NOT NULL COMMENT 'Data ID',
    `group_id`           varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin  NOT NULL COMMENT 'Group ID',
    `app_name`           varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin  NULL     DEFAULT NULL COMMENT '应用名',
    `content`            longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin      NOT NULL COMMENT '配置内容',
    `md5`                varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin   NULL     DEFAULT NULL COMMENT 'MD5',
    `gmt_create`         datetime                                                NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `gmt_modified`       datetime                                                NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
    `src_user`           text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin          NULL COMMENT '来源用户',
    `src_ip`             varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin   NULL     DEFAULT NULL COMMENT '来源IP',
    `op_type`            char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin      NULL     DEFAULT NULL COMMENT '操作类型(I-新增, U-修改, D-删除)',
    `tenant_id`          varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin  NULL     DEFAULT '' COMMENT 'Tenant ID',
    `encrypted_data_key` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '' COMMENT '加解密秘钥',
    `publish_type`       varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin   NULL     DEFAULT 'formal' COMMENT '发布类型',
    `gray_name`          varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin   NULL     DEFAULT NULL COMMENT '灰度名称',
    `ext_info`           longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin      NULL COMMENT '扩展信息',
    PRIMARY KEY (`nid`) USING BTREE,
    INDEX `idx_gmt_create` (`gmt_create` ASC) USING BTREE,
    INDEX `idx_gmt_modified` (`gmt_modified` ASC) USING BTREE,
    INDEX `idx_did` (`data_id` ASC) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 8
  CHARACTER SET = utf8mb3
  COLLATE = utf8mb3_bin COMMENT = 'Nacos配置历史表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of his_config_info
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`
(
    `role`     varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci  NOT NULL COMMENT '角色',
    `resource` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '资源',
    `action`   varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci   NOT NULL COMMENT '动作',
    UNIQUE INDEX `uk_role_permission` (`role` ASC, `resource` ASC, `action` ASC) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb3
  COLLATE = utf8mb3_general_ci COMMENT = 'Nacos权限表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permissions
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`
(
    `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
    `role`     varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '角色',
    UNIQUE INDEX `idx_user_role` (`username` ASC, `role` ASC) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb3
  COLLATE = utf8mb3_general_ci COMMENT = 'Nacos角色表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles`
VALUES ('nacos', 'ROLE_ADMIN');

-- ----------------------------
-- Table structure for tenant_capacity
-- ----------------------------
DROP TABLE IF EXISTS `tenant_capacity`;
CREATE TABLE `tenant_capacity`
(
    `id`                bigint UNSIGNED                                        NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `tenant_id`         varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '' COMMENT 'Tenant ID',
    `quota`             int UNSIGNED                                           NOT NULL DEFAULT 0 COMMENT '配额，0表示使用默认值',
    `usage`             int UNSIGNED                                           NOT NULL DEFAULT 0 COMMENT '使用量',
    `max_size`          int UNSIGNED                                           NOT NULL DEFAULT 0 COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
    `max_aggr_count`    int UNSIGNED                                           NOT NULL DEFAULT 0 COMMENT '聚合子配置最大个数',
    `max_aggr_size`     int UNSIGNED                                           NOT NULL DEFAULT 0 COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
    `max_history_count` int UNSIGNED                                           NOT NULL DEFAULT 0 COMMENT '最大变更历史数量',
    `gmt_create`        datetime                                               NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `gmt_modified`      datetime                                               NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `uk_tenant_id` (`tenant_id` ASC) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb3
  COLLATE = utf8mb3_bin COMMENT = 'Nacos租户容量表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tenant_capacity
-- ----------------------------

-- ----------------------------
-- Table structure for tenant_info
-- ----------------------------
DROP TABLE IF EXISTS `tenant_info`;
CREATE TABLE `tenant_info`
(
    `id`            bigint                                                 NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `kp`            varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT 'KP',
    `tenant_id`     varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '' COMMENT 'Tenant ID',
    `tenant_name`   varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '' COMMENT 'Tenant Name',
    `tenant_desc`   varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT 'Tenant Desc',
    `create_source` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin  NULL DEFAULT NULL COMMENT '创建来源',
    `gmt_create`    bigint                                                 NOT NULL COMMENT '创建时间',
    `gmt_modified`  bigint                                                 NOT NULL COMMENT '修改时间',
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `uk_tenant_info_kptenantid` (`kp` ASC, `tenant_id` ASC) USING BTREE,
    INDEX `idx_tenant_id` (`tenant_id` ASC) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb3
  COLLATE = utf8mb3_bin COMMENT = 'Nacos租户表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tenant_info
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`
(
    `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci  NOT NULL COMMENT '用户名',
    `password` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
    `enabled`  tinyint(1)                                                    NOT NULL COMMENT '是否启用',
    PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb3
  COLLATE = utf8mb3_general_ci COMMENT = 'Nacos用户表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users`
VALUES ('nacos', '$2a$10$W6PKgRTzXUp6R/NY853Kn.nRaIcX3whIMTZ/WWkNqo2MTOeSBjKJq', 1);

SET FOREIGN_KEY_CHECKS = 1;
