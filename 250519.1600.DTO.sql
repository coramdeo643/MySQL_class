select * from borrows;
select * from books;
-- available 1 이면 대출 가능
-- 대출 가능 여부 확인 먼저 select(books)
-- 가능하다면 insert(borrows)
-- 대출 실행되었다면 (update books)available) = 0)

select available from books where id = 1;
insert into borrows (student_id, book_id, borrow_date) values(3, 1, current_date);
update books set available = 0 where id = 1;

-- 대출 반납 기능 만들기
-- insert(borrows - return_date), update(books available)

-- 현재 대출중인 목록 조회
select * from borrows where return_date is null;

-- // 도서 반납 처리 기능 추가
   --  // 1. borrows 테이블에 책 정보 조회 select(복합조건)
--     // 2. borrows 테이블에 return_date update
--     // 3. books 테이블 available 0 > 1 update
select * from borrows where student_id = 3 and book_id = 1 and return_date is null;
update borrows set return_date = curdate() where student_id = 3 and book_id = 1;
update books set available = 1 where available = 0 and id = 1;