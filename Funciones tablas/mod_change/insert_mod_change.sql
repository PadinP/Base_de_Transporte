CREATE OR REPLACE FUNCTION public.insert_mod_change(
   p_id_modification integer
  
   
)
RETURNS void AS
$BODY$
BEGIN
--  USO DE p_ PARA HACER NO CONFUNDIR CON LOS NOMBRES DE COLUMNAS DE LAS TABLAS
INSERT INTO mod_change ( id_modification) 
VALUES( p_id_modification); 
END;
$BODY$
LANGUAGE plpgsql;

