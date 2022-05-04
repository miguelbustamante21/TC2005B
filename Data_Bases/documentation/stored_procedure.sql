delimiter $$ 
create procedure get_id(in user_n varchar(32))
begin 
	select user_id 
    from user_data
    where user_name = user_n;
end $$
delimiter ;