CREATE OR REPLACE FUNCTION public.insert_type_car_situation(
 p_id_type_cs integer,
 p_type_cs_name character varying
)
RETURNS void AS
$BODY$
BEGIN
--  USO DE p_ PARA HACER NO CONFUNDIR CON LOS NOMBRES DE COLUMNAS DE LAS TABLAS
INSERT INTO type_car_situation (id_type_cs , type_cs_name) 
VALUES(p_id_type_cs , p_type_cs_name); 
END;
$BODY$
LANGUAGE plpgsql;

