select jazzsmash.attempts.score, jazzsmash.level_data.lvl_highscore 
from jazzsmash.attempts inner join jazzsmash.level_data on attempts.level_att = level_data.level_name; 
