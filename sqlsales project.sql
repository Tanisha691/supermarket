create database ecommers;
use ecommers;

-- IMPORT DATA FROM EXCEL
 
select*from supermarket;

commit;

-- q1.Kaunsi City/Branch top revenue deti hai?

select city,branch,sum(sales) as sales
from supermarket
group by city,branch
order by sales desc limit 1;


-- q2.Kaunsa Product Line sabse zyada revenue aur margin deta hai?

select product_line,sum(sales) as margin
from supermarket
group by product_line
order by margin desc limit 1;



-- q3.Members vs Normal: kaun zyada spend karta hai?
select  customer, count(Customer ) as spend
from supermarket
group by customer ;


-- q4.Gender-wise aur payment-mode ka pattern kya hai?

select gender,payment 
from supermarket 
group by gender,payment;




-- q5. top 10 highest-value invoices (for promotions/loyalty)?

select invoice_id,rating from supermarket order by rating desc limit 10;



