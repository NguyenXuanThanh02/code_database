-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Thanhshop
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Thanhshop
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Thanhshop` DEFAULT CHARACTER SET utf8 ;
USE `Thanhshop` ;

-- -----------------------------------------------------
-- Table `Thanhshop`.`Catalogue`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Thanhshop`.`Catalogue` (
  `cateID` INT NOT NULL,
  `cateName` VARCHAR(45) NOT NULL,
  `cateDetail` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cateID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Thanhshop`.`Supplier`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Thanhshop`.`Supplier` (
  `suppID` INT NOT NULL,
  `suppName` VARCHAR(45) NOT NULL,
  `suppPhone` CHAR(10) NOT NULL,
  `suppEmail` VARCHAR(45) NOT NULL,
  `suppAddress` VARCHAR(45) NOT NULL,
  `suppPopulariity` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`suppID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Thanhshop`.`Product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Thanhshop`.`Product` (
  `productID` INT NOT NULL,
  `productName` VARCHAR(45) NOT NULL,
  `productPrice` DECIMAL(9,2) NOT NULL,
  `productDetail` VARCHAR(45) NOT NULL,
  `productWarranty` VARCHAR(45) NOT NULL,
  `productinStorage` VARCHAR(45) NOT NULL,
  `Catalogue_cateID` INT NOT NULL,
  `Supplier_suppID` INT NOT NULL,
  PRIMARY KEY (`productID`),
  INDEX `fk_Product_Catalogue1_idx` (`Catalogue_cateID` ASC) VISIBLE,
  INDEX `fk_Product_Supplier1_idx` (`Supplier_suppID` ASC) VISIBLE,
  CONSTRAINT `fk_Product_Catalogue1`
    FOREIGN KEY (`Catalogue_cateID`)
    REFERENCES `Thanhshop`.`Catalogue` (`cateID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Product_Supplier1`
    FOREIGN KEY (`Supplier_suppID`)
    REFERENCES `Thanhshop`.`Supplier` (`suppID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Thanhshop`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Thanhshop`.`Customer` (
  `cusID` INT NOT NULL,
  `cusName` VARCHAR(45) NOT NULL,
  `cusPhone` VARCHAR(45) NOT NULL,
  `cusEmail` VARCHAR(45) NOT NULL,
  `cusAddress` VARCHAR(45) NOT NULL,
  `cusMembership` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cusID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Thanhshop`.`Staff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Thanhshop`.`Staff` (
  `staffID` INT NOT NULL,
  `staffName` VARCHAR(45) NOT NULL,
  `staffPhone` VARCHAR(45) NOT NULL,
  `staffEmail` VARCHAR(45) NOT NULL,
  `staffAddress` VARCHAR(45) NOT NULL,
  `staffShift` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`staffID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Thanhshop`.`Orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Thanhshop`.`Orders` (
  `orderID` INT NOT NULL,
  `Product_productID` INT NOT NULL,
  `orderDate` DATE NOT NULL,
  `orderPrice` DECIMAL(9,2) NOT NULL,
  `productQuantity` VARCHAR(45) NOT NULL,
  `Customer_cusID` INT NOT NULL,
  `Staff_staffID` INT NOT NULL,
  PRIMARY KEY (`orderID`),
  INDEX `fk_Orders_Product1_idx` (`Product_productID` ASC) VISIBLE,
  INDEX `fk_Orders_Customer1_idx` (`Customer_cusID` ASC) VISIBLE,
  INDEX `fk_Orders_Staff1_idx` (`Staff_staffID` ASC) VISIBLE,
  CONSTRAINT `fk_Orders_Product1`
    FOREIGN KEY (`Product_productID`)
    REFERENCES `Thanhshop`.`Product` (`productID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Orders_Customer1`
    FOREIGN KEY (`Customer_cusID`)
    REFERENCES `Thanhshop`.`Customer` (`cusID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Orders_Staff1`
    FOREIGN KEY (`Staff_staffID`)
    REFERENCES `Thanhshop`.`Staff` (`staffID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;






