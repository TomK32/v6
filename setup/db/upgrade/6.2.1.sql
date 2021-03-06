CREATE TABLE `CubeCart_newsletter_subscriber_log` (
	`id` int(11) unsigned NOT NULL AUTO_INCREMENT,
	`email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
	`log` text COLLATE utf8_unicode_ci,
	`date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT '',
	PRIMARY KEY (`id`),
	KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci; #EOQ
ALTER TABLE `CubeCart_order_summary` ADD KEY (`custom_oid`); #EOQ
UPDATE `CubeCart_geo_country` SET `status` = 1 WHERE `iso` IN('AR', 'BR', 'CA', 'CN', 'ID', 'IN', 'JP', 'MX', 'TH', 'US') AND `status` = 2; #EOQ
ALTER TABLE `CubeCart_order_summary` DROP INDEX `custom_oid`; #EOQ
ALTER TABLE `CubeCart_order_summary` ADD INDEX (`custom_oid`); #EOQ