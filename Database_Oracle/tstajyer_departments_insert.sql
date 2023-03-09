BEGIN 
  
  INSERT  INTO TSTAJYER_DEPARTMENTS (department_id, department_name, location_id )
         VALUES (otomatik_artis.nextval, 'IT', '2');
  INSERT  INTO TSTAJYER_DEPARTMENTS (department_id, department_name, location_id )
         VALUES (otomatik_artis.nextval, 'Bankacýlýk UG', '3');
  INSERT  INTO TSTAJYER_DEPARTMENTS (department_id, department_name, location_id )
         VALUES (otomatik_artis.nextval, 'Saklama UG', '1');
  INSERT  INTO TSTAJYER_DEPARTMENTS (department_id, department_name, location_id )
         VALUES ('90', 'Enerji EMTÝA', '4');

         
END;

commit;

select * from TSTAJYER_DEPARTMENTS
