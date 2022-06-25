CREATE VIEW AUT_SUM AS (
	SELECT aFname AS  'نام مولف', aLname AS 'تام خانوادگی مولف', SumPayment as 'حقوق مولف'
	FROM Authors
);

SELECT * FROM AUT_SUM;