CREATE  OR REPLACE FUNCTION public.update_group_tour(
p_group_code integer,
    p_group_country character varying,
    p_number_of_tourists integer
)
RETURNS void AS
$BODY$
BEGIN

UPDATE group_tour

SET group_code = p_group_code, 
group_country = p_group_country , number_of_tourists =  p_number_of_tourists 

WHERE group_code = p_group_code;

END;
	
$BODY$

LANGUAGE plpgsql;