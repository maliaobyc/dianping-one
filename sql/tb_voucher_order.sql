-- hmdp.tb_voucher_order definition

CREATE TABLE `tb_voucher_order` (
                                    `id` bigint NOT NULL COMMENT '主键',
                                    `user_id` bigint unsigned NOT NULL COMMENT '下单的用户id',
                                    `voucher_id` bigint unsigned NOT NULL COMMENT '购买的代金券id',
                                    `pay_type` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '支付方式 1：余额支付；2：支付宝；3：微信',
                                    `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '订单状态，1：未支付；2：已支付；3：已核销；4：已取消；5：退款中；6：已退款',
                                    `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '下单时间',
                                    `pay_time` timestamp NULL DEFAULT NULL COMMENT '支付时间',
                                    `use_time` timestamp NULL DEFAULT NULL COMMENT '核销时间',
                                    `refund_time` timestamp NULL DEFAULT NULL COMMENT '退款时间',
                                    `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;