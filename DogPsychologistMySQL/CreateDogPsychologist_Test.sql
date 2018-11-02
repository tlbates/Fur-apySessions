SET SQL_SAFE_UPDATES = 0;

DROP DATABASE IF EXISTS DogPsychologist_Test;

CREATE DATABASE DogPsychologist_Test;

USE DogPsychologist_Test;

CREATE TABLE `Employees` (
    `employeeID` INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `firstName` VARCHAR(50) NOT NULL,
    `lastName` VARCHAR(50) NOT NULL,
    `title` VARCHAR(50) NOT NULL,
    `partner` VARCHAR(50) NOT NULL,
    `interests` VARCHAR(280) NOT NULL,
    `employeeOfWeekCount` INT(5),
    `hireDate` DATE NOT NULL,    
    `roleID` INT(11),
	`userName` VARCHAR(50) NOT NULL,
    `password` VARCHAR(64) NOT NULL,
    `pictureFile` VARCHAR(50),
    `isEmployeeOfTheWeek` BOOLEAN
);

CREATE TABLE `Events` (
    `eventID` INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(50) NOT NULL,
    `start`VARCHAR(50) NOT NULL,
    `end` VARCHAR(50) NOT NULL,
    `description` VARCHAR(280) NOT NULL,
    `location` VARCHAR(50) NOT NULL,
    `isPrivate` BOOLEAN NOT NULL
);

CREATE TABLE `Categories` (
    `categoryID` INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL
);

CREATE TABLE `EventsCategories` (
    `eventCategoryID` INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `eventID` INT(11) NOT NULL,
    `categoryID` INT(11) NOT NULL
);

CREATE TABLE `Roles` (
    `roleID` INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `roleType` VARCHAR(50) NOT NULL
);

ALTER TABLE `EventsCategories`
ADD CONSTRAINT EventsCategories_EventsFK
FOREIGN KEY(eventID) REFERENCES `Events`(eventID) ON DELETE NO ACTION;

ALTER TABLE `EventsCategories`
ADD CONSTRAINT EventsCategories_CategoriesFK
FOREIGN KEY(categoryID) REFERENCES `Categories`(categoryID) ON DELETE NO ACTION;

ALTER TABLE `Employees`
ADD CONSTRAINT Employees_RolesFK
FOREIGN KEY(roleID) REFERENCES `Roles`(roleID) ON DELETE NO ACTION;