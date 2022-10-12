--Added a column to the table  
  ALTER TABLE TSTAJYER_LOCATIONS
     ADD country_id CHAR(4);
     
--ADD FOREIGN KEY 
  ALTER TABLE TSTAJYER_LOCATIONS
  ADD CONSTRAINT fk_locations
    FOREIGN KEY (country_id)
    REFERENCES TSTAJYER_COUNTRIES(country_id);

--update    
BEGIN
  
    UPDATE TSTAJYER_LOCATIONS SET country_id=6
      WHERE location_id = 1;
    UPDATE TSTAJYER_LOCATIONS SET country_id=4
      WHERE location_id = 2;
    UPDATE TSTAJYER_LOCATIONS SET country_id=1
      WHERE location_id = 3;
    UPDATE TSTAJYER_LOCATIONS SET country_id=5
      WHERE location_id = 4;

END;

COMMIT;

 SELECT * FROM TSTAJYER_LOCATIONS
