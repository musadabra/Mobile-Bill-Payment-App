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

/* Complain_on linking transactions and complains*/
CREATE TABLE `complain_on` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`transaction_id` INT(11) NOT NULL,
	KEY `transactoin_id_fk` (`transaction_id`) USING BTREE,
	PRIMARY KEY (`id`)
);

/* Vendor table */
CREATE TABLE `vendor` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(100),
	`email` VARCHAR(100),
	`category` VARCHAR(100),
	PRIMARY KEY (`id`)
);

/* Transaction_of Linking transaction with vendor*/
CREATE TABLE `transaction_of` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`vendor_id` INT(11) NOT NULL,
	`transaction_id` INT(11) NOT NULL,
	KEY `vendor_fk` (`vendor_id`) USING BTREE,
KEY `transaction_fk` (`transaction_id`) USING BTREE,
	PRIMARY KEY (`id`)
);

/* Offers table */
CREATE TABLE `offers` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`vendor_id` INT(11) NOT NULL,
	`title` VARCHAR(1000),
	`description` VARCHAR(10000),
	KEY `vendor_fk` (`vendor_id`) USING BTREE,
	PRIMARY KEY (`id`)
);

/* Populating db table */
INSERT INTO `roles` (`name`) VALUES ('USER');
INSERT INTO `roles` (`name`) VALUES ('VENDOR');
INSERT INTO `roles` (`name`) VALUES ('ADMIN');

/* ADD user details to User table*/
INSERT INTO `users` (`username`, `email`, `password`, `enabled`,`mobile`) VALUES ('musa', 'musadabra@gmail.com', '$2a$10$cTUErxQqYVyU2qmQGIktpup5chLEdhD2zpzNEyYqmxrHHJbSNDOG.', '1', '07062551772');
INSERT INTO `users` (`username`, `email`, `password`, `enabled`,`mobile`) VALUES ('laykan', 'musadabra20@gmail.com', '$2a$10$.tP2OH3dEG0zms7vek4ated5AiQ.EGkncii0OpCcGq4bckS9NOULu', '1', '07052551779');
INSERT INTO `users` (`username`, `email`, `password`, `enabled`,`mobile`) VALUES ('hassan', 'musadabra21@gmail.com', '$2a$10$E2UPv7arXmp3q0LzVzCBNeb4B4AtbTAGjkefVDnSztOwE7Gix6kea', '1','');
INSERT INTO `users` (`username`, `email`, `password`, `enabled`,`mobile`) VALUES ('dabra', 'musadabra22@gmail.com', '$2a$10$GQT8bfLMaLYwlyUysnGwDu6HMB5G.tin5MKT/uduv2Nez0.DmhnOq', '1','');
INSERT INTO `users` (`username`, `email`, `password`, `enabled`,`mobile`) VALUES ('admin', 'musadabra23@gmail.com', '$2a$10$IqTJTjn39IU5.7sSCDQxzu3xug6z/LPU6IF0azE/8CkHCwYEnwBX.', '1','');

