BEGIN
    
  INSERT INTO TSTAJYER_LOCATIONS  (location_id, street_address, city)
     VALUES ('1','A Mah. B Sok. NO:10','Istanbul');
  INSERT INTO TSTAJYER_LOCATIONS  (location_id, street_address, city)
     VALUES ('2','C Mah. D Sok. NO:20','Izmir');
  INSERT INTO TSTAJYER_LOCATIONS  (location_id, street_address, city)
     VALUES ('3','E Mah. F Sok. NO:30','Ankara');
  INSERT INTO TSTAJYER_LOCATIONS  (location_id, street_address, city)
     VALUES ('4','G Mah. H Sok. NO:40','Kocaeli');    
END;

commit; 

select * from TSTAJYER_LOCATIONS
