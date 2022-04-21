-- JazzSmash schema, por Juan Muniain, Migual Angel Bustamante, y Manuel Barrera

SET NAMES utf8mb4;

DROP SCHEMA IF EXISTS JazzSmash;
CREATE SCHEMA JazzSmash;
USE JazzSmash;

CREATE TABLE attempts (
	user_id smallint unsigned not null auto_increment,
    level_att varchar(32) not null, -- se requiere el nivel intentado
    score smallint unsigned default null,
    accuracy decimal default null,
    time_elapsed smallint unsigned not null default 0,
    result smallint unsigned not null default 0,
    date_time datetime on update current_timestamp,
    primary key (user_id)
);

CREATE TABLE user_data (
	user_name varchar(32) not null,
    user_id smallint unsigned not null auto_increment,
    country varchar(32) default null,
    lvl_1_highscore smallint unsigned not null default 0,
    lvl_2_highscore smallint unsigned not null default 0,
    lvl_1_rating tinyint unsigned default null,
    lvl_2_rating tinyint unsigned default null,
    lvl_1_attempts smallint unsigned not null default 0,
    lvl_2_attempts smallint unsigned not null default 0,
    primary key (user_name),
    -- key idx_fk_user_id (user_id),
    CONSTRAINT FOREIGN KEY (user_id) REFERENCES attempts (user_id) 
    ON DELETE RESTRICT ON UPDATE CASCADE
); -- Se usará InnoDB para la agrupación de datos con la llave principal (user_name)
