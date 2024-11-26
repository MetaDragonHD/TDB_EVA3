DELIMITER $$
create function sumar_numeros(num1 int, num2 int)
returns int deterministic
begin /*Bloque de codigo*/
	declare	suma int;
	set suma = num1 + num2;
    return suma;
end$$ /*TERMINA Bloque de codigo (siempre en punto y coma ;) */
DELIMITER ;