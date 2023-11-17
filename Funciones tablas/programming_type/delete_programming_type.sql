
CREATE OR REPLACE FUNCTION public.delete_change_type(
   p_id_change_type integer)
  RETURNS void AS
$BODY$
BEGIN
--  USO DE p_ PARA HACER NO CONFUNDIR CON LOS NOMBRES DE COLUMNAS DE LAS TABLAS
DELETE FROM change_type WHERE  id_change_type  = p_id_change_type ;
END;
$BODY$
  LANGUAGE plpgsql;
