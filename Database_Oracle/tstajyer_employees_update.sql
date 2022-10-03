
  ALTER TABLE TSTAJYER_EMPLOYEES
     ADD department_id NUMBER(4);


  ALTER TABLE TSTAJYER_EMPLOYEES
  ADD CONSTRAINT fk_employee
    FOREIGN KEY (department_id)
    REFERENCES TSATJYER_DEPARTMENTS(department_id);
    
BEGIN
  
    update TSTAJYER_EMPLOYEES b set b.department_id=1 where b.employee_id=1;
    update TSTAJYER_EMPLOYEES b set b.department_id=2 where b.employee_id=2;
    update TSTAJYER_EMPLOYEES b set b.department_id=1 where b.employee_id=3;

END;
    
commit;

select * from TSTAJYER_EMPLOYEES
