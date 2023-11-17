
CREATE OR REPLACE FUNCTION public.delete_solicitude(
   p_solicitude_code integer)
  RETURNS void AS
$BODY$
BEGIN
--  USO DE p_ PARA HACER NO CONFUNDIR CON LOS NOMBRES DE COLUMNAS DE LAS TABLAS
DELETE FROM solicitude WHERE  solicitude_code = p_solicitude_code ;
END;
$BODY$
  LANGUAGE plpgsql;
