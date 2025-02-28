/* Friendly Cars Dealership User Creation and Grant Privileges */

CREATE USER car_view_user IDENTIFIED BY my_carPassword;

GRANT CONNECT, RESOURCE TO car_view_user;
GRANT SELECT ON CarCustomerView TO car_view_user;
GRANT SELECT ON CarSalespersonView TO car_view_user;
GRANT SELECT ON CarAdView TO car_view_user;
GRANT SELECT ON CarSaleView TO car_view_user;
GRANT SELECT ON CarInsuranceView TO car_view_user;
GRANT SELECT ON CarFinancingView TO car_view_user;

CREATE USER user_2 IDENTIFIED BY user_2;
CREATE USER user_3 IDENTIFIED BY user_3;
CREATE USER user_4 IDENTIFIED BY user_4;
CREATE USER user_5 IDENTIFIED BY user_5;

GRANT CONNECT, RESOURCE TO user_2;
GRANT CONNECT, RESOURCE TO user_3;
GRANT CONNECT, RESOURCE TO user_4;
GRANT CONNECT, RESOURCE TO user_5;
GRANT SELECT ON CarCustomerView TO user_2;
GRANT INSERT ON CarSalesperson TO user_3;
GRANT SELECT, INSERT, DELETE ON carSurvey TO user_4 WITH GRANT OPTION;
GRANT SELECT, INSERT, DELETE ON CarWarrantee TO user_5;