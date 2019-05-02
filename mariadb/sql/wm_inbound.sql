/*
    Datenbank für Rohdaten
*/
CREATE DATABASE wminbound;
/*
    Tabellen    
*/
CREATE TABLE 'sessions' (
    sessionID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    locID INT NOT NULL,
    start DATETIME(),
    end DATETIME(),
    PRIMARY KEY(sessionID)

)

CREATE TABLE 'data' (
    /*PK id*/
    dataID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    /*sigStrength*/
    sigStrength FLOAT NOT NULL,
    /*sourceMAC*/
    sourceMAC VARCHAR(17),
    /*FK AP_ID*/
    apID INT,
    PRIMARY KEY(dataID)
)


/*FK sessionID*/
    sessionID INT