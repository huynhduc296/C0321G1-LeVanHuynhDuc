-- Thực hiện thống kê doanh thu theo tháng,
--  nghĩa là tương ứng với mỗi tháng trong năm 2019 thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.

select month(hd.date_started), sum(total_payment) as tong_tien, count(*) as so_lan
from Contracts hd
where year(hd.date_started)=2019
group by month(hd.date_started)