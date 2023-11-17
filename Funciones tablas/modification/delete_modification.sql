
CREATE OR REPLACE FUNCTION public.delete_modification(
   p_modification_code integer
)
  RETURNS void AS
$BODY$
BEGIN
--  USO DE p_ PARA HACER NO CONFUNDIR CON LOS NOMBRES DE COLUMNAS DE LAS TABLAS
DELETE FROM modification WHERE modification_code = p_modification_code;
END;
$BODY$
  LANGUAGE plpgsql;
