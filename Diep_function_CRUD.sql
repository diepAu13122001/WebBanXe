-- home.jsp --
--1. get the product has the most buys--
SELECT * FROM product p JOIN
(SELECT prd_id, sum(dtl_productAmount) as qty
FROM bill_detail
GROUP BY prd_id
ORDER by qty desc
LIMIT 1) table1
ON p.prd_id = table1.prd_id


--2. Get 8 lastest product--
SELECT * FROM product p JOIN 
(SELECT * from product_upload
WHERE upl_status IN ("Sắp mở (chỉ cho đặt cọc trước)", "Đang bán")
ORDER BY upl_uploadedDate DESC
LIMIT 8) table1
ON p.prd_id = table1.prd_id
