# CSE 310

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema fruit
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema fruit
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `fruit` DEFAULT CHARACTER SET utf8 ;
USE `fruit` ;

-- -----------------------------------------------------
-- Table `fruit`.`fruit_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fruit`.`fruit_type` ;

CREATE TABLE IF NOT EXISTS `fruit`.`fruit_type` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fruit`.`fruits`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fruit`.`fruits` ;

CREATE TABLE IF NOT EXISTS `fruit`.`fruits` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `color` VARCHAR(45) NULL,
  `price` INT NOT NULL,
  `fruit_type_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_fish_fish_type_idx` (`fruit_type_id` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  CONSTRAINT `fk_fish_fish_type`
    FOREIGN KEY (`fruit_type_id`)
    REFERENCES `fruit`.`fruit_type` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


# Insert the fruit types
INSERT fruit_type VALUES
	(DEFAULT, 'drupe');
SET @drupe = last_insert_id();

INSERT fruit_type VALUES
	(DEFAULT, 'berries');
SET @berries = last_insert_id();

INSERT fruit_type VALUES
	(DEFAULT, 'pome');
SET @pome = last_insert_id();

INSERT fruit_type VALUES
	(DEFAULT, 'hesperidium');
SET @hesperidium = last_insert_id();

INSERT fruit_type VALUES
	(DEFAULT, 'pepo');
SET @pepo = last_insert_id();

# insert the fruits 
INSERT fruits VALUES
	(DEFAULT, 'apricot', 'oragne', 3, @drupe);
    
INSERT fruits VALUES
	(DEFAULT, 'olive', 'green', 2, @drupe);
    
INSERT fruits VALUES
	(DEFAULT, 'peach', 'pink', 5, @drupe);
    
INSERT fruits VALUES
	(DEFAULT, 'plum', 'dark purple', 1, @drupe);
    
INSERT fruits VALUES
	(DEFAULT, 'black berry', 'dark purple', 4, @berries);
    
INSERT fruits VALUES
	(DEFAULT, 'raspberry', 'red', 5, @berries);
    
INSERT fruits VALUES
	(DEFAULT, 'cranberry', 'red', 3, @berries);
    
INSERT fruits VALUES
	(DEFAULT, 'apple', 'green', 2, @pome);
    
INSERT fruits VALUES
	(DEFAULT, 'pear', 'yellow', 2, @pome);
    
INSERT fruits VALUES
	(DEFAULT, 'quince', 'yellow', 5, @pome);
    
INSERT fruits VALUES
	(DEFAULT, 'orange', 'orange', 2, @hesperidium);

INSERT fruits VALUES
	(DEFAULT, 'lemon', 'yellow', 1, @hesperidium);

INSERT fruits VALUES
	(DEFAULT, 'cucumber', 'green', 3, @pepo);
    
INSERT fruits VALUES
	(DEFAULT, 'pumpkin', 'yellow', 10, @pepo);
    



