

 CREATE  OR REPLACE FUNCTION public.update_route(
 p_route_code integer,
 p_km_available_start double precision,
 p_pick_up_location character varying,
 p_end_time time without time  zone
)
RETURNS void AS
$BODY$
BEGIN

UPDATE route

SET route_code = p_route_code , km_available_start = p_km_available_start, pick_up_location = p_pick_up_location , end_time = p_end_time

WHERE route_code = p_route_code ;

END;
	
$BODY$

LANGUAGE plpgsql;