--Added a column to the table  
  ALTER TABLE TSTAJYER_COUNTRIES
     ADD region_id NUMBER(4);   
--ADD FOREIGN KEY 
  ALTER TABLE TSTAJYER_COUNTRIES
  ADD CONSTRAINT fk_countries
    FOREIGN KEY (region_id)
    REFERENCES TSTAJYER_REGIONS(region_id);
--update    
BEGIN 
    UPDATE TSTAJYER_COUNTRIES SET region_id=1
      WHERE country_id = 1;
    UPDATE TSTAJYER_COUNTRIES SET region_id=2
      WHERE country_id = 2;
    UPDATE TSTAJYER_COUNTRIES SET region_id=2
      WHERE country_id = 3;
    UPDATE TSTAJYER_COUNTRIES SET region_id=1
      WHERE country_id = 4;
    UPDATE TSTAJYER_COUNTRIES SET region_id=2
      WHERE country_id = 5;
    UPDATE TSTAJYER_COUNTRIES SET region_id=1
      WHERE country_id = 6;
END;
commit;
select * from TSTAJYER_COUNTRIES
