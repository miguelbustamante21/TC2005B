drop trigger update_highscore; 

delimiter $$
create trigger update_highscore  
	after insert on jazzsmash.attempts
    for each row 
    begin
		update level_data ld join (select jazzsmash.attempts.level_att, max(jazzsmash.attempts.score) as score from jazzsmash.attempts) r
		on r.level_att = ld.level_name 
        set ld.lvl_highscore = r.score
        where r.score > ld.lvl_highscore;
	end $$ 
delimiter ; 
		