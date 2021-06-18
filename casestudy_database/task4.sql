-- 4.	Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần.
--  Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng.
-- Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.
-- --------------------------------------------------------------------------------------

select c.customer_id, c.full_name, ct.customer_type_name, COUNT(*) as noOfBooked
from Customers c
inner join CustomerType ct on c.customer_type_id =ct.customer_type_id
inner join Contracts ctr on c.customer_id = ctr.customer_id
where ct.customer_type_name = 'Diamond'
group by  customer_id
ORDER BY noOfBooked asc;

