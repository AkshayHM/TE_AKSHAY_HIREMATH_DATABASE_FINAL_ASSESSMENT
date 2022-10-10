----Creating Target table as per given Cinema Ticket data source
create table TE_FA_Cinema_Ticket_Target
(
Film_Type varchar(250),
film_code varchar(250),
cinema_code varchar(250),
total_sales int,
tickets_sold int,
tickets_out	int,
show_time int,
occu_perc varchar(250),
ticket_price float,
ticket_use	int,
capacity varchar(250),
show_date date	,
show_month int,
show_quarter int,
show_day varchar(250)
);
----altering the datatype
alter table TE_FA_Cinema_Ticket_Target
alter  column total_sales
bigint;

---Selecting the table
select * from TE_FA_Cinema_Ticket_Target;

----Creating target table for SCD performing
create table TE_FA_Cinema_Ticket_Target_SCD_TYPE1
(
Film_Type varchar(250),
film_code varchar(250),
cinema_code varchar(250),
total_sales int,
tickets_sold int,
tickets_out	int,
show_time int,
occu_perc varchar(250),
ticket_price float,
ticket_use	int,
capacity varchar(250),
show_date date	,
show_month int,
show_quarter int,
show_day varchar(250)
);
---SELECTING THE TABLE
select * from TE_FA_Cinema_Ticket_Target_SCD_TYPE1;
----For SCDTYPE1 AND SCDTYPE2 UPDATING THE VALUES
update  TE_FA_Cinema_Ticket_Target 
set Film_Type='Horror' where cinema_code=82;
----altering the table column for SCD
alter table TE_FA_Cinema_Ticket_Target
add end_date date;

----altering the table column for SCD
alter table TE_FA_Cinema_Ticket_Target_SCD_TYPE1
add end_date date;
---Updating the data in the table
update  TE_FA_Cinema_Ticket_Target 
set end_date='2019-05-26' where Film_Type='Horror';


----Creating Target table as per given Covid Healthcare data source
create table TE_FA_Covid_Healthcare_details_Target
(
DRG_ID	int,
DRG_Definition varchar(250),
Provider_Id	int,
Provider_Name varchar(250),
Provider_Street_Address	 varchar(250),
Provider_City varchar(250),
Provider_State varchar(250),
Provider_Zip_Code int,
Hospital_Referral_Region varchar(250),
Description_Total_Discharges int,
Average_Covered_Charges	float,
Average_Total_Payments	float,
Average_Medicare_Payments float
);
---selecting the table
select * from TE_FA_Covid_Healthcare_details_Target;

---creating the target table for SCD 
create table TE_FA_Covid_Healthcare_details_SCD_TYPE2
(
DRG_ID	int,
DRG_Definition varchar(250),
Provider_Id	int,
Provider_Name varchar(250),
Provider_Street_Address	 varchar(250),
Provider_City varchar(250),
Provider_State varchar(250),
Provider_Zip_Code int,
Hospital_Referral_Region varchar(250),
Description_Total_Discharges int,
Average_Covered_Charges	float,
Average_Total_Payments	float,
Average_Medicare_Payments float
);

---selecting the table 
select * from TE_FA_Covid_Healthcare_details_SCD_TYPE2

---altering the table for SCD performing by adding columns
alter table TE_FA_Covid_Healthcare_details_SCD_TYPE2
add end_date date, start_date date;

---Updating the data into the table
update  TE_FA_Covid_Healthcare_details_SCD_TYPE2
set start_date='2018-05-25' where DRG_ID=39;
----Updating the data for SCD 
update  TE_FA_Covid_Healthcare_details
set Description_Total_Discharges=10 where DRG_ID=4;

-----Creating aggregate table based on the particular column
create table TE_FA_Healthcare
(
DRG_ID int,
Provider_Name varchar(250)
);
---selecting the table to check aggregate 
select * from TE_FA_Healthcare;

SELECT * FROM OLE DB Destination;
-----Aggregate----------------

select sum(total_sales) as total_sales from TE_FA_Cinema_Ticket_Target;

select total_sales
from TE_FA_Cinema_Ticket_Target
where Film_Type='Horror'
Group by total_sales
order by total_sales;









