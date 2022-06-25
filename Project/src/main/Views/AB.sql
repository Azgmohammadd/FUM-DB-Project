CREATE VIEW AB AS (WITH	 TA AS (SELECT Books.ISBN AS 'کد کتاب' , Title AS 'عنوان کتاب' , atID AS 'کد نویسنده'
FROM	 Books
INNER JOIN	 AuthBook
ON	 AuthBook.ISBN = Books.ISBN)
SELECT	 TA.Title , author.aFname ,author.aLname 
FROM	 TA , Authors AS author
WHERE	 TA.atID = author.atID);
 
 SELECT * FROM AB;