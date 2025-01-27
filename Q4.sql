CREATE OR REPLACE PROCEDURE BASKET_ADD_SP(
    LV_IDBASKET BB_BASKETITEM.IDBASKET%TYPE,
    LV_IDPRODUCT BB_BASKETITEM.IDPRODUCT%TYPE,
    LV_PRICE BB_BASKETITEM.PRICE%TYPE,
    LV_QUANTITY BB_BASKETITEM.QUANTITY%TYPE,
    LV_OPTION1 BB_BASKETITEM.OPTION1%TYPE,
    LV_OPTION2 BB_BASKETITEM.OPTION2%TYPE
)
    IS
BEGIN
    INSERT INTO BB_BASKETITEM (IDBASKETITEM, IDPRODUCT, PRICE, QUANTITY, IDBASKET, OPTION1, OPTION2)
    VALUES (BB_IDBASKETITEM_SEQ.nextval, LV_IDPRODUCT, LV_PRICE, LV_QUANTITY, LV_IDBASKET, LV_OPTION1, LV_OPTION2);
END;

DECLARE
    IDBASKET  BB_BASKETITEM.IDBASKET%TYPE  := 14;
    IDPRODUCT BB_BASKETITEM.IDPRODUCT%TYPE := 8;
    PRICE     BB_BASKETITEM.PRICE%TYPE     := 10.80;
    QUANTITY  BB_BASKETITEM.QUANTITY%TYPE  := 1;
    OPTION1   BB_BASKETITEM.OPTION1%TYPE   := 2;
    OPTION2   BB_BASKETITEM.OPTION2%TYPE   := 4;
BEGIN
    BASKET_ADD_SP(IDBASKET, IDPRODUCT, PRICE, QUANTITY, OPTION1, OPTION2);
END;