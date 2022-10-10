---TABLE CREATED IN IICS AND SELECTING THE TABLE------------
SELECT * from Cinema_ticket_target_iics ;
----TABLE CREATED IN IICS FOR SUM AND SELECTING IT---------------
select * from Sum_tickets;
----CREATING DESTINATION TABLE FOR THE SCD TYPE------------ 
create table TE_FA_Hospital_details_iics
(
Hospital_key int,
Hospital_Registraion_No int,
Hospital_Name varchar(250),
Hospital_city varchar(250),
Hospital_Ph_no bigint
);
----ALTERING THE TABLE FOR GIVING CHECK SUM COLUMN-----------
alter  table TE_FA_Hospital_details_iics
add   Check_sum int;
------SELECTING THE AGGREGATE TABLE OF PROVIDER ID WHICH WAS CREATED IN IICS------------
SELECT * FROM AGGREGATE_PROVIDER_IICS;
---------SELECTING THE TABLE WHICH IS CREATED IN IICS OF AGGREGATE-------
SELECT * FROM TE_FA_AGGREGATOR_MAX;
--------DESTINATION TABLE FOR HEALTHCARE FOR SCD TYPE 2-------------------
create table TE_FA_Covid_HealthCare_LK
(
dimension_key int,
DRG_ID int,
DRG_Definition    varchar(100),
Provider_Id int,
Provider_Name varchar(100),
Provider_Street_Address varchar(100),
Provider_City varchar(100),
Provider_State varchar(100),
Provider_Zip_Code int,
Hospital_Referral_Region varchar(100),
Total_Discharges int,
Average_Covered_Charges float,
Average_Total_Payments    float,
Average_Medicare_Payments float,
start_date date,
end_date date,
check_sum varchar(100)
);
-----SELECTING THE TABLE-----------------
select * from TE_FA_Covid_HealthCare_LK;

---UPDATING THE SOURCE FOR SCD TYPE 2----------------- 
update TE_FA_Covid_Healthcare_details set DRG_ID=40 where Provider_Id=10001;

------CREATING DESTINATION TABLE FOR CINEMA TICKET FOR SCD TYPE1 ------------- 
create table TE_FA_Cinema_Ticket_Destination
(
dimension_key int,
Film_Type varchar(250),
film_code varchar(250),
cinema_code varchar(250),
total_sales int,
tickets_sold int,
tickets_out	int,
show_time varchar(250),
occu_perc varchar(250),
ticket_price float,
ticket_use	int,
capacity varchar(250),
show_date date	,
show_month int,
show_quarter int,
show_day varchar(250),
check_sum varchar(100)
);
----SELECTING THE SOURCE TABLE-------------
select * from TE_FA_Cinema_Ticket tfct ;
----SELECTING THE DESTINATION TABLE----------
select * from TE_FA_Cinema_Ticket_Destination

-----DROPPING TABLE FOR DATA TO GET CHANGED--------------------
drop table TE_FA_Cinema_Ticket_Destination;
----ALTERING TABLE FOR CHANGING DATATYPE-------------------
alter table TE_FA_Cinema_Ticket
alter column show_time int;
----UPDATING THE SOURCE TABLE FOR SCD TYPE 1-----------
update TE_FA_Cinema_Ticket
set tickets_sold=50 where capacity=610;
------SELECTING SOURCE TABLE----------------------------------------
select * from SF_TE_FA_Cinema_Ticket








