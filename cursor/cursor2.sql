SET SERVEROUTPUT ON    
        BEGIN  
        UPDATE t11 SET g2_id='xxxxxx'  WHERE g2_name='qianduan';   
         IF SQL%FOUND THEN    
        DBMS_OUTPUT.PUT_LINE('success');   
        COMMIT;    
        ELSE  
        DBMS_OUTPUT.PUT_LINE('failure');   
         END IF;    
        END; 
