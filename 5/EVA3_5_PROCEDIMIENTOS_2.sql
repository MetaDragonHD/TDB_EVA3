delimiter |
create function generar_correo(nombre varchar(50), apellido varchar(50), nomDep varchar(50))
returns varchar(30) deterministic
begin /* inical del nombre + . + apellido + @ + nombre del departamento + .com*/
		/*generar correo*/
	declare letraIni char(1);
    declare apell varchar(50);
    declare nameDep varchar(50);
    declare correo varchar(100);
    
    set letraIni = (select substring(nombre, 1, 1)); /* Guarda la primera letra del nombre*/
    set apell = apellido;
    set nameDep = nomDep;
    
    set correo = concat(letraIni+ "." + apell + "@" + nameDep + ".com");
    return correo;
end|
delimiter ;