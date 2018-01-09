CREATE TABLE IF NOT EXISTS `movies` (
	`id_movie` INT(10) NOT NULL AUTO_INCREMENT, 
	`name` VARCHAR(255) NOT NULL,
	`year` SMALLINT(4) NOT NULL, 
	`id_director` VARCHAR(255) NOT NULL,
	`rating` DECIMAL(4,3) NOT NULL,
	`time` SMALLINT(3) NOT NULL,
	`country` VARCHAR(255) NOT NULL, 
	PRIMARY KEY (`id_movie`), 
	UNIQUE (`name`)
);

CREATE TABLE IF NOT EXISTS `genres` (
	`id_genre` INT(10) NOT NULL  AUTO_INCREMENT,
	`genre` VARCHAR(255) NOT NULL, 
	PRIMARY KEY (`id_genre`)
);

CREATE TABLE IF NOT EXISTS `genres_movies` (
	`id_movie` INT(10) NOT NULL, 
	`id_genre` INT(10) NOT NULL,
	PRIMARY KEY (`id_movie`,`id_genre`),
	KEY `id_movie` (`id_movie`), 
	KEY `id_genre` (`id_genre`) 
);

CREATE TABLE IF NOT EXISTS `cast` (
	`id_cast` INT(10) NOT NULL  AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL, 
	PRIMARY KEY (`id_cast`)
);

CREATE TABLE IF NOT EXISTS `genres_cast` (
	`id_movie` INT(10) NOT NULL, 
	`id_cast` INT(10) NOT NULL,
	PRIMARY KEY (`id_movie`,`id_cast`),
	KEY `id_movie` (`id_movie`), 
	KEY `id_cast` (`id_cast`) 
);

CREATE TABLE IF NOT EXISTS `director` (
	`id_director` INT(10) NOT NULL  AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL, 
	PRIMARY KEY (`id_director`)
);

CREATE VIEW  `info_movie` AS
SELECT
`m`.`id_movie` as `id`,
`m`.`name`, 
`m`.`year`, 
`d`.`name` as `name_director`,
GROUP_CONCAT(DISTINCT(`g`.`genre`)) as `genres_movie`,
GROUP_CONCAT(DISTINCT(`c`.`name`)) as `cast_movie`,
`m`.`country`
FROM `movies` `m`
JOIN `movies_cast` `mc` ON `m`.`id_movie`=`mc`.`id_movie`
JOIN `cast` `c`ON `c`.`id_cast` = `mc`.`id_cast`
JOIN `genres_movies` `gm` ON `m`.`id_movie`=`gm`.`id_movie` 
JOIN `genres` `g` ON `g`.`id_genre`=`gm`.`id_genre` 
JOIN `director` `d` ON `m`.`id_director`=`d`.`id_director`
GROUP BY  `m`.`id_movie`;

CREATE VIEW  `info_time` AS
SELECT
`m`.`time`,
`m`.`name`, 
`m`.`year`, 
`d`.`name` as `name_director`,
GROUP_CONCAT(DISTINCT(`g`.`genre`)) as `genres_movie`,
GROUP_CONCAT(DISTINCT(`c`.`name`)) as `cast_movie`
FROM `movies` `m`
JOIN `movies_cast` `mc` ON `m`.`id_movie`=`mc`.`id_movie`
JOIN `cast` `c`ON `c`.`id_cast` = `mc`.`id_cast`
JOIN `genres_movies` `gm` ON `m`.`id_movie`=`gm`.`id_movie` 
JOIN `genres` `g` ON `g`.`id_genre`=`gm`.`id_genre` 
JOIN `director` `d` ON `m`.`id_director`=`d`.`id_director`
GROUP BY  `m`.`time`;

CREATE VIEW  `info_genres` AS
SELECT
`g`.`id_genre`,
GROUP_CONCAT(DISTINCT(`g`.`genre`)) as `genres_movie`,
GROUP_CONCAT(DISTINCT(`m`.`name`)) as `movie`
FROM `movies` `m`
JOIN `genres_movies` `gm` ON `m`.`id_movie`=`gm`.`id_movie` 
JOIN `genres` `g` ON `g`.`id_genre`=`gm`.`id_genre` 
GROUP BY  `g`.`id_genre`;

CREATE VIEW  `info_rating` AS
SELECT
`m`.`rating`,
`m`.`name`,
`m`.`year`, 
`d`.`name` as `name_director`,
GROUP_CONCAT(DISTINCT(`g`.`genre`)) as `genres_movie`,
GROUP_CONCAT(DISTINCT(`c`.`name`)) as `cast_movie`
FROM `movies` `m`
JOIN `movies_cast` `mc` ON `m`.`id_movie`=`mc`.`id_movie`
JOIN `cast` `c`ON `c`.`id_cast` = `mc`.`id_cast`
JOIN `genres_movies` `gm` ON `m`.`id_movie`=`gm`.`id_movie` 
JOIN `genres` `g` ON `g`.`id_genre`=`gm`.`id_genre` 
JOIN `director` `d` ON `m`.`id_director`=`d`.`id_director`
GROUP BY  `m`.`rating` DESC;

CREATE VIEW  `info_year` AS
SELECT
`m`.`year`,
`m`.`name`,
`d`.`name` as `name_director`,
GROUP_CONCAT(DISTINCT(`g`.`genre`)) as `genres_movie`,
GROUP_CONCAT(DISTINCT(`c`.`name`)) as `cast_movie`
FROM `movies` `m`
JOIN `movies_cast` `mc` ON `m`.`id_movie`=`mc`.`id_movie`
JOIN `cast` `c`ON `c`.`id_cast` = `mc`.`id_cast`
JOIN `genres_movies` `gm` ON `m`.`id_movie`=`gm`.`id_movie` 
JOIN `genres` `g` ON `g`.`id_genre`=`gm`.`id_genre` 
JOIN `director` `d` ON `m`.`id_director`=`d`.`id_director`
GROUP BY  `m`.`year` DESC;