delimiter |
create function calcular_potencia_repeat(base int, potencia int)
returns int deterministic
begin
	declare resu int default base;
    declare count int default 1;
	repeat
		set resu = resu * base;
		set count = count + 1;
    until count <= potencia end repeat;
    
	return resu;
end|
delimiter ;