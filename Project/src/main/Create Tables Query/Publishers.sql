DROP TABLE IF EXISTS Publishers;
CREATE TABLE Publishers(
	PubID	VARCHAR(10) NOT NULL,
    pNAME	VARCHAR(50) NOT NULL,
    Tel		VARCHAR(15),
    URL		VARCHAR(100),
    CityName	VARCHAR(50),
    bFname	VARCHAR(20) NOT NULL,
    bLname	VARCHAR(20) NOT NULL,
    CountBookPrint	INT NOT NULL,
    PRIMARY KEY(PubID)
);
