create table `user` (
    `id` bigint unsigned not null AUTO_INCREMENT,
    `name` varchar(255) not null default '' comment '用户名',
    `gender` tinyint(3) not null default '0' comment '用户性别',
    `mobile` varchar(255) not null default '' comment '用户电话',
    `password` varchar(255) not null default '' comment '用户密码',
    `create_time` timestamp null default CURRENT_TIMESTAMP,
    `update_time` timestamp null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    primary key (`id`),
    unique key `idx_mobile_unique` (`mobile`)
) ENGINE=InnoDB default CHARSET=utf8mb4;