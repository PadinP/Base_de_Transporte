
CREATE OR REPLACE FUNCTION public.delete_route(
    p_route_code integer)
  RETURNS void AS
$BODY$
BEGIN
--  USO DE p_ PARA HACER NO CONFUNDIR CON LOS NOMBRES DE COLUMNAS DE LAS TABLAS
DELETE FROM route WHERE  route_code = p_route_code ;
END;
$BODY$
  LANGUAGE plpgsql;
