CREATE OR REPLACE FUNCTION public.insert_type_driver_situation(
 p_id_type_ds integer,
 p_type_ds_name character varying
)
RETURNS void AS
$BODY$
BEGIN
--  USO DE p_ PARA HACER NO CONFUNDIR CON LOS NOMBRES DE COLUMNAS DE LAS TABLAS
INSERT INTO type_driver_situation (id_type_ds , type_ds_name) 
VALUES(p_id_type_ds , p_type_ds_name); 
END;
$BODY$
LANGUAGE plpgsql;

