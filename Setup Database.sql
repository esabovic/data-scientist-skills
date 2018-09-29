-- Create DATA 607 Skills of a Data Scientist Project Database

-- Step 1: Create the new database

DROP DATABASE IF EXISTS `DATA607`;

CREATE DATABASE `DATA607` DEFAULT CHARACTER SET utf8 ;

-- Step 2: Create the tables

-- Locations

DROP TABLE IF EXISTS `DATA607`.`LOCATIONS`;

CREATE TABLE `DATA607`.`LOCATIONS` (
    `id` VARCHAR(255) NOT NULL,
    `full_name` VARCHAR(255) NOT NULL,
    `short_name` VARCHAR(255) NOT NULL,
    `population` DOUBLE,
    `latitude` DOUBLE,
    `longitude` DOUBLE,
    PRIMARY KEY (`id`)
);

-- Indeed Raw HTML

--DROP TABLE IF EXISTS `DATA607`.`INDEED_RAW_HTML`;

--CREATE TABLE `DATA607`.`INDEED_RAW_HTML` (
--    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
--    `LOCATIONS_id` VARCHAR(255) NOT NULL,
--    `url` VARCHAR(255) NOT NULL,
--    `html` MEDIUMTEXT NOT NULL,
--    `created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
--    PRIMARY KEY (`id`),
--    FOREIGN KEY (`LOCATIONS_id`) REFERENCES LOCATIONS(`id`)
--);

-- Dice URLs to Scrape

DROP TABLE IF EXISTS `DATA607`.`DICE_URLS`;

CREATE TABLE `DATA607`.`DICE_URLS` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `LOCATIONS_id` VARCHAR(255) NOT NULL,
    `url` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`LOCATIONS_id`) REFERENCES LOCATIONS(`id`)
);

-- Dice Salary Predictions

DROP TABLE IF EXISTS `DATA607`.`DICE_SALARY`;

CREATE TABLE `DATA607`.`DICE_SALARY` (
    `LOCATIONS_id` VARCHAR(255) NOT NULL,
    `salary` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`LOCATIONS_id`),
    FOREIGN KEY (`LOCATIONS_id`) REFERENCES LOCATIONS(`id`)
);

-- Dice Raw HTML

DROP TABLE IF EXISTS `DATA607`.`DICE_RAW_HTML`;

CREATE TABLE `DATA607`.`DICE_RAW_HTML` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `LOCATIONS_id` VARCHAR(255) NOT NULL,
    `url` VARCHAR(255) NOT NULL,
    `html` MEDIUMTEXT NOT NULL,
    `created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`LOCATIONS_id`) REFERENCES LOCATIONS(`id`)
);
