delimiter |
create function conversion_temp(formula int, valor int)
returns varchar(10) deterministic
begin
	declare resu varchar(10);
	case formula
    /*Celsius a Kelvin*/
		when 1 then set resu = valor + 273.15;
	/*Celsius a Farenheit*/
        when 2 then set resu = (valor * 1.8 + 32);
	/*Kelvin a Celsius*/
        when 3 then set resu = valor - 273.15;
	else
		set resu = "no valido";
	end case;
    return resu; 
end|
delimiter ;