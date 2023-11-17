
CREATE OR REPLACE FUNCTION public.insert_modification(
p_modification_code integer,
	p_modification_date date
)
RETURNS void AS
$BODY$
BEGIN
--  USO DE p_ PARA HACER NO CONFUNDIR CON LOS NOMBRES DE COLUMNAS DE LAS TABLAS
INSERT INTO modification (modification_code,modification_date) 
VALUES(p_modification_code,p_modification_date); 
END;
$BODY$
LANGUAGE plpgsql;