/* نمایش اطلاعات نویسندگان */
SELECT * FROM Authors;

/* درآمد هر نویسنده */
SELECT	aFname as 'نام مولف' , aLname as 'نام خانوادگی مولف' , sumPayment as 'مجموع حق تالیف'
FROM	Authors;

/* پیر ترین نویسنده */
SELECT	atID as 'کد مولف', aFname as 'نام مولف' , aLname as 'نام خانوادگی مولف' , MAX(Age) as 'بیشترین سن'
FROM	Authors;

 /* جوان ترین نویسنده */
SELECT	atID as 'کد مولف', aFname as 'نام مولف' , aLname as 'نام خانوادگی مولف' , MIN(Age) as 'کمترین سن'
FROM	Authors;

/* میانگین سن نویسنده ها */
SELECT	AVG(Age) as 'میانگین سن'
FROM	Authors;

/* بیشترین حق تالیف*/
SELECT atID as 'کد مولف', aFname as 'نام مولف', aLname as 'نام خانوادگی مولف', MAX(SumPayment) as 'بیشترین حق تالیف'
FROM Authors;

/*کمترین حق تالیف */
SELECT atID as 'کد مولف', aFname as 'نام مولف', aLname as 'نام خانوادگی مولف', MIN(SumPayment) as 'کمترین حق تالیف'
FROM Authors;

/* میانگین  درآمد  نویسنده ها */
SELECT	AVG(SumPaymnet) as 'میانگین درآمد نویسنده ها'
FROM	Authors;

/*  مجموع درآمد نویسنده ها*/
SELECT	SUM(SumPaymnet) as 'مجموع درآمد نویسنده ها'
FROM	Authors;
