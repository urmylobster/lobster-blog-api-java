create database lobster_blog default charset utf8;

use lobster_blog;
create table `user` (
                        `id` int not null auto_increment,
                        `username` varchar(10) not null,
                        `password` varchar(10) not null,
                        primary key(`id`)
) engine = innodb default charset=utf8;

INSERT INTO `user` (`id`, `username`, `password`)
VALUES ('1', 'alex', ' 123456');