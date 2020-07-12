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



-- -----------------------------------------------------
-- Data for table `finelia`.`student`
-- -----------------------------------------------------


INSERT INTO `finelia`.`student` (`idStudent`, `firstName`, `lastName`) VALUES (1, 'Manny', 'Pritchetts');
INSERT INTO `finelia`.`student` (`idStudent`, `firstName`, `lastName`) VALUES (2, 'Tom','Elvis');
INSERT INTO `finelia`.`student` (`idStudent`, `firstName`, `lastName`) VALUES (3, 'Frank', 'Underwood');
INSERT INTO `finelia`.`student` (`idStudent`, `firstName`, `lastName`) VALUES (4, 'Cole', 'Turner');
INSERT INTO `finelia`.`student` (`idStudent`, `firstName`, `lastName`) VALUES (5, 'Sabrina', 'Spellman');
INSERT INTO `finelia`.`student` (`idStudent`, `firstName`, `lastName`) VALUES (6, 'Rachel','Green');
INSERT INTO `finelia`.`student` (`idStudent`, `firstName`, `lastName`) VALUES (7, 'Ned', 'Flanders');
INSERT INTO `finelia`.`student` (`idStudent`, `firstName`, `lastName`) VALUES (8, 'Samantha', 'Jones');
INSERT INTO `finelia`.`student` (`idStudent`, `firstName`, `lastName`) VALUES (9, 'Barack','Obama');
INSERT INTO `finelia`.`student` (`idStudent`, `firstName`, `lastName`) VALUES (10, 'Robyn', 'Fenty');
INSERT INTO `finelia`.`student` (`idStudent`, `firstName`, `lastName`) VALUES (11, 'William', 'Nzobazola');
INSERT INTO `finelia`.`student` (`idStudent`, `firstName`, `lastName`) VALUES (12, 'Aubrey','Graham');

-- -----------------------------------------------------
-- Data for table `finelia`.`subject`
-- -----------------------------------------------------
INSERT INTO `finelia`.`subject` (`idSubject`, `title`) VALUES (1, 'Réseau');
INSERT INTO `finelia`.`subject` (`idSubject`, `title`) VALUES (2, 'Langage C');
INSERT INTO `finelia`.`subject` (`idSubject`, `title`) VALUES (3, 'PHP');




-- -----------------------------------------------------
-- Data for table `finelia`.`mark`
-- -----------------------------------------------------
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (1, 15, 2, 1, 1);
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (2, 9, 4, 1, 2);
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (3, 1, 3, 2, 2);
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (4, 16, 1, 2, 3);
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (5, 1, 2, 3, 1);
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (6, 15, 2, 3, 2);
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (7, 9, 4, 4, 1);
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (8, 12, 3, 4, 1);
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (9, 16, 1, 5, 3);
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (10, 11, 2, 5, 3);

INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (11, 19, 2, 6, 1);
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (12, 12, 4, 6, 2);
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (13, 8, 3, 7, 2);
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (14, 6, 1, 6, 3);
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (15, 17, 2, 8, 1);
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (16, 1, 2, 8, 2);
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (17, 9, 4, 9, 1);
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (18, 11, 3, 9, 1);
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (19, 16, 1, 10, 3);
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (20, 11, 2, 10, 3);

INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (21, 15, 2, 11, 1);
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (22, 9, 4, 11, 2);
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (23, 1, 3, 11, 3);
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (24, 16, 1, 12, 2);
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (25, 1, 2, 12, 1);
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (26, 15, 2, 12, 3);
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (27, 9, 4, 4, 3);
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (28, 12, 3, 5, 3);
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (29, 16, 1, 2, 3);
INSERT INTO `finelia`.`mark` (`idMark`, `mark`, `coefficient`, `student`, `subject`) VALUES (30, 11, 2, 1, 3);
