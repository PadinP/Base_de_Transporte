
CREATE OR REPLACE FUNCTION public.delete_group_tour(
    p_group_code integer)
  RETURNS void AS
$BODY$
BEGIN
--  USO DE p_ PARA HACER NO CONFUNDIR CON LOS NOMBRES DE COLUMNAS DE LAS TABLAS
DELETE FROM group_tour WHERE group_code = p_group_code;
END;
$BODY$
  LANGUAGE plpgsql;

