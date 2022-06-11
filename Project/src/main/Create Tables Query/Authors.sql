
DROP TABLE IF EXISTS Authors;
CREATE TABLE Authors(
	atID	VARCHAR(10) NOT NULL,
    aFname	VARCHAR(20) NOT NULL,
    aLname	VARCHAR(20) NOT NULL,
    Age		INT NOT NULL,
    Ranking	VARCHAR(30),
    Email	VARCHAR(50),
    Mobile	VARCHAR(15),
    SumPayment	DECIMAL(18, 0),
    PRIMARY KEY(atID)
);
