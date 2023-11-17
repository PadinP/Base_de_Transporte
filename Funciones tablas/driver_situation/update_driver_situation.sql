CREATE  OR REPLACE FUNCTION public.update_driver_situation(
    p_ds_code integer,
    p_return_date_ds date,
    p_current_date_ds date,
    p_id_aut_type_ds integer
)
RETURNS void AS
$BODY$
BEGIN

UPDATE driver_situation

SET ds_code = p_ds_code ,
    return_date_ds = p_return_date_ds ,
    current_date_ds = p_current_date_ds ,
    id_aut_type_ds = p_id_aut_type_ds 


WHERE ds_code = p_ds_code;
END;
	
$BODY$

LANGUAGE plpgsql;