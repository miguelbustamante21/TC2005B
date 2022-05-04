drop trigger update_attempts; 

delimiter $$
create trigger update_attempts  
	after insert on jazzsmash.attempts
    for each row 
    begin
		update level_data ld join (select jazzsmash.attempts.level_att, max(jazzsmash.attempts.score) as score from jazzsmash.attempts) r
		on r.level_att = ld.level_name 
        set ld.lvl_attempts = ld.lvl_attempts + 1;
	end $$ 
delimiter ; 
		