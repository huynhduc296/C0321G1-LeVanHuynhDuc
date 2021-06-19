-- 19.	Cập nhật giá cho các Dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2019 lên gấp đôi
 
 update AccompaniedService 
 set price =price*2
 where accompanied_service_id in(
 select accompanied_service_id
 from ContractDetail hdct
 join Contracts hd on hd.contract_id=hdct.contract_id
 group by hdct.accompanied_service_id
having count(accompanied_service_id)>10
);
 