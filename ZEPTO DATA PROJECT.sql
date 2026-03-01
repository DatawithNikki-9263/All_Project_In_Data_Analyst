CREATE TABLE zepto
(
order_id  serial PRIMARY KEY,
Category VARCHAR(50) NOT NULL ,
name  VARCHAR(500) NOT NULL,
mrp  Bigint,
discount_Percent  numeric(8,2),
available_Quantity  int,
discounted_Selling_Price  numeric,
weight_In_Gms numeric,
out_Of_Stock VARCHAR(50) NOT NULL,
quantity   numeric
);



DROP TABLE zepto
select * from zepto


COPY zepto(order_id,Category,name,mrp,discount_Percent,available_Quantity,discounted_Selling_Price,	weight_In_Gms,	out_Of_Stock, quantity)
FROM 'D:/zepto.csv'
DELIMITER ','
CSV HEADER;


select * from zepto
WHERE name is null
o








---different product category

select distinct category from zepto 
order by category;

----product in stock vs out of stock


SELECT out_of_stock, count(order_id)
from zepto
group by out_of_stock;



select * from zepto 
ORDER BY available_quantity desc
LIMIT 1;




SELECT category, available_quantity,
        CASE 
          When available_quantity =0 Then 'OUT OF STOCK'
	      When available_quantity <= 4 Then 'LIMIT STOCK'
	      When available_quantity <= 6 Then 'IN STOCK'
		ELSE 'STOCK +'
		END AS stock_status
From zepto;



----product name present_multiple times

SELECT name,count(order_id)as total_order_multiple
from zepto 
group by name 
having count (order_id) >=1
order by count (order_id) desc;



----data cleaning 


--product with price =0


select * from zepto
where mrp =0;


DELETE FROM zepto 
where mrp =0;

---convert paise to repees


update  zepto 
SET mrp =mrp/100,
discounted_Selling_Price =discounted_Selling_Price /100;







select mrp, discounted_Selling_Price  from zepto;





---find the most 10 best-values product based on the discont percentege..



SELECT category, mrp, discount_percent
from zepto
order by discount_percent desc
LIMIT 10;


select distinct name, category, mrp, discount_percent
from zepto
order by discount_percent desc
limit 10;




---what are the product with hight mrp but out of stock


SELECT distinct available_quantity, mrp, out_of_stock
from zepto
ORDER BY mrp desc;




SELECT * FROM zepto 
WHERE available_quantity =0
ORDER by mrp desc
LIMIT 4;









-- Q3. CALCULATE ESTIMATED REVENUE FOR EACH CATEGORY


SELECT category, 
ROUND(Sum(discounted_Selling_Price),2) as category_total_revenue
from zepto
group by category
ORDER BY category_total_revenue desc;






select * from zepto




-- Q4. find all products where mrp is greater than $500 and dicount is less than 10%.


SELECT name, discount_Percent , mrp 
from zepto 
where mrp >= 500 and discount_Percent <=10
ORDER BY mrp desc, discount_Percent desc;






-- Q5. Identify the top 5 cetegories offeriing he highest average discount percentage 


SELECT category , ROUND(avg(discount_Percent),2) as avg_discount
from zepto 
Group by category
order by avg_discount desc
limit 5;




-- Q6. Find the price per gram for products above 100g and sort best values


select * from zepto


select  name,weight_In_Gms, discounted_Selling_Price,
ROUND(discounted_Selling_Price/weight_In_Gms,3) as price_per_gram
FROM zepto 
WHERE weight_In_Gms>=100
ORDER BY price_per_gram;




-- Q7. group the product into categores like low , medium, bulk



select * from zepto

select name, weight_In_Gms,
      CASE 
	  WHEN weight_In_Gms <1000 THEN 'LOW'
      	  WHEN weight_In_Gms <=5000 THEN 'MEDIUM'
   ELSE 'BUILK'
   END AS  weight_category
  from zepto;





 -- Q8. what is the total inverntory weight per category


SELECT category, SUM(weight_In_Gms*available_Quantity) AS weight_Gms
from zepto
GROUP BY category
ORDER BY weight_Gms 


select * from zepto



-- Q9.




