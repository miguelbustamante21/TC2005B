CREATE VIEW user_top5_attempts as 
	select level_att, score, accuracy, time_elapsed, result, date_time 
    from jazzsmash.attempts 
    group by date_time; 
    
create view top5_countries as 
	select country, count(country) as num_countries 
    from jazzsmash.user_data 
    group by country 
    order by num_countries desc; 