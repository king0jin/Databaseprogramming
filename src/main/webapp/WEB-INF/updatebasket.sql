CREATE OR REPLACE PROCEDURE add_to_basket(
    p_user_id NUMBER,
    p_today DATE,
    p_cafeteria NUMBER,
    p_menu VARCHAR2,
    p_price NUMBER,
    p_cnt NUMBER
) IS
BEGIN
    INSERT INTO basket (user_id, today, cafeteria, menu, price, cnt)
    VALUES (p_user_id, p_today, p_cafeteria, p_menu, p_price, p_cnt);
    COMMIT;
END;
/