delimiter |
create procedure insertar_prueba(clave int)
begin
	declare exit handler for sqlstate '23000'
    begin
		select 'Error: Clave duplicada' as Mensaje;
    end;
    insert into prueba(id) value (clave);
    select 'Clave correcta' as Mensaje;
    return Mensaje;
end|
delimiter ;