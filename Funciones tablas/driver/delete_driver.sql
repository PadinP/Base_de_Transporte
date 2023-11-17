
CREATE OR REPLACE FUNCTION public.delete_driver(
   p_dni_driver character varying)
  RETURNS void AS
$BODY$
BEGIN
--  USO DE p_ PARA HACER NO CONFUNDIR CON LOS NOMBRES DE COLUMNAS DE LAS TABLAS
DELETE FROM driver WHERE dni_driver = p_dni_driver ;
END;
$BODY$
  LANGUAGE plpgsql;
