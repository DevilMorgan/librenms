ALTER TABLE `devices` CHANGE `device_id` `device_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `device_groups` CHANGE `id` `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT;
CREATE TABLE `device_group_device` (
  `device_group_id` int(10) unsigned NOT NULL,
  `device_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`device_group_id`,`device_id`),
  KEY `device_group_device_device_group_id_index` (`device_group_id`),
  KEY `device_group_device_device_id_index` (`device_id`),
  CONSTRAINT `device_group_device_device_group_id_foreign` FOREIGN KEY (`device_group_id`) REFERENCES `device_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `device_group_device_device_id_foreign` FOREIGN KEY (`device_id`) REFERENCES `devices` (`device_id`) ON DELETE CASCADE
);
