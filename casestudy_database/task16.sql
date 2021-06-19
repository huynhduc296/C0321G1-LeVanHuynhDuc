-- Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2017 đến năm 2019

delete
from Employees
where employee_id not in (
	select employee_id
	from Contracts
    where year(date_started) between 2017 and 2019
);