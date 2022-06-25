/*نام کتاب به همراه نویسنده*/
WITH	 TA AS (SELECT Books.ISBN , Title , atID
FROM	 Books
INNER JOIN	 AuthBook
ON	 AuthBook.ISBN = Books.ISBN)
SELECT	 TA.Title AS 'عنوان کتاب', author.aFname AS 'نام مولف',author.aLname AS 'نام خانوادگی مولف'
FROM	 TA , Authors AS author
WHERE	 TA.atID = author.atID; 

/*نام کتاب و ناشر*/
WITH	 TP AS (SELECT Publishers.pName , Publishers.pubID , ISBN
FROM	 Publishers
INNER JOIN	 PubBook
ON	 publishers.PubID = pubbook.PubID)
SELECT	 book.Title AS 'عنوان کتاب' , TP.pName AS 'نام ناشر' 
FROM	 TP , Books AS book
WHERE	 book.ISBN = TP.ISBN;


SELECT Title AS 'عنوان کتاب'
FROM books
WHERE price > ALL (SELECT AVG(price)
FROM books);