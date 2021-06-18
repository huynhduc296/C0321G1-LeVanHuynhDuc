select kh.customer_id,lkh.customer_type_id,lkh.customer_type_name,kh.full_name,kh.date_of_birth,kh.id_card_number,kh.phone_number,kh.email,kh.address
from Customers kh
join CustomerType lkh on kh.customer_type_id = lkh.customer_type_id
where (timestampdiff(year,date_of_birth, curdate()) between 18 and 50 ) and (address in ('Da Nang')or address in('Quang Tri')); 
