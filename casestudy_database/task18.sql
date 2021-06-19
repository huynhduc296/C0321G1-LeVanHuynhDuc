
-- Xóa những khách hàng có hợp đồng trước năm 2016 (chú ý ràngbuộc giữa các bảng).

delete
from Customers 
where customer_id in (
select customer_id
from Contracts
where year(date_started) <=2016
);

