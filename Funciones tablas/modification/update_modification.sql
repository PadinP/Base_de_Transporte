CREATE  OR REPLACE FUNCTION public.update_modification(
	p_modification_code integer,
	p_modification_date date
)
RETURNS void AS
$BODY$
BEGIN

UPDATE modification

SET modification_code= p_modification_code ,modification_date = p_modification_date 

WHERE modification_code= p_modification_code;

END;
	
$BODY$

LANGUAGE plpgsql;