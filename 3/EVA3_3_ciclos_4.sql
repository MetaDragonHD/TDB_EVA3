delimiter |
create function calcular_potencia_loop(base int, potencia int)
returns int deterministic
begin
	declare resu int default 1;
    declare count int default 0;

	ciclo: loop
		set resu = resu * base;
		set count = count + 1;
        if count >= potencia then
			leave ciclo;
        end if;
    end loop ciclo;

	return resu;
end|
delimiter ;