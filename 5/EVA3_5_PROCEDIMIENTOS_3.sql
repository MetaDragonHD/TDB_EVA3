delimiter $$
create function contar_empleados()
returns int reads sql data
begin
	declare cont int;
    select count(*) into cont from employees;
    return cont;
end$$
delimiter ;