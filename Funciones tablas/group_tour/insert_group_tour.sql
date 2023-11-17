CREATE OR REPLACE FUNCTION public.insert_group_tour(
    p_group_code integer,
    p_group_country character varying,
    p_number_of_tourists integer)
  RETURNS void AS
$BODY$
BEGIN
--  USO DE p_ PARA HACER NO CONFUNDIR CON LOS NOMBRES DE COLUMNAS DE LAS TABLAS
INSERT INTO group_tour (group_code , group_country , number_of_tourists ) 
VALUES(p_group_code , p_group_country , p_number_of_tourists ); 
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION public.insert_group_tour(integer, character varying, integer)
  OWNER TO postgres;
