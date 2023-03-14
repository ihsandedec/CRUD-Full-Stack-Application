--create table
CREATE TABLE TSTAJYER_MANAGERS (

       manager_id              NUMBER(7),
       manager_name            VARCHAR2(35),
       
       CONSTRAINT manager_pk PRIMARY KEY (manager_id)

)

--sequence
CREATE SEQUENCE user_sequences
       MINVALUE 1 MAXVALUE 999999999999999999999999999
       INCREMENT BY 1 
       START WITH 1 
       CACHE 20 NOORDER  NOCYCLE

--insert
BEGIN
       INSERT INTO TSTAJYER_MANAGERS (manager_id, Manager_Name)
              VALUES(user_sequences.nextval, 'Tahir');
       INSERT INTO TSTAJYER_MANAGERS (manager_id, Manager_Name)
              VALUES(user_sequences.nextval, 'Ali');
       INSERT INTO TSTAJYER_MANAGERS (manager_id, Manager_Name)
              VALUES(user_sequences.nextval, 'Ayþe');
       INSERT INTO TSTAJYER_MANAGERS (manager_id, Manager_Name)
              VALUES(user_sequences.nextval, 'Fatma');
       INSERT INTO TSTAJYER_MANAGERS (manager_id, Manager_Name)
              VALUES(user_sequences.nextval, 'Mehmet');
END;
commit;

ALTER TABLE TSTAJYER_EMPLOYEES
ADD manager_id NUMBER(7);

--update
BEGIN  
    UPDATE TSTAJYER_EMPLOYEES e SET manager_id = 1 
           WHERE e.department_id=1;
    UPDATE TSTAJYER_EMPLOYEES e SET manager_id = 2 
           WHERE e.department_id=2 OR e.department_id= 80;
    UPDATE TSTAJYER_EMPLOYEES e SET manager_id = 3 
           WHERE e.department_id=3 OR E.DEPARTMENT_ID=4;
    UPDATE TSTAJYER_EMPLOYEES e SET manager_id = 4 
           WHERE e.department_id=5 OR E.DEPARTMENT_ID=6;
    UPDATE TSTAJYER_EMPLOYEES e SET manager_id = 5 
           WHERE e.department_id=7 OR e.department_id=40;           
END;
 
SELECT * FROM TSTAJYER_EMPLOYEES
