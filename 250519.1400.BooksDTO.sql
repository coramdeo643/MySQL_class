select * from books;
insert into books (title, author, publisher, publication_year, isbn) 
	values ('title', 'author', 'publisher', '2025', '123123');
show create table books;
CREATE TABLE `books` (
   `id` int NOT NULL AUTO_INCREMENT,
   `title` varchar(255) NOT NULL,
   `author` varchar(255) NOT NULL,
   `publisher` varchar(255) DEFAULT NULL,
   `publication_year` int DEFAULT NULL,
   `isbn` varchar(13) DEFAULT NULL,
   `available` tinyint(1) DEFAULT '1',
   PRIMARY KEY (`id`)
 );
select * from books where title like '%입%';

select * from students;
select * from students where student_id = '20230001';