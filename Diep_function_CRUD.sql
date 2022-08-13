-- home.jsp --
--1. get the product has the most buys with the minialist price--



--2. Get 8 lastest product--
SELECT * FROM product p JOIN 
(SELECT * from product_upload
WHERE upl_status IN ("Sắp mở (chỉ cho đặt cọc trước)", "Đang bán")
ORDER BY upl_uploadedDate DESC
LIMIT 8) table1
ON p.prd_id = table1.prd_id
