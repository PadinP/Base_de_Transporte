CREATE OR REPLACE FUNCTION public.insert_programming_type(
 p_id_prog_type integer,
 p_prog_type_name character varying
)
RETURNS void AS
$BODY$
BEGIN
--  USO DE p_ PARA HACER NO CONFUNDIR CON LOS NOMBRES DE COLUMNAS DE LAS TABLAS
INSERT INTO programming_type (id_prog_type ,prog_type_name) 
VALUES(p_id_prog_type ,p_prog_type_name); 
END;
$BODY$
LANGUAGE plpgsql;

