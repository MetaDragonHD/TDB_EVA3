delimiter |
create function calcular_potencia_while(base int, potencia int)
returns int deterministic
begin
	declare resu int default base;
    declare count int default 1;
	
    while count <= potencia do
		set resu = resu * base;
		set count = count + 1;
    end while;
	return resu;
end|
delimiter ;