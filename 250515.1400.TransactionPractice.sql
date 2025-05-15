-- MySQL 워크벤치에서 트랜잭션 사용해보기
-- 홍길동 계좌에서 이순신 계좌로 20만원 이체 요청
set autocommit = 0;
start transaction;
-- 홍길동 계좌에 잔액확인
set @bal = (select balance from accounts where account_id = 1);
-- 잔액이 충분하다면 true, 아니면 false
set @is_valid = (@bal >= 50000);
-- 홍길동 계좌에 잔액 수정 처리
update accounts 
set balance = balance - 50000
where account_id = 1 and @is_valid;
-- 이순신 계좌 잔액 수정 처리
update accounts 
set balance = balance + 50000
where account_id = 2 and @is_valid;

select * from accounts;
-- if(@is_valid, commit, rollback);
rollback;