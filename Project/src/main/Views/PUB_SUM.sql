/*مجموع حق نشر هر ناشر*/
CREATE VIEW PUB_SUM AS (
	SELECT pName AS 'نام ناشر', SUM(pubbook.payment) AS 'مجموع حق نشر هر ناشر'
	FROM ((( publishers NATURAL JOIN pubbook) JOIN books USING (ISBN))
	JOIN authbook USING (ISBN))
	JOIN authors USING (atID)
	GROUP BY pName
);

SELECT * FROM PUB_SUM;
