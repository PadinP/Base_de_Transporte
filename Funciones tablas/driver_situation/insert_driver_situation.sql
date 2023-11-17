CREATE OR REPLACE FUNCTION public.insert_driver_situation(
p_ds_code integer,
p_return_date_ds date,
p_current_date_ds date,
p_id_aut_type_ds integer
)
RETURNS void AS
$BODY$
BEGIN
--  USO DE p_ PARA HACER NO CONFUNDIR CON LOS NOMBRES DE COLUMNAS DE LAS TABLAS
INSERT INTO driver_situation (ds_code , return_date_ds ,current_date_ds ,id_aut_type_ds) 
VALUES(p_ds_code , p_return_date_ds , p_current_date_ds , p_id_aut_type_ds); 
END;
$BODY$
LANGUAGE plpgsql;
