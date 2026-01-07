# A-Capstone-Project-on-Data-Science-and-Analytics

----

**This project will showcase an end-to-end solution of Data Science processes and technologies.**  

**In this project the raw real-time data has to be stored in the staging area (Database) and from there all the ETL functionalities has to be performed.**

#### 1.	Datasets Entity mapping
<img width="821" height="400" alt="Screenshot 2026-01-07 192647" src="https://github.com/user-attachments/assets/09c88f23-c673-475d-ad57-0f1236edafb9" />


**With the help of this entity mapping, you have to prepare a Master table that takes into consideration all the related tables mentioned above. Make sure all the clients id has been considered in the master table which is common to all.**

#### The Datasets descriptions are as follows:

-	The data about the clients and their accounts consist of following relations:

-	relation account (4500 objects in the file ACCOUNT.ASC) - each record describes static characteristics of an account,

-	relation client (5369 objects in the file CLIENT.ASC) - each record describes characteristics of a client,

-	relation disposition (5369 objects in the file DISP.ASC) - each record relates together a client with an account i.e. this relation describes the rights of clients to operate accounts,

-	relation permanent order (6471 objects in the file ORDER.ASC) - each record describes characteristics of a payment order,

-	relation transaction (1056320 objects in the file TRANS.ASC) - each record describes one transaction on an account,

-	relation loan (682 objects in the file LOAN.ASC) - each record describes a loan granted for a given account,

-	relation credit card (892 objects in the file CARD.ASC) - each record describes a credit card issued to an account,

-	relation demographic data (77 objects in the file DISTRICT.ASC) - each record describes demographic characteristics of a district.

-	Each account has both static characteristics (e.g. date of creation, address of the branch) given in relation "account" and dynamic characteristics (e.g. payments debited or credited, balances) given in relations "permanent order" and "transaction". Relation "client" describes characteristics of persons who can manipulate with the accounts. One client can have more accounts, more clients can manipulate with single account; clients and accounts are related together in relation "disposition". Relation’s "loan" and "credit card" describe some services which the bank offers to its clients; more credit cards can be issued to an account, at most one loan can be granted for an account. Relation "demographic data" gives some publicly available information about the districts (e.g. the unemployment rate); additional information about the clients can be deduced from this.
----
# Data Set
----
- account.csv
- card.csv
- client.csv
- disp.csv
- district.csv
- loan.csv
- order.csv

**Open the data file in Excel**
**Data -> From Text -> File Name -> Next**

- **Load all the Files to MySQL Server database and create separate tables for each file**
- Right Click Tables -> Table Data Import Wizard
<img width="1762" height="982" alt="Screenshot 2026-01-07 202256" src="https://github.com/user-attachments/assets/f2dd59c4-863d-4af3-966c-96db7766dd3b" />

- Click Browse
  - Select the folder where data is available
  - Select .csv file Name
  - Click Open
<img width="1829" height="972" alt="Screenshot 2026-01-07 202625" src="https://github.com/user-attachments/assets/5f24ab6e-76b2-4599-a8d9-da816fc6cc93" />

- Click Next on Select File to Import
<img width="1066" height="786" alt="Screenshot 2026-01-07 202554" src="https://github.com/user-attachments/assets/75057e97-f4f3-46e2-9c8e-19284df0b5ba" />

- Data Base name and Table Name Auto populate - Update any change required
<img width="1389" height="1000" alt="Screenshot 2026-01-07 202713" src="https://github.com/user-attachments/assets/39a6432e-acef-407a-839a-c3b51d493ce6" />

- Use Default and click Next
<img width="1185" height="961" alt="Screenshot 2026-01-07 202748" src="https://github.com/user-attachments/assets/b964a569-1008-4727-a970-cda3a265ace2" />

- Use Default and click Next
<img width="1171" height="959" alt="Screenshot 2026-01-07 202928" src="https://github.com/user-attachments/assets/96819e91-ef80-4c0e-b0f7-93675109d9f7" />

- Once the Data import is complete click Next
<img width="1171" height="959" alt="Screenshot 2026-01-07 202928" src="https://github.com/user-attachments/assets/6b3de707-bab5-4ba4-807e-caa3d2aa0caf" />

