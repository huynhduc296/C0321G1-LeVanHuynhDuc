-- 13. Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng.
--  (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).

select *, count(dvdk.accompanied_service_id) as kdt
from ContractDetail hdct
	inner join AccompaniedService dvdk on dvdk.accompanied_service_id=hdct.accompanied_service_id
group by hdct.accompanied_service_id
having count(hdct.accompanied_service_id)>= all
(select count(accompanied_service_id)
            from ContractDetail
            group by accompanied_service_id);