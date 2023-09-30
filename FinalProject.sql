select "Marital Status" , AVG(Age) from customer
group by "Marital Status" ;

select gender , AVG(Age) from customer
group by gender  ;

select sum(transaction.qty) as quantity, store.storename  
from store left join "transaction" 
on transaction.storeid = store.storeid
group by store.storename
ORDER BY quantity DESC 
LIMIT 1 ;

select sum(transaction.totalamount) as total_amount, product."Product Name"  
from "transaction" left join product 
on transaction.productid = product.productid
group by product."Product Name"
ORDER BY total_amount DESC 
LIMIT 1 ;


