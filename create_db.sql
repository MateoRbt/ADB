-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Class`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Class` (
  `idClass` INT NOT NULL,
  `ClassName` VARCHAR(255) NULL,
  `ClassDescription` VARCHAR(255) NULL,
  `Semester` INT NULL,
  PRIMARY KEY (`idClass`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Student` (
  `idStudent` INT NOT NULL,
  `Student_Name` VARCHAR(255) NULL,
  `Student_Surname` VARCHAR(255) NULL,
  `Student_Semester` INT NULL,
  PRIMARY KEY (`idStudent`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Student_has_Class`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Student_has_Class` (
  `Student_idStudent` INT NOT NULL,
  `Class_idClass` INT NOT NULL,
  PRIMARY KEY (`Student_idStudent`, `Class_idClass`),
  INDEX `fk_Student_has_Class_Class1_idx` (`Class_idClass` ASC) VISIBLE,
  INDEX `fk_Student_has_Class_Student_idx` (`Student_idStudent` ASC) VISIBLE,
  CONSTRAINT `fk_Student_has_Class_Student`
    FOREIGN KEY (`Student_idStudent`)
    REFERENCES `mydb`.`Student` (`idStudent`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Student_has_Class_Class1`
    FOREIGN KEY (`Class_idClass`)
    REFERENCES `mydb`.`Class` (`idClass`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Professors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Professors` (
  `idProfessors` INT NOT NULL,
  `Professors_Name` VARCHAR(255) NULL,
  `Professors_Surname` VARCHAR(45) NULL,
  PRIMARY KEY (`idProfessors`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Professors_has_Class`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Professors_has_Class` (
  `Professors_idProfessors` INT NOT NULL,
  `Class_idClass` INT NOT NULL,
  PRIMARY KEY (`Professors_idProfessors`, `Class_idClass`),
  INDEX `fk_Professors_has_Class_Class1_idx` (`Class_idClass` ASC) VISIBLE,
  INDEX `fk_Professors_has_Class_Professors1_idx` (`Professors_idProfessors` ASC) VISIBLE,
  CONSTRAINT `fk_Professors_has_Class_Professors1`
    FOREIGN KEY (`Professors_idProfessors`)
    REFERENCES `mydb`.`Professors` (`idProfessors`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Professors_has_Class_Class1`
    FOREIGN KEY (`Class_idClass`)
    REFERENCES `mydb`.`Class` (`idClass`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