- Click Finish
<img width="895" height="630" alt="image" src="https://github.com/user-attachments/assets/4cd71268-9cbf-48b3-8096-1f42aa6ba382" />

----
# How my tables look like and Count the number of records in each table

- **account table**
<img width="1561" height="811" alt="Screenshot 2026-01-07 205609" src="https://github.com/user-attachments/assets/d7806e5d-958f-483f-94d7-47d561d07fda" />
<img width="814" height="300" alt="Screenshot 2026-01-07 210600" src="https://github.com/user-attachments/assets/4cecdc96-4de3-4c62-825e-ed87861f083e" />

---

- **card table**
<img width="1283" height="760" alt="Screenshot 2026-01-07 205631" src="https://github.com/user-attachments/assets/c912a3fc-9d4b-4d5d-9b0f-bd4351972022" />
<img width="654" height="296" alt="Screenshot 2026-01-07 210621" src="https://github.com/user-attachments/assets/8e5f521d-4539-41c0-a1be-1674c54a9863" />

---

- **client table**
<img width="1272" height="809" alt="Screenshot 2026-01-07 205654" src="https://github.com/user-attachments/assets/0505f4af-0eda-4927-ab77-89c52f1c9767" />
<img width="777" height="352" alt="Screenshot 2026-01-07 210640" src="https://github.com/user-attachments/assets/0d964f3d-3eef-4541-8c0b-20dbca602512" />

- **disp table**
<img width="1301" height="736" alt="Screenshot 2026-01-07 205715" src="https://github.com/user-attachments/assets/41fb06e9-b470-41b2-b1db-7b02cb9ac882" />
<img width="793" height="323" alt="Screenshot 2026-01-07 210700" src="https://github.com/user-attachments/assets/6754e19f-c30b-4396-8db6-65d93a23e6e7" />

- **district table**
<img width="1266" height="774" alt="Screenshot 2026-01-07 205734" src="https://github.com/user-attachments/assets/30ca7a8b-9a2d-4a0d-82c8-920ed3b055cf" />
<img width="779" height="278" alt="Screenshot 2026-01-07 210714" src="https://github.com/user-attachments/assets/2d446d15-1436-46a9-80fa-0f58fcc4cc88" />

- **loan table**
<img width="1207" height="752" alt="Screenshot 2026-01-07 205815" src="https://github.com/user-attachments/assets/cbb2ae0c-fd73-4f6c-a9f7-64cd0db2ae08" />
<img width="787" height="300" alt="Screenshot 2026-01-07 210729" src="https://github.com/user-attachments/assets/4e58fe84-b561-4330-a457-47e9eeb02480" />

- **orders table**
<img width="1275" height="802" alt="Screenshot 2026-01-07 205844" src="https://github.com/user-attachments/assets/a36f56cc-6323-4750-8498-14daccea7cbd" />
<img width="781" height="255" alt="Screenshot 2026-01-07 210742" src="https://github.com/user-attachments/assets/a443fc7c-3915-433c-a452-67d7d497389b" />

- **transaction_data table**
<img width="1164" height="752" alt="Screenshot 2026-01-07 205906" src="https://github.com/user-attachments/assets/8f8b1140-1cc3-4a36-a4a8-2701af995181" />
<img width="819" height="271" alt="Screenshot 2026-01-07 210756" src="https://github.com/user-attachments/assets/e9ac2c6d-dcb3-419d-8f99-a6ef8f9d2f53" />

----
- **Transaction and Loan table**
- **Account and Orders table**
- **Card and Disposition table**
- **Card and disposition combine with Client table based on client_id**
- **Card, Disposition,client table with district Table based on district id(inner join)**
- **Account, order table with card, disposition, client, district table based on account id(left join)**

#### Use the following SQL from Python to access data
- **Join account, order, card, disposition, client, district with loan, transaction table based on account_id(inner join)**
- This GitHub repository includes detailed solutions for all tasks in the Capstone_Project_On_Data_Science_By_Prajwal file 


















 



