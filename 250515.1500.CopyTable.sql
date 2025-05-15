-- how to copy the table

-- 1. 테이블 구조만 복사하는 방법(컬럼)
create table 새_테이블
as select * from 기존_테이블 where 1 = 0;

select * from accounts;

-- copy the table structure only(without data)
create table new_accounts
as select * from accounts where 1 = 0;

select * from new_accounts;

-- 2. 테이블 전체복사(구조+데이터)
create table new_accounts_2
as select * from accounts;

select * from new_accounts_2;