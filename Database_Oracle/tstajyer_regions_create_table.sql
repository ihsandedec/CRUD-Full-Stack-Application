--create table
CREATE TABLE TSTAJYER_REGIONS
(
       region_id    NUMBER(4),
       region_name  VARCHAR2(25),
       CONSTRAINT regions_pk PRIMARY KEY (region_id)

)

--insert 
BEGIN
  
  INSERT INTO TSTAJYER_REGIONS
    VALUES('1','Marmara');
  INSERT INTO TSTAJYER_REGIONS
    VALUES('2','BLACK SEA');
 
END;

COMMIT;


select * from TSTAJYER_REGIONS
