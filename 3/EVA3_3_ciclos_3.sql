delimiter |
create function sumatoria_repeat(num int)
returns int deterministic
begin
	declare sumatoria int default 0;
    declare count int default 1;
	
    repeat
		set sumatoria = sumatoria + count;
        set count = count + 1;
	
    until count <= num end repeat;
	return sumatoria;
end|
delimiter ;