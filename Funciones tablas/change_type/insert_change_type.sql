--select * from change_type
CREATE OR REPLACE FUNCTION public.insert_change_type(
 p_id_change_type integer,
 p_change_type_name character varying
)
RETURNS void AS
$BODY$
BEGIN
--  USO DE p_ PARA HACER NO CONFUNDIR CON LOS NOMBRES DE COLUMNAS DE LAS TABLAS
INSERT INTO change_type (id_change_type,change_type_name) 
VALUES(p_id_change_type,p_change_type_name); 
END;
$BODY$
LANGUAGE plpgsql;
























































