-- MySQL Script generated by MySQL Workbench
-- 10/07/17 16:37:22
-- Model: gg_database    Version: 4.03
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema DB3087534
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema DB3087534
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DB3087534` DEFAULT CHARACTER SET utf8 ;
USE `DB3087534` ;

-- -----------------------------------------------------
-- Table `DB3087534`.`gg_User`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DB3087534`.`gg_User` ;

CREATE TABLE IF NOT EXISTS `DB3087534`.`gg_User` (
  `User_ID` INT NOT NULL AUTO_INCREMENT,
  `Created` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `Login_Name` VARCHAR(45) NOT NULL,
  `Pwd_Hash` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(255) NOT NULL,
  `Phone` VARCHAR(255) NULL,
  `LastName` VARCHAR(255) NULL,
  `FirstName` VARCHAR(255) NULL,
  `Street` VARCHAR(255) NULL,
  `Zip_Code` VARCHAR(255) NOT NULL,
  `City` VARCHAR(255) NULL,
  `Picture` VARCHAR(255) NULL,
  `Visibility_Flags` VARCHAR(255) NULL DEFAULT 'EMAIL:0-FON:0-NAME:0-ADRESS:0-PICTURE:0',
  UNIQUE INDEX `Login_Name_UNIQUE` (`Login_Name` ASC),
  INDEX `Login_Name_IND` (`Login_Name` ASC),
  INDEX `Email_IND` (`Email` ASC),
  INDEX `Zip_Code_IND` (`Zip_Code` ASC),
  UNIQUE INDEX `Email_UNIQUE` (`Email` ASC),
  PRIMARY KEY (`User_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB3087534`.`gg_Offer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DB3087534`.`gg_Offer` ;

CREATE TABLE IF NOT EXISTS `DB3087534`.`gg_Offer` (
  `Offer_ID` INT NOT NULL AUTO_INCREMENT,
  `User_ID` INT NOT NULL,
  `Present_ID` INT NOT NULL,
  PRIMARY KEY (`Offer_ID`),
  INDEX `User_IND` (`User_ID` ASC),
  INDEX `Present_IND` (`Present_ID` ASC),
  CONSTRAINT `FK_USER_OFFER`
    FOREIGN KEY (`User_ID`)
    REFERENCES `DB3087534`.`gg_User` (`User_ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_OFFER_DELETE`
    FOREIGN KEY (`Present_ID`)
    REFERENCES `DB3087534`.`gg_Present` (`Present_ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB3087534`.`gg_Demand`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DB3087534`.`gg_Demand` ;

CREATE TABLE IF NOT EXISTS `DB3087534`.`gg_Demand` (
  `Demand_ID` INT NOT NULL AUTO_INCREMENT,
  `User_ID` INT NOT NULL,
  `Present_ID` INT NOT NULL,
  PRIMARY KEY (`Demand_ID`),
  INDEX `User_IND` (`User_ID` ASC),
  INDEX `Present_IND` (`Present_ID` ASC),
  CONSTRAINT `FK_USER_DEMAND`
    FOREIGN KEY (`User_ID`)
    REFERENCES `DB3087534`.`gg_User` (`User_ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_DEMAND_DELETE`
    FOREIGN KEY (`Present_ID`)
    REFERENCES `DB3087534`.`gg_Present` (`Present_ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB3087534`.`gg_Present`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DB3087534`.`gg_Present` ;

CREATE TABLE IF NOT EXISTS `DB3087534`.`gg_Present` (
  `Present_ID` INT NOT NULL AUTO_INCREMENT,
  `Owner_ID` INT NOT NULL,
  `Created` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `Title` VARCHAR(100) NOT NULL,
  `Description` VARCHAR(32000) NOT NULL,
  `State` VARCHAR(255) NOT NULL DEFAULT 'Vorhanden' COMMENT 'GENAUGENOMMEN ÜBERFLÜSSIG\n\nDefault: \'Vorhanden\'\nbei insert gg_Interest \'Interessent\'\nbei delete gg_Interest \'Vorhanden\'',
  `Expiry` DATETIME NULL COMMENT 'Available until',
  `Picture` VARCHAR(255) NULL,
  FULLTEXT INDEX `Description_TXT` (`Description` ASC),
  INDEX `Title_IND` (`Title` ASC),
  INDEX `Available_until_IND` (`Expiry` ASC),
  INDEX `State_IND` (`State` ASC),
  FULLTEXT INDEX `Title_TXT` (`Title` ASC),
  INDEX `Owner_IND` (`Owner_ID` ASC),
  PRIMARY KEY (`Present_ID`, `Owner_ID`),
  CONSTRAINT `FK_OWNER_PRESENT`
    FOREIGN KEY (`Owner_ID`)
    REFERENCES `DB3087534`.`gg_User` (`User_ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_OFFER_PRESENT`
    FOREIGN KEY (`Present_ID`)
    REFERENCES `DB3087534`.`gg_Offer` (`Present_ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_DEMAND_PRESENT`
    FOREIGN KEY (`Present_ID`)
    REFERENCES `DB3087534`.`gg_Demand` (`Present_ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB3087534`.`gg_Tag`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DB3087534`.`gg_Tag` ;

CREATE TABLE IF NOT EXISTS `DB3087534`.`gg_Tag` (
  `Tag_ID` INT NOT NULL AUTO_INCREMENT,
  `Tag` VARCHAR(255) NOT NULL,
  INDEX `Tag_ID_IND` (`Tag_ID` ASC),
  FULLTEXT INDEX `Tag_TXT` (`Tag` ASC),
  PRIMARY KEY (`Tag_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB3087534`.`gg_Present_has_Tags`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DB3087534`.`gg_Present_has_Tags` ;

CREATE TABLE IF NOT EXISTS `DB3087534`.`gg_Present_has_Tags` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Present_ID` INT NOT NULL,
  `Tag_ID` INT NOT NULL,
  INDEX `Tag_IND` (`Tag_ID` ASC),
  INDEX `Present_IND` (`Present_ID` ASC),
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `Present_Tag_UNIQUE` (`Present_ID` ASC, `Tag_ID` ASC),
  CONSTRAINT `FK_PRESENT_TAGS`
    FOREIGN KEY (`Present_ID`)
    REFERENCES `DB3087534`.`gg_Present` (`Present_ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB3087534`.`gg_Interest`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DB3087534`.`gg_Interest` ;

CREATE TABLE IF NOT EXISTS `DB3087534`.`gg_Interest` (
  `Interest_ID` INT NOT NULL AUTO_INCREMENT,
  `User_ID` INT NOT NULL,
  `Present_ID` INT NULL,
  PRIMARY KEY (`Interest_ID`),
  INDEX `User_IND` (`User_ID` ASC),
  INDEX `Present_IND` (`Present_ID` ASC),
  CONSTRAINT `FK_USER_INTEREST`
    FOREIGN KEY (`User_ID`)
    REFERENCES `DB3087534`.`gg_User` (`User_ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_INTEREST_PRESENT`
    FOREIGN KEY (`Present_ID`)
    REFERENCES `DB3087534`.`gg_Present` (`Present_ID`)
    ON DELETE SET NULL
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `DB3087534` ;

-- -----------------------------------------------------
-- View `DB3087534`.`v_All_Tags_per_Present`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `DB3087534`.`v_All_Tags_per_Present` ;
USE `DB3087534`;
CREATE OR REPLACE VIEW `v_All_Tags_per_Present` AS
    SELECT 
        Present_ID,
        GROUP_CONCAT(Tag_ID SEPARATOR ', ') AS Tag_IDs,
        GROUP_CONCAT((SELECT Tag FROM gg_Tag WHERE gg_Tag.Tag_ID = gg_Present_has_Tags.Tag_ID) SEPARATOR ', ') AS Tags
    FROM
        gg_Present_has_Tags
    GROUP BY 
        Present_ID;

-- -----------------------------------------------------
-- View `DB3087534`.`v_All_Users`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `DB3087534`.`v_All_Users` ;
USE `DB3087534`;
CREATE OR REPLACE VIEW `v_All_Users` AS
SELECT 
    User_ID,
    Login_Name,
    Zip_Code,
    IF(Visibility_Flags LIKE 'EMAIL:1-%'  , Email,                                 '') AS Email,
    IF(Visibility_Flags LIKE '%NAME:1-%'  , CONCAT(Lastname,', ',Firstname),       '') AS Name,
    IF(Visibility_Flags LIKE '%ADRESS:1-%', CONCAT(Street,', ',Zip_Code,' ',City), '') AS Address,
    IF(Visibility_Flags LIKE '%FON:1-%'   , Phone,                                 '') AS Phone,
    IF(Visibility_Flags LIKE '%PICTURE:1' , Picture,                               '') AS Picture
FROM
    gg_User;

-- -----------------------------------------------------
-- View `DB3087534`.`v_Invalid_Interests`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `DB3087534`.`v_Invalid_Interests` ;
USE `DB3087534`;
CREATE OR REPLACE VIEW `v_Invalid_Interests` AS
SELECT 
    Interest_ID,
    User_ID
FROM
    gg_Interest
WHERE
    Present_ID IS NULL;

-- -----------------------------------------------------
-- View `DB3087534`.`v_All_Demands`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `DB3087534`.`v_All_Demands` ;
USE `DB3087534`;
CREATE OR REPLACE VIEW `v_All_Demands` AS
SELECT 
	gg_Demand.Demand_ID, 
    gg_Demand.User_ID,
    gg_Present.Present_ID,
    gg_Present.Created,
    gg_Present.Title,
    gg_Present.Description,
    gg_Present.State,
    gg_Present.Expiry,
    gg_Present.Picture,
    v_All_Tags_per_Present.Tag_IDs,
    v_All_Tags_per_Present.Tags
FROM
	gg_Demand
		LEFT JOIN 
			gg_Present ON gg_Demand.Present_ID = gg_Present.Present_ID
		LEFT JOIN
			v_All_Tags_per_Present ON v_All_Tags_per_Present.Present_ID = gg_Demand.Present_ID;

-- -----------------------------------------------------
-- View `DB3087534`.`v_All_Offers`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `DB3087534`.`v_All_Offers` ;
USE `DB3087534`;
CREATE OR REPLACE VIEW `v_All_Offers` AS
    SELECT 
        gg_Offer.Offer_ID,
        gg_Offer.User_ID,
		gg_Present.Present_ID,
		gg_Present.Created,
		gg_Present.Title,
		gg_Present.Description,
		gg_Present.State,
		gg_Present.Expiry,
		gg_Present.Picture,
        v_All_Tags_per_Present.Tag_IDs,
        v_All_Tags_per_Present.Tags
    FROM
        gg_Offer
            LEFT JOIN
				gg_Present ON gg_Offer.Present_ID = gg_Present.Present_ID
            LEFT JOIN
				v_All_Tags_per_Present ON v_All_Tags_per_Present.Present_ID = gg_Offer.Present_ID;

-- -----------------------------------------------------
-- View `DB3087534`.`v_All_Interests_On_Offers`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `DB3087534`.`v_All_Interests_On_Offers` ;
USE `DB3087534`;
CREATE OR REPLACE VIEW `v_All_Interests_On_Offers` AS
SELECT 
	gg_Interest.Interest_ID, 
	gg_Interest.User_ID, 
    gg_Offer.Offer_ID,
    gg_Present.Present_ID,
    gg_Present.Created,
    gg_Present.Title,
    gg_Present.Description,
    gg_Present.State,
    gg_Present.Expiry,
    gg_Present.Picture,
    v_All_Tags_per_Present.Tag_IDs,
    v_All_Tags_per_Present.Tags,
    gg_Present.Owner_ID,
    v_All_Users.Login_name AS Owner_Name,
    v_All_Users.Zip_Code AS Owner_Location
FROM
	gg_Interest
		LEFT JOIN gg_Present ON gg_Interest.Present_ID = gg_Present.Present_ID
		LEFT JOIN v_All_Tags_per_Present ON v_All_Tags_per_Present.Present_ID = gg_Interest.Present_ID
        LEFT JOIN v_All_Users ON v_All_Users.User_ID = gg_Present.Owner_ID
        INNER JOIN gg_Offer on gg_Present.Present_ID = gg_Offer.Present_ID;

-- -----------------------------------------------------
-- View `DB3087534`.`v_All_Interests_On_Demands`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `DB3087534`.`v_All_Interests_On_Demands` ;
USE `DB3087534`;
CREATE OR REPLACE VIEW `v_All_Interests_On_Demands` AS
SELECT 
	gg_Interest.Interest_ID, 
	gg_Interest.User_ID, 
    gg_Demand.Demand_ID,
    gg_Present.Present_ID,
    gg_Present.Created,
    gg_Present.Title,
    gg_Present.Description,
    gg_Present.State,
    gg_Present.Expiry,
    gg_Present.Picture,
    v_All_Tags_per_Present.Tag_IDs,
    v_All_Tags_per_Present.Tags,
    gg_Present.Owner_ID,
    v_All_Users.Login_name AS Owner_Name,
    v_All_Users.Zip_Code AS Owner_Location
FROM
	gg_Interest
		LEFT JOIN gg_Present ON gg_Interest.Present_ID = gg_Present.Present_ID
		LEFT JOIN v_All_Tags_per_Present ON v_All_Tags_per_Present.Present_ID = gg_Interest.Present_ID
        LEFT JOIN v_All_Users ON v_All_Users.User_ID = gg_Present.Owner_ID
        INNER JOIN gg_Demand on gg_Interest.Present_ID = gg_Demand.Present_ID;
USE `DB3087534`;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
