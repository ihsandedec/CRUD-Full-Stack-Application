-- date and time format
 SELECT sysdate
  FROM dual;
/
--ayda kac gun kaldigini gosterir.
SELECT SYSDATE,
   LAST_DAY(SYSDATE) "Last",
   LAST_DAY(SYSDATE) - SYSDATE "Days Left"
   FROM DUAL;
/
--bir sonraki pazartesinin tarihini verir
SELECT TO_CHAR ( NEXT_DAY (sysdate, 'PAZARTESÝ' ) , 'DD.MM.YYYY' )

"Next Monday from now"

FROM DUAL;
 
