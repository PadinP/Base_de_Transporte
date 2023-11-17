
CREATE OR REPLACE FUNCTION public.delete_car_situation(
    p_cs_code integer)
  RETURNS void AS
$BODY$
BEGIN
--  USO DE p_ PARA HACER NO CONFUNDIR CON LOS NOMBRES DE COLUMNAS DE LAS TABLAS
DELETE FROM car_situation WHERE cs_code = p_cs_code;
END;
$BODY$
  LANGUAGE plpgsql;
