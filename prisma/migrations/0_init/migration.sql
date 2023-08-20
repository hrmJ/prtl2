-- CreateTable
CREATE TABLE `backgrounds` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `filename` VARCHAR(200) NULL,
    `description` VARCHAR(999) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `biblesegments` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `start_book` VARCHAR(100) NULL,
    `start_chap` INTEGER NULL,
    `start_verse` INTEGER NULL,
    `end_book` VARCHAR(100) NULL,
    `end_chap` INTEGER NULL,
    `end_verse` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `collected_offerings` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `target_id` INTEGER UNSIGNED NOT NULL,
    `service_id` INTEGER UNSIGNED NOT NULL,
    `amount` DECIMAL(60, 2) NULL DEFAULT 0.00,

    INDEX `service_index`(`service_id`),
    INDEX `target_index`(`target_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `comments` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `service_id` INTEGER UNSIGNED NOT NULL,
    `reply_to` INTEGER NULL,
    `content` TEXT NULL,
    `commentator` VARCHAR(100) NULL,
    `theme` VARCHAR(100) NULL,
    `comment_time` DATETIME(0) NULL,

    INDEX `service_index`(`service_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `events` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(300) NULL,
    `place_and_time` VARCHAR(300) NULL,
    `description` VARCHAR(5000) NULL,
    `event_date` DATE NULL,
    `has_songs` BOOLEAN NULL DEFAULT false,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `headers` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `template_name` VARCHAR(100) NULL,
    `maintext` VARCHAR(9999) NULL,
    `imgname` VARCHAR(300) NULL,
    `imgposition` VARCHAR(300) NULL,
    `is_aside` BOOLEAN NULL DEFAULT false,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `infos` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `service_id` INTEGER UNSIGNED NOT NULL,
    `slot_name` VARCHAR(300) NULL,
    `content_id` INTEGER UNSIGNED NOT NULL,
    `addedclass` VARCHAR(300) NULL DEFAULT '.Infodia',
    `header_id` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `infosegments` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `maintext` VARCHAR(9999) NULL,
    `header` VARCHAR(300) NULL,
    `genheader` VARCHAR(300) NULL,
    `subgenheader` VARCHAR(300) NULL,
    `imgname` VARCHAR(300) NULL,
    `imgposition` VARCHAR(300) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `liturgicalsegments` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `text_title` VARCHAR(9999) NULL,
    `use_as_header` BOOLEAN NULL DEFAULT false,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ltextdata` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(300) NULL,

    UNIQUE INDEX `title`(`title`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ltextversedata` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `ltext_id` INTEGER UNSIGNED NOT NULL,
    `verse` VARCHAR(999) NULL,

    INDEX `ltext_index`(`ltext_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `offering_goals` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `target_id` INTEGER UNSIGNED NOT NULL,
    `name` VARCHAR(100) NULL,
    `description` VARCHAR(9999) NULL,
    `amount` DECIMAL(60, 2) NULL DEFAULT 0.00,
    `is_default` BOOLEAN NULL DEFAULT false,

    INDEX `target_index`(`target_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `offering_targets` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) NULL,
    `description` VARCHAR(9999) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `presentation_content` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `slot_id` INTEGER UNSIGNED NOT NULL,
    `content_type` VARCHAR(100) NULL,
    `new_slide` VARCHAR(100) NULL,
    `content` TEXT NULL,

    INDEX `service_index`(`slot_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `presentation_structure` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `service_id` INTEGER NULL,
    `slot_name` VARCHAR(300) NULL,
    `slot_number` INTEGER NULL,
    `slot_type` VARCHAR(300) NULL,
    `id_in_type_table` VARCHAR(300) NULL,
    `addedclass` VARCHAR(300) NULL,
    `header_id` INTEGER NULL,
    `content_id` INTEGER UNSIGNED NOT NULL,
    `instruction` TEXT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `responsibilities` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `service_id` INTEGER UNSIGNED NOT NULL,
    `responsibility` VARCHAR(100) NULL,
    `responsible` VARCHAR(100) NULL,

    INDEX `service_index`(`service_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `responsibilities_meta` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `responsibility` VARCHAR(100) NULL,
    `description` VARCHAR(100) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `seasons` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `startdate` DATE NULL,
    `enddate` DATE NULL,
    `theme` VARCHAR(100) NULL,
    `comments` TEXT NULL,
    `name` VARCHAR(100) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `service_specific_presentation_structure` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `service_id` INTEGER UNSIGNED NOT NULL,
    `slot_name` VARCHAR(300) NULL,
    `slot_number` INTEGER NULL,
    `slot_type` VARCHAR(300) NULL,
    `id_in_type_table` VARCHAR(300) NULL,
    `content_id` INTEGER UNSIGNED NOT NULL,
    `addedclass` VARCHAR(300) NULL,
    `header_id` INTEGER NULL,
    `instruction` TEXT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `services` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `servicedate` DATE NULL,
    `theme` VARCHAR(200) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `servicesongs` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `service_id` INTEGER UNSIGNED NOT NULL,
    `song_title` VARCHAR(200) NULL DEFAULT '',
    `verses` VARCHAR(200) NULL DEFAULT '',
    `is_instrumental` VARCHAR(10) NULL DEFAULT 'no',
    `song_id` INTEGER NULL,
    `songtype` VARCHAR(100) NOT NULL,
    `position` INTEGER NULL,

    INDEX `service_index`(`service_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `serviceverses` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `service_id` INTEGER UNSIGNED NOT NULL,
    `segment_name` VARCHAR(200) NULL DEFAULT '',
    `testament` VARCHAR(200) NULL DEFAULT '',
    `startbook` VARCHAR(200) NULL DEFAULT '',
    `endbook` VARCHAR(200) NULL DEFAULT '',
    `startchapter` INTEGER NULL,
    `endchapter` INTEGER NULL,
    `startverse` INTEGER NULL,
    `endverse` INTEGER NULL,

    INDEX `service_index`(`service_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `smallgroups` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) NULL,
    `description` VARCHAR(9999) NULL,
    `resp_name` VARCHAR(100) NULL,
    `day` VARCHAR(100) NULL,
    `time_and_place` VARCHAR(400) NULL,
    `is_active` BOOLEAN NULL DEFAULT false,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `songdata` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(300) NULL,
    `composer` VARCHAR(300) NULL,
    `lyrics` VARCHAR(300) NULL,
    `version_description` VARCHAR(300) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `songsegments` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `songdescription` TEXT NULL,
    `restrictedto` TEXT NULL,
    `singlename` VARCHAR(100) NULL,
    `is_multi` BOOLEAN NULL DEFAULT false,
    `segment_name_is_title` BOOLEAN NULL DEFAULT false,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `songtags` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `song_id` INTEGER UNSIGNED NOT NULL,
    `tag` VARCHAR(200) NULL DEFAULT '',

    INDEX `song_index`(`song_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `styles` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `classname` VARCHAR(200) NULL,
    `tagname` VARCHAR(200) NULL,
    `attr` VARCHAR(200) NULL,
    `value` VARCHAR(200) NULL,
    `stylesheet` VARCHAR(200) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `users` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(20) NULL,
    `password` CHAR(32) NULL,

    UNIQUE INDEX `username`(`username`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `versedata` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `song_id` INTEGER UNSIGNED NOT NULL,
    `verse` VARCHAR(999) NULL,
    `versetype` VARCHAR(99) NULL DEFAULT 'verse',

    INDEX `song_index`(`song_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `collected_offerings` ADD CONSTRAINT `collected_offerings_ibfk_1` FOREIGN KEY (`target_id`) REFERENCES `offering_goals`(`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `collected_offerings` ADD CONSTRAINT `collected_offerings_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services`(`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `comments` ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services`(`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `ltextversedata` ADD CONSTRAINT `ltextversedata_ibfk_1` FOREIGN KEY (`ltext_id`) REFERENCES `ltextdata`(`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `offering_goals` ADD CONSTRAINT `offering_goals_ibfk_1` FOREIGN KEY (`target_id`) REFERENCES `offering_targets`(`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `presentation_content` ADD CONSTRAINT `presentation_content_ibfk_1` FOREIGN KEY (`slot_id`) REFERENCES `presentation_structure`(`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `responsibilities` ADD CONSTRAINT `vastuut_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services`(`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `servicesongs` ADD CONSTRAINT `servicesongs_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services`(`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `serviceverses` ADD CONSTRAINT `serviceverses_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services`(`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `songtags` ADD CONSTRAINT `songtags_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `songdata`(`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `versedata` ADD CONSTRAINT `versedata_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `songdata`(`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

