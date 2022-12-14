-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema db_dentasti
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_dentasti
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_dentasti` DEFAULT CHARACTER SET utf8 ;
USE `db_dentasti` ;

-- -----------------------------------------------------
-- Table `db_dentasti`.`citas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_dentasti`.`citas` (
  `idcita` INT NOT NULL AUTO_INCREMENT,
  `servicio` VARCHAR(45) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `clinica` VARCHAR(150) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `ciudad` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  `celular` VARCHAR(50) NOT NULL,
  `fecha` DATETIME NOT NULL,
  `doctor` VARCHAR(45) NULL DEFAULT NULL,
  `status` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idcita`))
ENGINE = InnoDB
AUTO_INCREMENT = 19
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `db_dentasti`.`clinicas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_dentasti`.`clinicas` (
  `idclinicas` INT NOT NULL,
  `nombre` VARCHAR(80) NOT NULL,
  PRIMARY KEY (`idclinicas`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `db_dentasti`.`empleados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_dentasti`.`empleados` (
  `idempleados` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `apellidos` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `matricula` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `celular` VARCHAR(20) CHARACTER SET 'utf8' NOT NULL,
  `email` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `ciudad` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `clinica` VARCHAR(150) CHARACTER SET 'utf8' NOT NULL,
  `especialidad` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  PRIMARY KEY (`idempleados`))
ENGINE = InnoDB
AUTO_INCREMENT = 10
DEFAULT CHARACTER SET = armscii8;


-- -----------------------------------------------------
-- Table `db_dentasti`.`especialidades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_dentasti`.`especialidades` (
  `idespecialidad` INT NOT NULL,
  `nombre` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`idespecialidad`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `db_dentasti`.`login`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_dentasti`.`login` (
  `idlogin` INT NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(45) NOT NULL,
  `pass` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idlogin`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `db_dentasti`.`servicios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_dentasti`.`servicios` (
  `idservicios` INT NOT NULL,
  `nombre` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`idservicios`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
