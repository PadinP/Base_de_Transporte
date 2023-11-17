CREATE OR REPLACE FUNCTION public.insert_driver(
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
--  USO DE p_ PARA HACER NO CONFUNDIR CON LOS NOMBRES DE COLUMNAS DE LAS TABLAS
INSERT INTO driver (dni_driver,driver_name ,home_address ,category ,is_copilot ,id_ds , id_car ) 
VALUES(p_dni_driver, p_driver_name , p_home_address ,p_category ,p_is_copilot ,p_id_ds , p_id_car ); END;
$BODY$
LANGUAGE plpgsql;

