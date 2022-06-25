CREATE VIEW PUB_INFO AS (
		SELECT pName AS 'نام  ناشر', CityName AS 'نام شهر انتشارات', bFname AS 'نام مدیر انتشارات', bLname AS 'نام خانواگی مدیر انتشارات'
        FROM Publishers
);

SELECT * FROM PUB_INFO;