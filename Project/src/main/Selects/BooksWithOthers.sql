WITH	 TA AS (SELECT Books.ISBN , Title , atID
FROM	 Books
INNER JOIN	 AuthBook
ON	 AuthBook.ISBN = Books.ISBN)
SELECT	 TA.Title AS 'عنوان کتاب', author.aFname AS 'نام مولف',author.aLname AS 'نام خانوادگی مولف'
FROM	 TA , Authors AS author
WHERE	 TA.atID = author.atID; 

WITH	 TP AS (SELECT Publishers.pName , Publishers.pubID , ISBN
FROM	 Publishers
INNER JOIN	 PubBook
ON	 publishers.PubID = pubbook.PubID)
SELECT	 book.Title AS 'عنوان کتاب' , TP.pName AS 'نام ناشر' 
FROM	 TP , Books AS book
WHERE	 book.ISBN = TP.ISBN;

create view mahinsage as (WITH	 TP AS (SELECT Publishers.pName , Publishers.pubID , ISBN
FROM	 Publishers
INNER JOIN	 PubBook
ON	 publishers.PubID = pubbook.PubID)
SELECT	 book.Title , TP.pName 
FROM	 TP , Books AS book
WHERE	 book.ISBN = TP.ISBN);

create view mmdsage as (WITH	 TA AS (SELECT Books.ISBN , Title , atID
FROM	 Books
INNER JOIN	 AuthBook
ON	 AuthBook.ISBN = Books.ISBN)
SELECT	 TA.Title , author.aFname ,author.aLname 
FROM	 TA , Authors AS author
WHERE	 TA.atID = author.atID);
 
select mahinsage.title as 'عنوان کتاب' , mmdsage.afname as 'نام مولف' , mmdsage.alname as 'نام خانوادگی مولف' , mahinsage.pname as 'نام ناشر'
from mahinsage , mmdsage
where mahinsage.title = mmdsage.title;

select title as 'عنوان کتاب'
from books
where price > all (select avg(price)
from books);

alter table authors drop SumPayment;

alter table authors add Sumpayment decimal (18,0);

update