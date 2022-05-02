delimiter $$
create trigger update_highscore  
	after update on jazzsmash.attempts 
    for each row 
    begin
		if attempts.level_att <=> level_data.level_name 
        then
			if attempts.score > level_data.lvl_highscore
            then 
				set level_data.lvl_highscore = attempts.score;	
			end if; 
		end if; 
	end $$ 
delimiter ; 
		