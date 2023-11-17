CREATE  OR REPLACE FUNCTION public.update_change_type(
    p_id_change_type integer,
    p_change_type_name character varying
)
RETURNS void AS
$BODY$
BEGIN

UPDATE change_type

SET id_change_type = p_id_change_type, 
 change_type_name = p_change_type_name

WHERE id_change_type = p_id_change_type;

END;
	
$BODY$

LANGUAGE plpgsql;