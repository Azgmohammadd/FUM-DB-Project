/* نمایش اطلاعات نویسندگان */
SELECT * FROM Authors;

/* درآمد هر نویسنده */
SELECT	aFname as 'نام مولف' , aLname as 'نام خانوادگی مولف' , sumPayment as 'مجموع حق تالیف'
FROM	Authors;

/* پیر ترین نویسنده */
SELECT	atID as 'کد مولف', aFname as 'نام مولف' , aLname as 'نام خانوادگی مولف' , MAX(Age) as 'بیشترین سن'
FROM	Authors
WHERE 	Age = (
	SELECT	MAX(Age)
	FROM	Authors);

 /* جوان ترین نویسنده */
SELECT	atID as 'کد مولف', aFname as 'نام مولف' , aLname as 'نام خانوادگی مولف' , MIN(Age) as 'کمترین سن'
FROM	Authors
WHERE	Age = (
	SELECT	MIN(Age)
    FROM	Authors);

/* میانگین سن نویسنده ها */
SELECT	AVG(Age) as 'میانگین سن'
FROM	Authors;

/* بیشترین حق تالیف*/
SELECT atID as 'کد مولف', aFname as 'نام مولف', aLname as 'نام خانوادگی مولف', MAX(SumPayment) as 'بیشترین حق تالیف'
FROM Authors
WHERE SumPayment = (
	SELECT	MAX(SumPayment)
	FROM	Authors);

/*کمترین حق تالیف */
SELECT atID as 'کد مولف', aFname as 'نام مولف', aLname as 'نام خانوادگی مولف', MIN(SumPayment) as 'کمترین حق تالیف'
FROM Authors
WHERE SumPayment = (
	SELECT	MIN(SumPayment)
	FROM	Authors);

/* میانگین  درآمد  نویسنده ها */
SELECT	AVG(SumPayment) as 'میانگین درآمد نویسنده ها'
FROM	Authors;

/*  مجموع درآمد نویسنده ها*/
SELECT	SUM(SumPayment) as 'مجموع درآمد نویسنده ها'
FROM	Authors;


/*هر ناشر چه گروهی از کتاب ها را منتشر می کند*/
SELECT DISTINCT groupName AS ' نام گروه هایی که نشر نیلوفر چاپ می کند'
FROM ((Publishers NATURAL JOIN Pubbook)
JOIN books USING (ISBN))
JOIN groupbook USING (GroupID)
WHERE pname = 'نیلوفر';

/*هر نویسنده چه گروهی از کتاب ها را نوشته است*/
SELECT DISTINCT groupName AS ' نام گروه هایی که بولگاف نوشته است'
FROM ((Authors JOIN Authbook USING (atID))
JOIN books USING (ISBN))
JOIN groupbook USING (GroupID)
WHERE atID = 490194;

/*نام ناشر هایی که کتاب با ژانر ایرانی یا روسی چاپ کردند*/
(SELECT pName AS ' نام ناشر هایی که کتاب با ژانر ایرانی یا روسی چاپ کردند'
FROM ((Publishers NATURAL JOIN pubbook) JOIN books USING (ISBN))
JOIN groupbook USING (groupID)
WHERE groupname = 'روسی')
UNION
(SELECT pName
FROM ((Publishers NATURAL JOIN pubbook JOIN books USING (ISBN))
JOIN groupBook USING (groupID))
WHERE groupName = 'ایرانی'); 