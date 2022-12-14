--create table
CREATE TABLE TSTAJYER_JOBS(
  job_id     NUMBER(7) not null,
  job_title  VARCHAR2(35),
  min_salary NUMBER(6),
  max_salary NUMBER(6),
  
  CONSTRAINT jobs_pk PRIMARY KEY (job_id)

);

BEGIN
  
  INSERT INTO TSTAJYER_JOBS (job_id, job_title, min_salary, max_salary)
     VALUES ('1','Programmer','6500','15200');
  INSERT INTO TSTAJYER_JOBS (job_id, job_title, min_salary, max_salary)
     VALUES ('2','Computer Engineer','10025','22000');
  INSERT INTO TSTAJYER_JOBS (job_id, job_title, min_salary, max_salary)
     VALUES ('3','Software Engineer','8300','17020');
  INSERT INTO TSTAJYER_JOBS (job_id, job_title, min_salary, max_salary)
     VALUES ('4','Stock Manager','5560','8700');
  INSERT INTO TSTAJYER_JOBS (job_id, job_title, min_salary, max_salary)
     VALUES ('5','Finance Manager','12530','20300');
  INSERT INTO TSTAJYER_JOBS (job_id, job_title, min_salary, max_salary)
     VALUES ('6','Hardware Specialist','9000','17500');
  INSERT INTO TSTAJYER_JOBS (job_id, job_title, min_salary, max_salary)
     VALUES ('7','Analyst','9750','15020');
     INSERT INTO TSTAJYER_JOBS (job_id, job_title, min_salary, max_salary)
     VALUES ('8','Accountant','7080','11350');
END;

commit;
SELECT * FROM TSTAJYER_JOBS

