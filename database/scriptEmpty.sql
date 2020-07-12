SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DROP SCHEMA IF EXISTS `finelia` ;


-- -----------------------------------------------------
-- Schema finelia
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `finelia` ;
USE `finelia` ;


-- -----------------------------------------------------
-- Table `myFinelia`.`student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `finelia`.`student` (
  `idStudent` INT AUTO_INCREMENT,
  `firstName` VARCHAR(50) NOT NULL,
  `lastName` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`idStudent`));


-- -----------------------------------------------------
-- Table `finelia`.`subject`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `finelia`.`subject` (
  `idSubject` INT AUTO_INCREMENT,
  `title` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`idSubject`));


-- -----------------------------------------------------
-- Table `finelia`.`mark`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `finelia`.`mark` (
  `idMark` INT AUTO_INCREMENT,
  `mark` FLOAT NOT NULL,
  `coefficient` INT,
  `student` INT,
  `subject` INT,
  PRIMARY KEY (`idMark`),
  INDEX `mark_student_fk` (`student` ASC),
  INDEX `mark_subject_fk` (`subject` ASC),
  CONSTRAINT `mark_student_fk`
    FOREIGN KEY (`student`)
    REFERENCES `finelia`.`student` (`idStudent`)
    ON DELETE CASCADE,
  CONSTRAINT `mark_subject_fk`
    FOREIGN KEY (`subject`)
    REFERENCES `finelia`.`subject` (`idSubject`)
    ON DELETE CASCADE);


