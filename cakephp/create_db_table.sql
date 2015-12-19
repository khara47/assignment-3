
create database db_cakeblog;

grant all on db_cakeblog.* to admin_cakeblog@"%" identified by "mypassword";
flush privileges;

use db_cakeblog;
create table posts (
	id int unsigned auto_increment primary key,
	title varchar(50),
	body text,
	created datetime default null,
	modified datetime default null
);

insert into posts (title, body, created)
	values ('The title', 'Thtis is the post body.', now());
insert into posts (title, body, created)
	values ('A title once again', 'And the post body follows.', now());
insert into posts (title, body, created)
	values ('Title strikes back', 'This is really exciting! Not.', now());
