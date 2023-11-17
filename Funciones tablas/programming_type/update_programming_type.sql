CREATE  OR REPLACE FUNCTION public.update_programming_type(
p_id_prog_type integer,
    p_prog_type_name character varying
)
RETURNS void AS
$BODY$
BEGIN

UPDATE programming_type

SET  id_prog_type = p_id_prog_type,
prog_type_name = p_prog_type_name

WHERE id_prog_type = p_id_prog_type ;

END;
	
$BODY$

LANGUAGE plpgsql;