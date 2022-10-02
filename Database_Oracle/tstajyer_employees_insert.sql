BEGIN
   insert into TSTAJYER_EMPLOYEES(employee_id, first_name, last_name, email, birth_day, hire_date, salary) 
  values('2', 'Ahmet', 'Ali', 'ahmet@gmail.com','25.07.1997', '15.09.2022', '10.87');
  
  insert into TSTAJYER_EMPLOYEES(employee_id, first_name, last_name, email, birth_day, hire_date, salary) 
  values('3', 'Ayþe', 'Fatma', 'ayse@gmail.com','10.07.1997', '08.08.2022', '8.14');

END;

commit;

select * from TSTAJYER_EMPLOYEES
