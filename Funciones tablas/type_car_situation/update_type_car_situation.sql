CREATE  OR REPLACE FUNCTION public.update_type_car_situation(
	p_id_type_cs integer,
    p_type_cs_name character varying
)
RETURNS void AS
$BODY$
BEGIN

UPDATE type_car_situation

SET id_type_cs = p_id_type_cs , type_cs_name = p_type_cs_name

WHERE id_type_cs = p_id_type_cs;

END;
	
$BODY$

LANGUAGE plpgsql;