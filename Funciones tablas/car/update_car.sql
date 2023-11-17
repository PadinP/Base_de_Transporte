CREATE  OR REPLACE FUNCTION public.update_car(
p_car_number character varying,
p_car_brand character varying,
p_number_of_seats integer,
p_id_cs integer
)
RETURNS void AS
$BODY$
BEGIN

UPDATE car

SET car_number = p_car_number, 
car_brand = p_car_brand , 
number_of_seats = p_number_of_seats,
id_cs= p_id_cs

WHERE car_number = p_car_number;

END;
	
$BODY$

LANGUAGE plpgsql;