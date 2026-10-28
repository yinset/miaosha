CREATE TABLE seckill_goods (
                               id            BIGINT PRIMARY KEY AUTO_INCREMENT,
                               goods_name    VARCHAR(200) NOT NULL,
                               stock_count   INT NOT NULL COMMENT '库存',
                               seckill_price DECIMAL(10,2) NOT NULL,
                               start_time    DATETIME NOT NULL,
                               end_time      DATETIME NOT NULL
);

CREATE TABLE seckill_order (
                               id         BIGINT PRIMARY KEY AUTO_INCREMENT,
                               user_id    BIGINT NOT NULL,
                               goods_id   BIGINT NOT NULL,
                               order_no   VARCHAR(64) NOT NULL,
                               create_time DATETIME DEFAULT CURRENT_TIMESTAMP
    -- 第一周：不加唯一索引，方便后续模拟超卖和重复下单
);