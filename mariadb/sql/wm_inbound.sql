/*
    Datenbank für Rohdaten
*/
CREATE DATABASE IF NOT EXISTS wminbound;
USE wminbound;
/*
    Tabellen    
*/
CREATE TABLE IF NOT EXISTS sessions (
    sessionID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    start DATETIME,
    end DATETIME,
    setupID INT NOT NULL,
    PRIMARY KEY(sessionID)
);

CREATE TABLE IF NOT EXISTS data (
    dataID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    sigStrength FLOAT NOT NULL,
    sourceMAC VARCHAR(17),
    apID INT NOT NULL,
    time DATETIME,
    sessionID INT UNSIGNED NOT NULL,
    PRIMARY KEY(dataID)
);

CREATE TABLE IF NOT EXISTS location (
   locationID INT UNSIGNED NOT NULL AUTO_INCREMENT,
   name VARCHAR(32) NOT NULL,
   PRIMARY KEY(locationID)
);

CREATE TABLE IF NOT EXISTS ap (
   apID INT UNSIGNED NOT NULL AUTO_INCREMENT,
   apName VARCHAR(32) NOT NULL,
   apPlatform VARCHAR(255),
   
   apNetworkdevIntern VARCHAR(255),
   apNetworkdevInternMAC VARCHAR(17),
   
   apNetworkdevExtern VARCHAR(255),
   apNetworkdevExternMAC VARCHAR(17),
   
   apComment VARCHAR(255),
   PRIMARY KEY(apID)
);

CREATE TABLE IF NOT EXISTS ap_to_setup (
    ap_to_setupID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    apID INT UNSIGNED NOT NULL,
    setupID INT UNSIGNED NOT NULL,
    PRIMARY KEY(ap_to_setupID)
);

CREATE TABLE IF NOT EXISTS setup (
    setupID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    locationID INT UNSIGNED NOT NULL,
    PRIMARY KEY(setupID)
);

CREATE TABLE IF NOT EXISTS distance (
   distanceID INT UNSIGNED NOT NULL AUTO_INCREMENT,
   fromApID INT NOT NULL,
   toApID INT NOT NULL,
   distance FLOAT NOT NULL,
   sessionID INT NOT NULL,
   PRIMARY KEY(distanceID)
);
