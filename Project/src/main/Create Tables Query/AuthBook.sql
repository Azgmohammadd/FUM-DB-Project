DROP TABLE IF EXISTS AuthBook;
CREATE TABLE AuthBook(
	ISBN	VARCHAR(10) NOT NULL,
    atID	VARCHAR(10) NOT NULL,
    Payment	DECIMAL(18, 0) NOT NULL,
	FOREIGN KEY (ISBN) REFERENCES Books(ISBN),
	FOREIGN KEY (atID) REFERENCES Authors(atID)
);
