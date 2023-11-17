CREATE  OR REPLACE FUNCTION public.update_type_driver_situation(
	p_id_type_ds integer,
    p_type_ds_name character varying
)
RETURNS void AS
$BODY$
BEGIN

UPDATE type_driver_situation

SET id_type_ds = p_id_type_ds , type_ds_name = p_type_ds_name

WHERE id_type_ds = p_id_type_ds;

END;
	
$BODY$

LANGUAGE plpgsql;