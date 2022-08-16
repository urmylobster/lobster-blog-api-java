create database lobster_blog default charset utf8mb4;

use lobster_blog;
create table `user` (
                        `id` int not null auto_increment comment '用户编号',
                        `username` varchar(10) not null comment '用户名',
                        `password` varchar(10) not null comment '密码',
                        primary key(`id`)
) engine = innodb default charset=utf8mb4;

INSERT INTO `user` (`id`, `username`, `password`)
VALUES ('1', 'alex', ' 123456');

drop table if exists `posts`;
create table `posts` (
                        `post_id` bigint not null auto_increment comment '文章编号',
                        `post_author` varchar(10) not null comment '作者',
                        `post_content` longtext not null comment '内容',
                        `post_title` varchar(20) not null comment '标题',
                        primary key(`post_id`)
) engine = innodb default charset=utf8mb4;

INSERT INTO `posts` (post_id, `post_author`,`post_title`, `post_content`)
VALUES ('1', 'alex', 'springboot学习', '搭建springboot项目');


INSERT INTO `posts` (`post_author`,`post_title`, `post_content`)
VALUES ('amy', 'ts学习', '搭建ts项目');