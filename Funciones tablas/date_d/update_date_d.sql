CREATE  OR REPLACE FUNCTION public.update_date_d(
p_id_data date,
    p_hour_d time without time zone

)
RETURNS void AS
$BODY$
BEGIN

UPDATE date_d

SET id_data = p_id_data ,
   hour_d = p_hour_d 
   
WHERE id_data = p_id_data;

END;
	
$BODY$

LANGUAGE plpgsql;