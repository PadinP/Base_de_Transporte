CREATE OR REPLACE FUNCTION public.insert_car_situation(
 p_cs_code integer,
p_return_date_cs date,
p_current_date_cs date,
p_id_aut_type_cs integer
)
RETURNS void AS
$BODY$
BEGIN
--  USO DE p_ PARA HACER NO CONFUNDIR CON LOS NOMBRES DE COLUMNAS DE LAS TABLAS
INSERT INTO car_situation (cs_code ,return_date_cs ,current_date_cs ,id_aut_type_cs) 
VALUES(p_cs_code ,p_return_date_cs ,p_current_date_cs ,p_id_aut_type_cs ); 
END;
$BODY$
LANGUAGE plpgsql;