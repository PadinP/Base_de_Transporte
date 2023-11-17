CREATE OR REPLACE FUNCTION public.insert_solicitude(
 p_solicitude_code integer,
 p_programming_star_time time without time zone,
 p_programming_to_be_done character varying,
 p_mileage integer
)
RETURNS void AS
$BODY$
BEGIN
--  USO DE p_ PARA HACER NO CONFUNDIR CON LOS NOMBRES DE COLUMNAS DE LAS TABLAS
INSERT INTO solicitude (solicitude_code,programming_star_time , programming_to_be_done ,mileage) 
VALUES(p_solicitude_code, p_programming_star_time , p_programming_to_be_done ,p_mileage ); 
END;
$BODY$
LANGUAGE plpgsql;

