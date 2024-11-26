DELIMITER $$

create function comparar_numeros(val1 int, val2 int)
returns varchar(20) deterministic
begin
	declare resu varchar(20);
    if val1 > val2 then
		set resu = "Mayor";
	elseif val1 = val2 then
		set resu = "Igual";
	else
		set resu = "menor";
	end if;
    return resu;
end$$
delimiter ;