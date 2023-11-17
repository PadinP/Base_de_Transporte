
CREATE OR REPLACE FUNCTION public.delete_type_car_situation(
   p_id_type_cs integer )
  RETURNS void AS
$BODY$
BEGIN
--  USO DE p_ PARA HACER NO CONFUNDIR CON LOS NOMBRES DE COLUMNAS DE LAS TABLAS
DELETE FROM type_car_situation WHERE  id_type_cs = p_id_type_cs ;
END;
$BODY$
  LANGUAGE plpgsql;
