-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Sandbox_Vgudip
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Sandbox_Vgudip` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema new_schema1
-- -----------------------------------------------------
USE `Sandbox_Vgudip` ;

-- -----------------------------------------------------
-- Table `Sandbox_Vgudip`.`celebraties`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sandbox_Vgudip`.`celebraties` (
  `id` INT NOT NULL,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `date_of_birth` DATE NULL,
  `death_date` DATE NULL,
  `movies_list` VARCHAR(45) NULL,
  `birth_place` VARCHAR(45) NULL,
  `awards_won` VARCHAR(150) NULL,
  `jobs` VARCHAR(50) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sandbox_Vgudip`.`user details`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sandbox_Vgudip`.`user details` (
  `id` INT NOT NULL,
  `user_ id` VARCHAR(25) NULL,
  `firstname` VARCHAR(50) NULL,
  `lastname` VARCHAR(45) NULL,
  `email_id` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sandbox_Vgudip`.`tv shows`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sandbox_Vgudip`.`tv shows` (
  `id` INT NOT NULL,
  `title_name` VARCHAR(45) NULL,
  `season_number` INT NULL,
  `episode_number` INT NULL,
  `description` VARCHAR(100) NULL,
  `user_rating` INT NULL,
  `season_start_year` INT NULL,
  `season_end_year` INT NULL,
  `onair_date` DATE NULL,
  `runtime` INT NULL,
  `cast_and_crew` VARCHAR(150) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sandbox_Vgudip`.`movies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sandbox_Vgudip`.`movies` (
  `id` INT NOT NULL,
  `primary_title` VARCHAR(45) NULL,
  `original_title` VARCHAR(45) NULL,
  `year` INT NULL,
  `RUNTIME` INT NULL,
  `IMDB_rating` INT NULL,
  `description` VARCHAR(100) NULL,
  `votes` INT NULL,
  `user_rating` INT NULL,
  `metascore` INT NULL,
  `Cast_and_crew` VARCHAR(150) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sandbox_Vgudip`.`titles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sandbox_Vgudip`.`titles` (
  `id` INT NOT NULL,
  `title_name` VARCHAR(100) NULL,
  `genre` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `language` VARCHAR(45) NULL,
  `year` INT NULL,
  `title_type` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sandbox_Vgudip`.`companies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sandbox_Vgudip`.`companies` (
  `company_id` INT NOT NULL,
  `company_name` VARCHAR(100) NULL,
  `movies_list` VARCHAR(500) NULL,
  PRIMARY KEY (`company_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sandbox_Vgudip`.`keywords`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sandbox_Vgudip`.`keywords` (
  `keywords_id` INT NOT NULL,
  `num_of_titles` INT NULL,
  PRIMARY KEY (`keywords_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sandbox_Vgudip`.`awards`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sandbox_Vgudip`.`awards` (
  `id` INT NOT NULL,
  `award_title` VARCHAR(50) NULL,
  `year` INT NULL,
  `award_catergory` VARCHAR(50) NULL,
  `winners` VARCHAR(150) NULL,
  `voting` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
