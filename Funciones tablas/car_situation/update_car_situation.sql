CREATE  OR REPLACE FUNCTION public.update_car_situation(
p_cs_code integer,
p_return_date_cs date,
p_current_date_cs date,
p_id_aut_type_cs integer
)
RETURNS void AS
$BODY$
BEGIN

UPDATE car_situation

SET cs_coder = p_cs_code,
return_date_cs = p_return_date_cs ,
current_date_cs = p_current_date_cs ,
id_aut_type_cs = p_id_aut_type_cs
 
WHERE cs_coder = p_cs_code;

END;
	
$BODY$

LANGUAGE plpgsql;