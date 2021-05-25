CREATE DATABASE moodtracker;

create table user
(
    id   int      not null
        primary key,
    name tinytext null
);

create table mood
(
    timestamp datetime     not null,
    score     decimal(1,0)   not null,
    user_id int
);

alter table mood
    add constraint mood_use_id_fk
        foreign key (user_id) references `user` (id);