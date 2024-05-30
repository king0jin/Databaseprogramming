-- update_log 테이블 생성
CREATE TABLE update_log (
    id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    userId VARCHAR2(50),
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- 트리거 생성
CREATE OR REPLACE TRIGGER user_update_log
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
    INSERT INTO update_log (userId, updated_at)
    VALUES (:OLD.userId, SYSTIMESTAMP);
END;
/