SELECT PB.title AS 'عنوان کتاب' , AB.afname AS 'نام مولف' , AB.alname AS 'نام خانوادگی مولف' , PB.pname AS 'نام ناشر'
FROM PB , AB
WHERE PB.title = AB.title;

