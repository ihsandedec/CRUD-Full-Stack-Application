CREATE Sequence otomatik_artis
  MINVALUE 1
  START WITH 1
  INCREMENT BY 1
  CACHE 0

BEGIN
  
  INSERT INTO TBL_DENEME (id, name, SURNAME)
     VALUES (otomatik_artis.nextval, 'ali', 'veli');
  INSERT INTO TBL_DENEME (id, name, SURNAME)
     VALUES (otomatik_artis.nextval, 'VELÝ', 'ALÝ'); 
  INSERT INTO TBL_DENEME (id, name, SURNAME)
     VALUES (otomatik_artis.nextval, 'ayþe', 'ALÝ');

END;

select * from TBL_DENEME
