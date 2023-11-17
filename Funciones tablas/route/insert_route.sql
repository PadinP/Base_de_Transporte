CREATE OR REPLACE FUNCTION public.insert_route(
 p_route_code integer,
 p_km_available_start double precision,
 p_pick_up_location character varying,
 p_end_time time without time  zone
 
)
RETURNS void AS
$BODY$
BEGIN
--  USO DE p_ PARA HACER NO CONFUNDIR CON LOS NOMBRES DE COLUMNAS DE LAS TABLAS
INSERT INTO route (route_code , km_available_start, pick_up_location ,end_time) 
VALUES(p_route_code , p_km_available_start, p_pick_up_location ,p_end_time); 
END;
$BODY$
LANGUAGE plpgsql;
