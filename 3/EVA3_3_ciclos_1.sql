delimiter |
create function sumatoria_loop(num int)
returns int deterministic
begin
	declare sumatoria int default 0;
    declare count int default 1;

	ciclo: loop
        set sumatoria = sumatoria + count;
        set count = count + 1;
        
        if count > num then
			leave ciclo;
        end if;
    end loop ciclo;

	return sumatoria;
end|
delimiter ;
