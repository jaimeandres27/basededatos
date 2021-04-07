create database films;

use films;

create table profile(
  profile_id int not null,
  name varchar(500),
  primary key(profile_id)
);

create table gender(
  gender_id int not null,
  name varchar(500) not null,
  primary key(gender_id)
);

create table movie(
  movie_id int not null auto_increment,
  name varchar(500) not null,
  description longtext,
  image varchar(500) not null,
  create_at datetime not null,
  release_date date,
  actors varchar(500),
  gender_id int not null,
  rating int,
  primary key(movie_id),
  foreign key(gender_id) references gender(gender_id)
);

create table user(
  user_id int not null auto_increment,
  name varchar(500) not null,
  email varchar(100) not null,
  password varchar(500) not null,
  create_at datetime not null,
  profile_id int not null,
  primary key(user_id),
  foreign key(profile_id) references profile(profile_id),
  UNIQUE (email)
);

-- INSERTS -----
-- for gender
insert into gender(gender_id, name) values (1, 'Acción');
insert into gender(gender_id, name) values (2, 'Aventura');
insert into gender(gender_id, name) values (3, 'Comedia');
insert into gender(gender_id, name) values (4, 'Terror');
insert into gender(gender_id, name) values (5, 'Animado');
insert into gender(gender_id, name) values (6, 'Suspenso');
-- profile
insert into profile(profile_id, name) values (1, 'Administrador');
insert into profile(profile_id, name) values (2, 'Cliente');
-- user
INSERT INTO `user` (`user_id`, `name`, `email`, `password`, `create_at`, `profile_id`) VALUES
(1, 'Jaime Echavarria', 'jaime.echavarria@est.iudigital.edu.co', '12345', now(), 1),
(2, 'Mariah Carey', 'mariah.carey@est.iudigital.edu.co', '12345', now(), 2);
