--create table
CREATE TABLE TSTAJYER_JOB_HISTORY(
  
  start_date    DATE,
  end_date      DATE,
  employee_id   NUMBER(4),
  job_id        NUMBER(4),
  department_id NUMBER(4),
  
--foreign key   
  CONSTRAINT fk_emp_job_hýstory
    FOREIGN KEY (employee_id)
    REFERENCES TSTAJYER_EMPLOYEES(employee_id),
    
  CONSTRAINT fk_jb_job_hýstory
    FOREIGN KEY (job_id)
    REFERENCES TSTAJYER_JOBS(job_id),
    
  CONSTRAINT fk_dep_job_history
    FOREIGN KEY (department_id)
    REFERENCES TSTAJYER_DEPARTMENTS(department_id)

);

--Added a column to the table  
  ALTER TABLE TSTAJYER_EMPLOYEES
     ADD job_id NUMBER(7);   
--ADD FOREIGN KEY 
  ALTER TABLE TSTAJYER_EMPLOYEES
  ADD CONSTRAINT fk_emp_job
    FOREIGN KEY (job_id)
    REFERENCES TSTAJYER_JOBS(job_id); 

--insert
BEGIN
  
    INSERT INTO TSTAJYER_JOB_HISTORY (start_date, end_date, employee_id, job_id, department_id)
       VALUES ('21.09.1997','27.10.2001','2','5','3');
    INSERT INTO TSTAJYER_JOB_HISTORY (start_date, end_date, employee_id, job_id, department_id)
       VALUES ('13.08.2010','13.05.2022','1','7','1');
    INSERT INTO TSTAJYER_JOB_HISTORY (start_date, end_date, employee_id, job_id, department_id)
       VALUES ('07.07.1997','16.10.2018','1','2','3');
    INSERT INTO TSTAJYER_JOB_HISTORY (start_date, end_date, employee_id, job_id, department_id)
       VALUES ('03.11.2001','14.02.2014','3','4','2');
    INSERT INTO TSTAJYER_JOB_HISTORY (start_date, end_date, employee_id, job_id, department_id)
       VALUES ('20.07.2011','12.10.2011','2','1','1');
    INSERT INTO TSTAJYER_JOB_HISTORY (start_date, end_date, employee_id, job_id, department_id)
       VALUES ('21.09.1997','22.08.2013','1','3','2');
    INSERT INTO TSTAJYER_JOB_HISTORY (start_date, end_date, employee_id, job_id, department_id)
       VALUES ('21.09.1997','27.10.2008','2','5','3');
    INSERT INTO TSTAJYER_JOB_HISTORY (start_date, end_date, employee_id, job_id, department_id) --
       VALUES ('09.09.1999','23.04.2020','3','6','3');
    INSERT INTO TSTAJYER_JOB_HISTORY (start_date, end_date, employee_id, job_id, department_id)
       VALUES ('17.05.1996','10.10.2010','2','8','1');
    INSERT INTO TSTAJYER_JOB_HISTORY (start_date, end_date, employee_id, job_id, department_id)
       VALUES ('19.12.1995','01.01.2013','1','1','1');
    INSERT INTO TSTAJYER_JOB_HISTORY (start_date, end_date, employee_id, job_id, department_id)
       VALUES ('13.10.1997','16.07.2017','3','4','3');
    INSERT INTO TSTAJYER_JOB_HISTORY (start_date, end_date, employee_id, job_id, department_id)
       VALUES ('14.02.2002','15.03.2008','1','2','2'); 
    
    INSERT INTO TSTAJYER_EMPLOYEES (employee_id, first_name, Last_Name, EMAIL, BIRTH_DAY, HIRE_DATE, SALARY, DEPARTMENT_ID, JOB_ID)
       VALUES ('4','Ismail','Güler','ismail@gmail.com','13.05.1996', '13.08.2020','12.75','1','4');  
    INSERT INTO TSTAJYER_EMPLOYEES (employee_id, first_name, Last_Name, EMAIL, BIRTH_DAY, HIRE_DATE, SALARY, DEPARTMENT_ID, JOB_ID)
       VALUES ('5','Hatice','Deniz','hatice@gmail.com','09.05.1990', '22.11.2013','11.42','3','2');                                     
    INSERT INTO TSTAJYER_EMPLOYEES (employee_id, first_name, Last_Name, EMAIL, BIRTH_DAY, HIRE_DATE, SALARY, DEPARTMENT_ID, JOB_ID)
       VALUES ('6','Furkan','Gümüþ','furkan@gmail.com','13.05.1989', '03.04.2020','9.12','2','1');
    INSERT INTO TSTAJYER_EMPLOYEES (employee_id, first_name, Last_Name, EMAIL, BIRTH_DAY, HIRE_DATE, SALARY, DEPARTMENT_ID, JOB_ID)
       VALUES ('7','Burcu','Dürüst','burcu@gmail.com','18.07.1991', '30.07.2022','15.12','2','6');
    INSERT INTO TSTAJYER_EMPLOYEES (employee_id, first_name, Last_Name, EMAIL, BIRTH_DAY, HIRE_DATE, SALARY, DEPARTMENT_ID, JOB_ID)
       VALUES ('8','Melis','Gökçe','melis@gmail.com','23.04.1987', '06.12.2018','13.52','3','5');       
END;

--update
BEGIN
  
       UPDATE TSTAJYER_EMPLOYEES e SET e.job_id=5
           WHERE e.employee_id=1;
       UPDATE TSTAJYER_EMPLOYEES e SET e.job_id=2
           WHERE e.employee_id=2;
       UPDATE TSTAJYER_EMPLOYEES e SET e.job_id=7
           WHERE e.employee_id=3;
END;
COMMIT;


    
select * from TSTAJYER_EMPLOYEES    
select * from TSTAJYER_JOB_HISTORY
