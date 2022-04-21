-- attempt data
insert into JazzSmash.attempts(user_id, level_att, score, accuracy, time_elapsed, result, date_time) 
values (1, 'lvl1', 2015, 75.00, 120, 375, '2022-04-13 20:40:31');
insert into JazzSmash.attempts(user_id, level_att, score, accuracy, time_elapsed, result, date_time) 
values (2, 'lvl2', 2400, 100.00, 120, 500, '2022-04-13 20:41:00');
insert into JazzSmash.attempts(user_id, level_att, score, accuracy, time_elapsed, result, date_time) 
values (3, 'lvl2', 1200, 50.00, 120, 250, '2022-04-13 20:42:00');
insert into JazzSmash.attempts(user_id, level_att, score, accuracy, time_elapsed, result, date_time) 
values (4, 'lvl1', 1235, 75.00, 120, 375, '2022-04-13 20:43:00');
insert into JazzSmash.attempts(user_id, level_att, score, accuracy, time_elapsed, result, date_time) 
values (5, 'lvl1', 2325, 50.00, 120, 250, '2022-04-13 20:44:30');
insert into JazzSmash.attempts(user_id, level_att, score, accuracy, time_elapsed, result, date_time) 
values (6, 'lvl1', 2325, 75.00, 120, 375, '2022-04-13 20:45:37');
insert into JazzSmash.attempts(user_id, level_att, score, accuracy, time_elapsed, result, date_time) 
values (7, 'lvl2', 1005, 50.00, 120, 250, '2022-04-13 20:46:00');
insert into JazzSmash.attempts(user_id, level_att, score, accuracy, time_elapsed, result, date_time) 
values (8, 'lvl1', 1565, 50.00, 120, 250, '2022-04-13 20:47:00');
insert into JazzSmash.attempts(user_id, level_att, score, accuracy, time_elapsed, result, date_time) 
values (9, 'lvl2', 2225, 25.00, 120, 125, '2022-04-13 20:48:00');
insert into JazzSmash.attempts(user_id, level_att, score, accuracy, time_elapsed, result, date_time) 
values (10, 'lvl2', 1335, 25.00, 120, 125, '2022-04-13 20:49:00');
insert into JazzSmash.attempts(user_id, level_att, score, accuracy, time_elapsed, result, date_time) 
values (11, 'lvl1', 1400, 50.00, 120, 250, '2022-04-13 20:50:01');
insert into JazzSmash.attempts(user_id, level_att, score, accuracy, time_elapsed, result, date_time) 
values (12, 'lvl1', 2340, 75.00, 120, 375, '2022-04-13 20:50:31');
insert into JazzSmash.attempts(user_id, level_att, score, accuracy, time_elapsed, result, date_time) 
values (13, 'lvl1', 1035, 25.00, 120, 1255, '2022-04-13 20:51:31');
insert into JazzSmash.attempts(user_id, level_att, score, accuracy, time_elapsed, result, date_time) 
values (14, 'lvl1', 2045, 50.00, 120, 250, '2022-04-13 20:52:31');
insert into JazzSmash.attempts(user_id, level_att, score, accuracy, time_elapsed, result, date_time) 
values (15, 'lvl2', 2095, 25.00, 120, 125, '2022-04-13 20:53:31');
insert into JazzSmash.attempts(user_id, level_att, score, accuracy, time_elapsed, result, date_time) 
values (16, 'lvl2', 2200, 50.00, 120, 250, '2022-04-13 20:54:31');
insert into JazzSmash.attempts(user_id, level_att, score, accuracy, time_elapsed, result, date_time) 
values (17, 'lvl1', 2205, 25.00, 120, 125, '2022-04-13 20:55:31');
insert into JazzSmash.attempts(user_id, level_att, score, accuracy, time_elapsed, result, date_time) 
values (18, 'lvl1', 1995, 25.00, 120, 125, '2022-04-13 20:56:31');
insert into JazzSmash.attempts(user_id, level_att, score, accuracy, time_elapsed, result, date_time) 
values (19, 'lvl2', 1605, 75.00, 120, 375, '2022-04-13 20:57:31');
insert into JazzSmash.attempts(user_id, level_att, score, accuracy, time_elapsed, result, date_time) 
values (20, 'lvl1', 1455, 50.00, 120, 250, '2022-04-13 20:58:31');

