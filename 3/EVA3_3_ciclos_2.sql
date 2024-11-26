delimiter |
create function sumatoria_while(num int)
returns int deterministic
begin
	declare sumatoria int default 0;
    declare count int default 1;
	
    while count <= num do
		set sumatoria = sumatoria + count;
        set count = count + 1;
        
    end while;
	return sumatoria;
end|
delimiter ;