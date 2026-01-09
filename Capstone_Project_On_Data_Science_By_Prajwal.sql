DROP DATABASE IF EXISTS CAPSTONE_PROJECT_PRAJWAL;
CREATE DATABASE CAPSTONE_PROJECT_PRAJWAL;
USE CAPSTONE_PROJECT_PRAJWAL;

SELECT * FROM account;
SELECT * FROM card;
SELECT * FROM client;
SELECT * FROM disp;
SELECT * FROM district;
SELECT * FROM loan;
SELECT * FROM orders;
SELECT * FROM transaction_data;

# Count the number of records in each table

SELECT COUNT(*) FROM account;
SELECT COUNT(*) FROM card;
SELECT COUNT(*) FROM client;
SELECT COUNT(*) FROM disp;
SELECT COUNT(*) FROM district;
SELECT COUNT(*) FROM loan;
SELECT COUNT(*) FROM orders;
SELECT COUNT(*) FROM transaction_data;

# Transaction and Loans table

CREATE TABLE loan_trans AS 
SELECT td.*,ln.loan_id,ln.date AS loan_date,ln.amount AS loan_amount,ln.duration,ln.payments,ln.status FROM loan ln
JOIN transaction_data td ON ln.account_id=td.account_id;

---------------------------------------------------------------------------------------------------------------------

# Account and Orders table

CREATE TABLE acc_ord AS 
SELECT o.*,acc.date AS account_date,acc.district_id AS account_district_id,acc.frequency FROM account acc
LEFT JOIN orders o ON acc.account_id = o.account_id;

------------------------------------------------------------------------------------------------------------------------

# Card and Disposition table

DROP TABLE IF EXISTS card_disp;
CREATE TABLE card_disp AS 
SELECT card.*,disp.account_id,disp.client_id AS disposition_client_id,disp.type AS disposition_type FROM card card
JOIN disp ON card.disp_id = disp.disp_id;

-------------------------------------------------------------------------------------------------------------------------

# Card and disposition combine with Client table based on client_id

DROP TABLE IF EXISTS card_disp_clent;
CREATE table card_disp_clent AS 
SELECT * FROM card_disp cd JOIN client c ON cd.disposition_client_id = c.client_id;

----------------------------------------------------------------------------------------------------------------------------

# Card,Disposition,client table with district Table based on client_id

DROP TABLE IF EXISTS card_disp_clent;
CREATE TABLE card_disp_clent AS 
SELECT * FROM card_disp cd JOIN client c ON cd.disposition_client_id = c.client_id;

------------------------------------------------------------------------------------------------------------------------------

# Card,Disposition,client table with district Table based on district id(inner join)

DROP TABLE IF EXISTS card_disp_client_dist;
CREATE TABLE card_disp_client_dist
SELECT * FROM card_disp_clent cdc JOIN district dist ON cdc.district_id = dist.A1;

------------------------------------------------------------------------------------------------------------------------------

# Account,order table with card,disposition, client, district table based on account id(left join)

DROP TABLE IF EXISTS acc_ord_card_disp_client_dist;
CREATE TABLE acc_ord_card_disp_client_dist AS
SELECT cdcd.*,ao.order_id,ao.bank_to,ao.account_to,ao.amount,ao.k_symbol,ao.account_date,ao.account_district_id,ao.frequency FROM acc_ord ao
LEFT JOIN card_disp_client_dist cdcd ON ao.account_id = cdcd.account_id; 

------------------------------------------------------------------------------------------------------------------------------

# Use the following SQL from Python to access data
# Join account, ordre, card, disposition, client, district with loan, transaction table based on account_id (inner Join)

SELECT * FROM acc_ord_card_disp_client_dist aocdcd JOIN loan_trans lt ON lt.account_id = aocdcd.account_id; 

SELECT * FROM loan_trans;

SELECT DISTINCT status FROM loan_trans;

/*
I want to predict this information. I need to do few independent variables like loan_amount,duration,payments
*/

ALTER USER 'root'@'localhost'
IDENTIFIED WITH mysql_native_password
BY 'Pajju@02';
