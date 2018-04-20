DROP TABLE ELECTION_TABLE;
DROP TABLE LATEST_RESULT_TABLE;
DROP TABLE MICRO_GAME_USER;
DROP TABLE SCORE_ID_TABLE;
DROP TABLE ALL_USER_ORDER;
DROP TABLE ORDERED_ITEMS;
DROP TABLE SHOP_ITEMS;
 
CREATE TABLE ELECTION_TABLE(
    ELECTION_ID NUMBER PRIMARY KEY, 
    ELECTION_NAME VARCHAR2(50),
	ELECTION_DESC VARCHAR2(120), 
	ELECTION_POINT NUMBER
);

CREATE TABLE MICRO_GAME_USER(
    USER_ID INTEGER PRIMARY KEY, --PK
    USER_NAME VARCHAR2(20),
    UPDATE_TIME DATE
);

CREATE TABLE LATEST_RESULT_TABLE(
    USER_ID INTEGER ,  --FK -> micro_gamer_user ->pk
    USER_SCORE VARCHAR2(20),
    UPDATE_TIME DATE,
    CONSTRAINT user_result_fk FOREIGN KEY (USER_ID) REFERENCES MICRO_GAME_USER(USER_ID)
);

CREATE TABLE SHOP_ITEMS(
    ITEM_ID INTEGER PRIMARY KEY,
    ITEM_NAME VARCHAR2(50),
    ITEM_DESC VARCHAR2(150),
    ITEM_VALUE INTEGER, 
    ITEM_QUANTITY INTEGER
)

CREATE TABLE ALL_USER_ORDER(
    ORDER_ID INTEGER PRIMARY KEY,
    USER_FIRST_NAME VARCHAR2(120),
    USER_SECOND_NAME VARCHAR2(120),
    USER_EMAIL VARCHAR2(120)
)

CREATE TABLE ORDERED_ITEMS(
    ORDER_ID INTEGER,
    ITEM_NAME VARCHAR2(120),
    ITEM_DESC VARCHAR2(120),
    ITEM_QUANTITY INTEGER,
    CONSTRAINT user_orders_fk FOREIGN KEY (ORDER_ID) REFERENCES ALL_USER_ORDER(ORDER_ID)
)
