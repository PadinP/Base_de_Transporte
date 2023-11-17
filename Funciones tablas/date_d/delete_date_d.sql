
CREATE OR REPLACE FUNCTION public.delete_date_d(
     p_id_data date)
  RETURNS void AS
$BODY$
BEGIN
--  USO DE p_ PARA HACER NO CONFUNDIR CON LOS NOMBRES DE COLUMNAS DE LAS TABLAS
DELETE FROM date_d WHERE   id_data = p_id_data;
END;
$BODY$
  LANGUAGE plpgsql;
