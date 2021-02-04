CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `enabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
);
 
CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`role_id`)
);
 
CREATE TABLE `users_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  KEY `user_fk_idx` (`user_id`),
  KEY `role_fk_idx` (`role_id`),
  CONSTRAINT `role_fk` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`),
  CONSTRAINT `user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
);

/* Transactions table */
CREATE TABLE `transactions` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`amount` DOUBLE unsigned,
	`date` DATE,
	`time` TIME,
	`status` VARCHAR(30) DEFAULT NULL,
	`user_id` INT(11) DEFAULT NULL,
	KEY `user_fk` (`user_id`) USING BTREE,
	PRIMARY KEY (`id`)
);

/* user complain */
CREATE TABLE `complain` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`date` DATE,
	`time` TIME,
	`status` VARCHAR(30) DEFAULT NULL,
	`user_id` INT(11) DEFAULT NULL,
	`title` VARCHAR(200),
	`description` VARCHAR(10000),
	KEY `user_fk` (`user_id`) USING BTREE,
	PRIMARY KEY (`id`)
);

