delimiter |
create function agregar_pais(id varchar(2),nombre varchar(40))
returns int deterministic reads sql data
begin
	insert into countries(country_id, country_name, region_id) value (id, nombre, 1);
    return 1;
end|
delimiter :