--table name change
  ALTER TABLE TSATJYER_DEPARTMENTS 
     RENAME TO TSTAJYER_DEPARTMENTS;

--Added a column to the table  
  ALTER TABLE TSTAJYER_DEPARTMENTS
     ADD location_id NUMBER(4);
     
 BEGIN
     
     UPDATE TSTAJYER_DEPARTMENTS SET location_id=3
         where department_id=1;
     UPDATE TSTAJYER_DEPARTMENTS SET location_id=1
         where department_id=2;
     UPDATE TSTAJYER_DEPARTMENTS SET location_id=4
         where department_id=3;         

 END;

 
 ROLLBACK;
 COMMIT;
 
 select * from TSTAJYER_DEPARTMENTS
 select * from TSTAJYER_LOCATIONS
