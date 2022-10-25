-- create table board (
--     num int auto_increment,
--     title varchar(200) not null,
--     content varchar(2000) not null,
--     id varchar(10) not null,
--     postdate timestamp default current_timestamp not null,
--     visitcount decimal(6) default 0,
--     primary key (num)
-- );

select * from board;
update board set visitcount = 10 where num = 1; 
