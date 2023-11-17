CREATE  OR REPLACE FUNCTION public.update_mod_change(
p_id_modification integer
)
RETURNS void AS
$BODY$
BEGIN

UPDATE mod_change

SET id_modification  = p_id_modification 

WHERE id_modification  = p_id_modification ;

END;
	
$BODY$

LANGUAGE plpgsql;
