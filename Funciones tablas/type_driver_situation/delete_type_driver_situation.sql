
CREATE OR REPLACE FUNCTION public.delete_type_driver_situation(
   p_id_type_ds integer )
  RETURNS void AS
$BODY$
BEGIN
--  USO DE p_ PARA HACER NO CONFUNDIR CON LOS NOMBRES DE COLUMNAS DE LAS TABLAS
DELETE FROM type_driver_situation WHERE  id_type_ds = p_id_type_ds ;
END;
$BODY$
  LANGUAGE plpgsql;
