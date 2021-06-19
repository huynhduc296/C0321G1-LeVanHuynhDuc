-- Hiển thi thông tin của tất cả nhân viên bao gồm IDNhanVien, HoTen, TrinhDo, TenBoPhan,
-- SoDienThoai, DiaChi mới chỉ lập được tối đa 3 hợp đồng từ năm 2018 đến 2019

select nv.employee_id, nv.Employee_name,bp.department_name,td.employess_level_name,count(hd.contract_id) as hd
from Employees nv
	left join Contracts hd on nv.employee_id=hd.employee_id
    inner join Department bp on bp.department_id=nv.department_id
    inner join Employee_level td on td.employee_level_id=nv.employee_level_id
where year(date_started) between 2018 and 2019
group by hd.contract_id
having hd <=3;