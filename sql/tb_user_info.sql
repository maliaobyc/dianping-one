-- hmdp.tb_user_info definition

CREATE TABLE `tb_user_info` (
                                `user_id` bigint unsigned NOT NULL COMMENT '主键，用户id',
                                `city` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '城市名称',
                                `introduce` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '个人介绍，不要超过128个字符',
                                `fans` int unsigned DEFAULT '0' COMMENT '粉丝数量',
                                `followee` int unsigned DEFAULT '0' COMMENT '关注的人的数量',
                                `gender` tinyint unsigned DEFAULT '0' COMMENT '性别，0：男，1：女',
                                `birthday` date DEFAULT NULL COMMENT '生日',
                                `credits` int unsigned DEFAULT '0' COMMENT '积分',
                                `level` tinyint unsigned DEFAULT '0' COMMENT '会员级别，0~9级,0代表未开通会员',
                                `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;