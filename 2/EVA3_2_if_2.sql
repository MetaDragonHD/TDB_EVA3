delimiter |
create function es_par(numero int)
returns varchar(20) deterministic
begin
	declare residuo int;
    declare resu varchar(20);
    set residuo = mod(numero, 2);
    if residuo = 0 then
		set resu = "par";
	else
		set resu = "impar";
	end if;
    return resu;
end|