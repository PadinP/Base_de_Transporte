 
 CREATE  OR REPLACE FUNCTION public.update_solicitude(
p_solicitude_code integer,
 p_programming_star_time time without time zone,
 p_programming_to_be_done character varying,
 p_mileage integer
)
RETURNS void AS
$BODY$
BEGIN

UPDATE solicitude

SET solicitude_code = p_solicitude_code ,
 programming_star_time = p_programming_star_time ,
 programming_to_be_done = p_programming_to_be_done ,
 mileage = p_mileage 

WHERE  solicitude_code = p_solicitude_code ;

END;
	
$BODY$

LANGUAGE plpgsql;