-- user data
insert into JazzSmash.user_data(user_name, country, lvl_1_highscore, lvl_2_highscore, lvl_1_rating, lvl_2_rating, lvl_1_attempts, lvl_2_attempts) 
values ('Juan Muniain', 'Mexico', 2015, 0, null, 5, 1, 0);
insert into JazzSmash.user_data(user_name, country, lvl_1_highscore, lvl_2_highscore, lvl_1_rating, lvl_2_rating, lvl_1_attempts, lvl_2_attempts) 
values ('Octavio Navarro', '', 0, 2400, null, 4, 0, 1);
insert into JazzSmash.user_data(user_name, country, lvl_1_highscore, lvl_2_highscore, lvl_1_rating, lvl_2_rating, lvl_1_attempts, lvl_2_attempts) 
values ('Miguel Bustamante', 'Brazil', 0, 1200, null, 3, 0, 1);
insert into JazzSmash.user_data(user_name, country, lvl_1_highscore, lvl_2_highscore, lvl_1_rating, lvl_2_rating, lvl_1_attempts, lvl_2_attempts) 
values ('Manuel Barrera', 'Argentina', 1235, 0, 5, null, 1, 0);
insert into JazzSmash.user_data(user_name, country, lvl_1_highscore, lvl_2_highscore, lvl_1_rating, lvl_2_rating, lvl_1_attempts, lvl_2_attempts) 
values ('friedshrimp07', 'Venezuela', 2325, 0, 5, null, 1, 0);
insert into JazzSmash.user_data(user_name, country, lvl_1_highscore, lvl_2_highscore, lvl_1_rating, lvl_2_rating, lvl_1_attempts, lvl_2_attempts) 
values ('awesomebanana', 'Somalia', 2325, 0, 4, null, 1, 0);
insert into JazzSmash.user_data(user_name, country, lvl_1_highscore, lvl_2_highscore, lvl_1_rating, lvl_2_rating, lvl_1_attempts, lvl_2_attempts) 
values ('susbaka', 'Greenland', 0, 1005, null, 3, 0, 1);
insert into JazzSmash.user_data(user_name, country, lvl_1_highscore, lvl_2_highscore, lvl_1_rating, lvl_2_rating, lvl_1_attempts, lvl_2_attempts) 
values ('Percussionarts', 'United States', 1565, 0, 3, null, 1, 0);
insert into JazzSmash.user_data(user_name, country, lvl_1_highscore, lvl_2_highscore, lvl_1_rating, lvl_2_rating, lvl_1_attempts, lvl_2_attempts) 
values ('Gilecheverria', 'mexico', 0, 2225, null, 5, 0, 1);
insert into JazzSmash.user_data(user_name, country, lvl_1_highscore, lvl_2_highscore, lvl_1_rating, lvl_2_rating, lvl_1_attempts, lvl_2_attempts) 
values ('coolpenguin', 'Antartica', 0, 1335, null, 4, 0, 1);
insert into JazzSmash.user_data(user_name, country, lvl_1_highscore, lvl_2_highscore, lvl_1_rating, lvl_2_rating, lvl_1_attempts, lvl_2_attempts) 
values ('user1', 'mexico', 1400, 0, 3, null, 1, 0);
insert into JazzSmash.user_data(user_name, country, lvl_1_highscore, lvl_2_highscore, lvl_1_rating, lvl_2_rating, lvl_1_attempts, lvl_2_attempts) 
values ('user2', 'mexico', 2340, 0, 5, null, 1, 0);
insert into JazzSmash.user_data(user_name, country, lvl_1_highscore, lvl_2_highscore, lvl_1_rating, lvl_2_rating, lvl_1_attempts, lvl_2_attempts) 
values ('user3', 'mexico', 1035, 0, 3, null, 1, 0);
insert into JazzSmash.user_data(user_name, country, lvl_1_highscore, lvl_2_highscore, lvl_1_rating, lvl_2_rating, lvl_1_attempts, lvl_2_attempts) 
values ('user4', '', 2045, 0, 5, null, 1, 0);
insert into JazzSmash.user_data(user_name, country, lvl_1_highscore, lvl_2_highscore, lvl_1_rating, lvl_2_rating, lvl_1_attempts, lvl_2_attempts) 
values ('user5', 'mexico', 0, 2095, null, 4, 0, 1);
insert into JazzSmash.user_data(user_name, country, lvl_1_highscore, lvl_2_highscore, lvl_1_rating, lvl_2_rating, lvl_1_attempts, lvl_2_attempts) 
values ('user6', 'mexico', 0, 2200, null, 5, 0, 1);
insert into JazzSmash.user_data(user_name, country, lvl_1_highscore, lvl_2_highscore, lvl_1_rating, lvl_2_rating, lvl_1_attempts, lvl_2_attempts) 
values ('user7', '', 2205, 0, 3, null, 1, 0);
insert into JazzSmash.user_data(user_name, country, lvl_1_highscore, lvl_2_highscore, lvl_1_rating, lvl_2_rating, lvl_1_attempts, lvl_2_attempts) 
values ('user8', 'mexico', 1995, 0, 4, null, 1, 0);
insert into JazzSmash.user_data(user_name, country, lvl_1_highscore, lvl_2_highscore, lvl_1_rating, lvl_2_rating, lvl_1_attempts, lvl_2_attempts) 
values ('user9', '', 0, 1605, 3, null, 0, 1);
insert into JazzSmash.user_data(user_name, country, lvl_1_highscore, lvl_2_highscore, lvl_1_rating, lvl_2_rating, lvl_1_attempts, lvl_2_attempts) 
values ('user10', '', 1455, 0, 4, null, 1, 0);

-- visualizacion de datos
select * from JazzSmash.attempts;
select * from JazzSmash.user_data;
desc JazzSmash.attempts;
desc JazzSmash.user_data;