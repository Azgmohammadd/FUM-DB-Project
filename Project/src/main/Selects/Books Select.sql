/*نمایش اطلاعات کتاب ها*/
SELECT ISBN AS 'کد کتاب', Title AS 'عنوان کتاب', _Page AS 'تعداد صفحات', Price AS 'قیمت کتاب', EditNo AS 'شماره ویرایش', PrintNo AS 'شماره چاپ', GroupID AS 'کد گروه کتاب' FROM Books;

/* 'عنوان کتاب'*/
SELECT ISBN AS 'کد کتاب', Title AS 'عنوان کتاب' 
FROM Books;

/* 'بیشترین تعداد صفحات'*/
SELECT ISBN AS 'کد کتاب', Title AS 'عنوان کتاب', MAX(_Page) AS 'بیشترین تعداد صفحات'
FROM Books
WHERE _Page = (SELECT MAX(_Page) FROM Books);

/*'کمترین تعداد صفحات' */
SELECT ISBN AS 'کد کتاب', Title AS 'عنوان کتاب', MIN(_Page) AS 'کمترین تعداد صفحات'
FROM Books
WHERE _Page = (SELECT MIN(_Page) FROM Books);

/* 'بیشترین قیمت کتاب'*/
SELECT ISBN AS 'کد کتاب', Title AS 'عنوان کتاب', MAX(Price) AS 'بیشترین قیمت کتاب'
FROM Books
WHERE Price = (SELECT MAX(Price) FROM Books);

/*'کمترین قیمت کتاب'*/
SELECT ISBN AS 'کد کتاب', Title AS 'عنوان کتاب', MIN(Price) AS 'کمترین قیمت کتاب'
FROM Books
WHERE Price = (SELECT MIN(Price) FROM Books);


/*'بیشترین شماره ویرایش' */
SELECT ISBN AS 'کد کتاب', Title AS 'عنوان کتاب',MAX(EditNo) AS 'بیشترین شماره ویرایش'
FROM Books
WHERE EditNo = (SELECT MAX(EditNo) FROM Books);

/* تعداد کل کتاب ها */
SELECT	COUNT(DISTINCT(ISBN)) AS 'تعداد کتاب ها'
FROM	Books;

