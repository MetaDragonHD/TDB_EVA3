CREATE FUNCTION mostrar_mensaje(cadena varchar(30))
returns varchar(100) deterministic /*Deterministic depende si el resultado es el mismo, en este caso si lo es, por si la cadena que introducimos es la misma*/
return concat("TU MENSAJE: ", cadena);