
CREATE OR REPLACE FUNCTION public.delete_car(
    p_car_number character varying)
  RETURNS void AS
$BODY$
BEGIN
--  USO DE p_ PARA HACER NO CONFUNDIR CON LOS NOMBRES DE COLUMNAS DE LAS TABLAS
DELETE FROM car WHERE car_number = p_car_number;
END;
$BODY$
  LANGUAGE plpgsql;
