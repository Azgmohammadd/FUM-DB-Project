CREATE VIEW PB as (WITH	 TP AS (SELECT Publishers.pName , Publishers.pubID , ISBN
FROM	 Publishers
INNER JOIN	 PubBook
ON	 publishers.PubID = pubbook.PubID)
SELECT	 book.Title , TP.pName 
FROM	 TP , Books AS book
WHERE	 book.ISBN = TP.ISBN);

SELECT * FROM PB;
