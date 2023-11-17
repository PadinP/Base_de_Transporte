CREATE OR REPLACE FUNCTION public.insert_car(
 p_car_number character varying,
 p_car_brand character varying,
 p_number_of_seats integer,
 p_id_cs integer
)
RETURNS void AS
$BODY$
BEGIN
--  USO DE p_ PARA HACER NO CONFUNDIR CON LOS NOMBRES DE COLUMNAS DE LAS TABLAS
INSERT INTO car (car_number,car_brand,number_of_seats,id_cs) 
VALUES(p_car_number,p_car_brand,p_number_of_seats,p_id_cs); 
END;
$BODY$
LANGUAGE plpgsql;