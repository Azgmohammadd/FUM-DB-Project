/* کتاب و ناشر*/
CREATE VIEW BOOK_PUB AS (
	SELECT Title AS 'عنوان کتاب', pName 'نام انتشارات'
	FROM	(Publishers NATURAL JOIN Pubbook)
	JOIN books USING (ISBN)
	ORDER BY pName
);

SELECT * FROM BOOK_PUB;
