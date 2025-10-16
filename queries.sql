SELECT customer_name, city FROM customer;
SELECT emp_name, skills FROM qualifications;
SELECT * FROM sell WHERE sell_date > TO_DATE('2024-01-01', 'YYYY-MM-DD');

SELECT * FROM qualifications
  WHERE certifications <= 3;
