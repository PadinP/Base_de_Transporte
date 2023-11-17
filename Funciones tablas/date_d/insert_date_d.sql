
CREATE OR REPLACE FUNCTION public.insert_date_d(
 p_id_data date,
 p_hour_d time without time zone
)
RETURNS void AS
$BODY$
BEGIN
--  USO DE p_ PARA HACER NO CONFUNDIR CON LOS NOMBRES DE COLUMNAS DE LAS TABLAS
INSERT INTO date_d (id_data , hour_d) 
VALUES(p_id_data , p_hour_d); 
END;
$BODY$
LANGUAGE plpgsql;

