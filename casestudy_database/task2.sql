-- 2.	Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là
--  một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 ký tự
select e.employee_id, e.Employee_name,e.date_of_birth,e.salary,e.phone_number,
		d.department_name,el.employess_level_name,p.position_name
from Employees e
join Department d on e.department_id = d.department_id
join Positions p on e.position_id = p.position_id
join Employee_level el on e.employee_level_id= el.employee_level_id
where e.Employee_name regexp '[H][a-z]*$' or e.Employee_name regexp '[K][a-z]*$'
 or  e.Employee_name regexp '[T][a-z]*$'and length(Employee_name) <=15
order by e.employee_level_id

