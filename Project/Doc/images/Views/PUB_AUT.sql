/*هر نویسنده با چه ناشر هایی همکاری کرده است.*/

CREATE VIEW PUB_AUT AS (
SELECT DISTINCT pName AS 'نام ناشر', aLname AS 'نام نویسنده'
FROM	(((publishers NATURAL JOIN Pubbook)
JOIN Books USING (ISBN))
JOIN Authbook USING (ISBN))
JOIN Authors USING(atID)
WHERE aLname = 'معروفی');

SELECT * FROM PUB_AUT;
