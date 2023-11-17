CREATE  OR REPLACE FUNCTION public.update_driver(
    p_dni_driver character varying,
    p_driver_name character varying,
    p_home_address character varying,
    p_category character varying,
    p_is_copilot boolean,
    p_id_ds integer,
    p_id_car integer
)
RETURNS void AS
$BODY$
BEGIN

UPDATE driver

SET dni_driver = p_dni_driver,
 driver_name =  p_driver_name,
 home_address = p_home_address,
 category = p_category,
 is_copilot = p_is_copilot,
 id_ds = p_id_ds,
 id_car = p_id_car

WHERE dni_driver = p_dni_driver;

END;
	
$BODY$

LANGUAGE plpgsql;