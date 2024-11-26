delimiter |
create procedure insertar_productoo(in nombre varchar(40))
begin
	declare nuevo_id int;
    set nuevo_id = ultimo_id() + 1;
    insert into productos value (nuevo_id, nombre);
end|
delimiter :