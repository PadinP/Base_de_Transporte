
CREATE OR REPLACE FUNCTION public.delete_mod_change(
   p_id_modification integer)
  RETURNS void AS
$BODY$
BEGIN
--  USO DE p_ PARA HACER NO CONFUNDIR CON LOS NOMBRES DE COLUMNAS DE LAS TABLAS
DELETE FROM mod_change WHERE id_modification = p_id_modification;
END;
$BODY$
  LANGUAGE plpgsql;
