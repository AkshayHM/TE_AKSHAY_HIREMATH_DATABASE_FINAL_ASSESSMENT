create table TE_FA_Cinema_Ticket_Target_SCD_TYPE_2
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
show_date INT	,
show_month int,
show_quarter int,
show_day varchar(250),
dimension_key int,
start_date date,
end_date date,
CHECK_SUM VARCHAR(250)
);
DROP TABLE TE_FA_Cinema_Ticket_Target_SCD_TYPE_2;
SELECT * FROM TE_FA_Cinema_Ticket_Target_SCD_TYPE_2 

