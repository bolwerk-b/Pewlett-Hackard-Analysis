-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (e.emp_no) 
e.emp_no,
e.first_name,
e.last_name,
ti.title,
ti.from_date,
ti.to_date


INTO retirement_titles
FROM Employees as e 
inner join titles as ti 
on (e.emp_no = ti.emp_no)
WHERE e.birth_date between '1952-01-01' and '1955-12-31'
ORDER BY e.emp_no ASC;