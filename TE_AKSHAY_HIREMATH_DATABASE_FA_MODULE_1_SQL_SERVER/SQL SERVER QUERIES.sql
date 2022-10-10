--------------           1.Performing the normalization     ---------------------------
--------------                        Healthcare Domain     ---------------------------
--------------            a)Creating the tables for normalization            ----------
----Creating Parent and Child table with constraints  ------
create table TE_FA_Hospital_details
(
Hospital_Registration_No int primary key,
Hospital_Name varchar(250) not null,
Hospital_City varchar(250),
Hospital_Ph_No int
);

create table TE_FA_Doctor_details
(
KMC_Reg_No int primary key,
Doctor_Name varchar(250) not null,
Doctor_Specialization varchar(250),
Hospital_Registration_No int foreign key references  TE_FA_Hospital_details(Hospital_Registration_No )
);

create table TE_FA_Patient_details
(
Patient_No int primary key,
Patient_Name varchar(250),
Patient_Age int,
Patient_Problem varchar(250),
Patient_Checkup_undergone varchar(250),
Patient_disease_identified varchar(250),
Prescribed_drug varchar(250),
KMC_Reg_No int foreign key references TE_FA_Doctor_details(KMC_Reg_No )
);
-------------------       b) Insert the data ----------------------------
---  Inserting the data for Hospital details  ---------
insert into TE_FA_Hospital_details values (1101,'Maithri Hospital','Hospet',08394230616),
(1102,'Kumarswamy  Clinic','Hospet',08394224870),
(1103,'Vastrad Hospital','Hospet',08394227666),
(1104,'Punyakoti Eye Hospital','Hospet',9483981571),
(1105,'Prakhya ENT care Center ','Ballari',083922777709),
(1106,'Raghuveer Orthopaedics Center','Ballari',7353061610),
(1107,'M S Kidney Hospital','Ballari',083942583101),
(1108,'Motherhood Hospital','Bangalore',08067238822),
(1109,'Smile World Multi Speciality Clinic','Hubli',9036141344),
(1110,'Agarwals Eye Hospital','Dharwad',08048193467),
(1111,'Prabas VCare Health Clinic','Malleshwaram',7092424242),
(1112,'B R Achar Hospital','Hospet',9844088812),
(1113,'100 Bed Hospital','Hospet',083942583201),
(1114,'Puttur Hospital','Hospet',08394230147),
(1115,'Sanjeevni Hospital','Mangalore',06364872121),
(1116,'Colaco Hospital','Mangalore',08242434444),
(1117,'Kasturba Hospital','Manipal',08202922761),
(1118,'JSS Dental Hospital','Mysore',08212548349),
(1119,'Neo Care Hospital','Hospet',9019936916),
(1120,'Nara Maternity Hospital','Bagalkot',08394587101);

alter table TE_FA_Hospital_details
alter  column Hospital_Ph_No
bigint;

select * from TE_FA_Hospital_details;

-----   Inserting the data for Doctor details   ------------
insert into  TE_FA_Doctor_details values
(28301,'Dr.Manjunath','General Physician',1101),
(28302,'Dr.Akash ','Internal Medicine Specialist',1102),
(28303,'Dr.Abhishek vastrad','Pediatrics',1103),
(28304,'Dr.Ramesh','Opthalmologist',1104),
(28305,'Dr.Ravi','ENT Specialist',1105),
(28306,'Dr.Raghuveer Reddy','Orthopedics',1106),
(28307,'Dr.Imad Ali','Nephrologists',1107),
(28308,'Dr.Anusha','Gynecologist',1108),
(28309,'Dr.Raghvendra ','Dentist',1109),
(28310,'Dr.Agarwal','Eye Specialist',1110),
(28311,'Dr.Prabas ','Hair Specialist',1111),
(28312,'Dr.Achari','Surgeon',1112),
(28313,'Dr.Somashekar','General Physician',1113),
(28314,'Dr.Puttur','Orthopedic',1114),
(28315,'Dr.Sanjeevni','Children Specialist',1115),
(28316,'Dr.Trishul','General Physician',1116),
(28317,'Dr.Ramesh','Heart Surgeon',1117),
(28318,'Dr.Suresh','Dentist',1118),
(28319,'Dr.David','Neurologist',1119),
(28320,'Dr.Sushma','Gyneocologist',1120);

select * from TE_FA_Doctor_details;

---  Inserting the data for Patient details   ---------

insert into TE_FA_Patient_details values
(100,'Ramesh',45,'Headache','General checkup','stress','Crocin',28301),
(101,'Suresh',28,'Chest Pain','ECG','Pulmonary embolism','Nitroglycerin',28302),
(102,'David',30,'Ear Pain','Ear checkup','Ear sore','Ear drops',28305),
(103,'Peter',49,'Fever','CBC ','Dengue','Cariford',28316),
(104,'Prakash',42,'Bone Problem','X ray','Fracture','Bandage and tablets ',28314),
(105,'Patil',60,'Blood Pressure','BP checkup','stress','Lotrel',28301),
(106,'Pavan',26,'Hair Loss','Hair Scan','Stress and hormones','Hair oil',28311),
(107,'Francis',31,'Nerves damage','Scan','Internal damage','Doxepin',28319),
(108,'John',41,'Sugar','Sugar Test','stress','Metformin',28313),
(109,'Mary',30,'Pregnancy','Anatomy Scan','Birth test','Pregnancy tablets ',28320),
(110,'Angelina',10,'Cold and fever','CBC Urine test','malaria','Paracetomal',28315),
(111,'Jackie',29,'Eye Pain','Eye checkup','Long sightedness','Eye drops',28310),
(112,'Captain Jack',19,'Teeth Pain','Teeth checkup','Teeth sore','Teeth Clips',28309),
(113,'Allan',39,'Head pain','CT Scan','Migraine','Aspirin',28307),
(114,'Mitchell',60,'Headache','General checkup','stress','Crocin',28301),
(115,'Willamson',55,'Chest Pain','ECg','stress','Nitroglycerin',28317),
(116,'Smith',33,'Headache','General checkup','stress','Crocin',28301),
(117,'Ryder',21,'Fever','CBC','jaundice','Paracetomal',28316),
(118,'Anusha',31,'stomach ache','General checkup','stress','Tablets',28308),
(119,'Rahul',12,'Trauma','General checkup','Cold','Paracetomal',28312),
(120,'Abdul',40,'joint pain','X ray','joint displaced','Braces',28318),
(121,'Mumtaz',06,'Fever','General checkup','Coldness','Paracetomal',28303),
(122,'Ullas',22,'Headache','General checkup','stress','Crocin',28316),
(123,'Joshi',26,'Headache','General checkup','stress','Crocin',28301),
(124,'Yuvraj',18,'Back pain','MRI scan','stress','Tablets',28314),
(125,'R Singh',31,'Headache','General checkup','stress','Crocin',28301),
(126,'H Kaur',35,'Pregnancy','General checkup','Child birth','Protein',28320),
(127,'Natarjan',28,'Headache','General checkup','stress','Crocin',28301),
(128,'Vijay',49,'Headache','General checkup','stress','Crocin',28301),
(129,'Ajith',57,'Headache','General checkup','stress','Crocin',28301),
(130,'Rajni',69,'Heart Problem','ECg','stress','Nitroglycerin',28302);
insert into TE_FA_Patient_details values
(131,'Rishabh',45,'Headache','General checkup','stress','Crocin',NULL);

select * from TE_FA_Patient_details;

----------------    c) Join the table ---------------------------------------
---Inner Join -------------
select H.Hospital_Registration_No,H.Hospital_Name,H.Hospital_City,H.Hospital_Ph_No ,D.KMC_Reg_No,D.Doctor_Name,D.Doctor_Specialization,
P.Patient_No,P.Patient_Name,P.Patient_Age,P.Patient_Problem,P.Patient_Checkup_undergone,P.Patient_disease_identified,P.Prescribed_drug
from TE_FA_Hospital_details as H, TE_FA_Doctor_details as D , TE_FA_Patient_details as P 
where P.KMC_Reg_No=D.KMC_Reg_No and D.Hospital_Registration_No =H.Hospital_Registration_No ;

----With Inner Keyword-----------------------
select H.Hospital_Registration_No,H.Hospital_Name,H.Hospital_City,H.Hospital_Ph_No ,D.KMC_Reg_No,D.Doctor_Name,D.Doctor_Specialization,
P.Patient_No,P.Patient_Name,P.Patient_Age,P.Patient_Problem,P.Patient_Checkup_undergone,P.Patient_disease_identified,P.Prescribed_drug
from TE_FA_Patient_details as P
inner join TE_FA_Doctor_details as D  on  P.KMC_Reg_No=D.KMC_Reg_No 
inner join TE_FA_Hospital_details as H  on  D.Hospital_Registration_No=H.Hospital_Registration_No ; 


---Full Join---------------

select H.Hospital_Registration_No,H.Hospital_Name,H.Hospital_City,H.Hospital_Ph_No ,D.KMC_Reg_No,D.Doctor_Name,D.Doctor_Specialization,
P.Patient_No,P.Patient_Name,P.Patient_Age,P.Patient_Problem,P.Patient_Checkup_undergone,P.Patient_disease_identified,P.Prescribed_drug
from TE_FA_Patient_details as P
full join TE_FA_Doctor_details as D  on  P.KMC_Reg_No=D.KMC_Reg_No 
full join TE_FA_Hospital_details as H  on  D.Hospital_Registration_No=H.Hospital_Registration_No ; 

---- Left Join-------------------
select H.Hospital_Registration_No,H.Hospital_Name,H.Hospital_City,H.Hospital_Ph_No ,D.KMC_Reg_No,D.Doctor_Name,D.Doctor_Specialization,
P.Patient_No,P.Patient_Name,P.Patient_Age,P.Patient_Problem,P.Patient_Checkup_undergone,P.Patient_disease_identified,P.Prescribed_drug
from TE_FA_Patient_details as P
left join TE_FA_Doctor_details as D  on  P.KMC_Reg_No=D.KMC_Reg_No 
left join TE_FA_Hospital_details as H  on  D.Hospital_Registration_No=H.Hospital_Registration_No ; 

----Right Join------------------------------

select H.Hospital_Registration_No,H.Hospital_Name,H.Hospital_City,H.Hospital_Ph_No ,D.KMC_Reg_No,D.Doctor_Name,D.Doctor_Specialization,
P.Patient_No,P.Patient_Name,P.Patient_Age,P.Patient_Problem,P.Patient_Checkup_undergone,P.Patient_disease_identified,P.Prescribed_drug
from TE_FA_Patient_details as P
right join TE_FA_Doctor_details as D  on  P.KMC_Reg_No=D.KMC_Reg_No 
right join TE_FA_Hospital_details as H  on  D.Hospital_Registration_No=H.Hospital_Registration_No ; 

------- Cross Join ------------------------

select H.Hospital_Registration_No,H.Hospital_Name,H.Hospital_City,H.Hospital_Ph_No ,D.KMC_Reg_No,D.Doctor_Name,D.Doctor_Specialization,
P.Patient_No,P.Patient_Name,P.Patient_Age,P.Patient_Problem,P.Patient_Checkup_undergone,P.Patient_disease_identified,P.Prescribed_drug
from TE_FA_Patient_details as P, TE_FA_Doctor_details as D  , TE_FA_Hospital_details as H ;


--------- d) Different Views -------------------------------

----Creating a view ----------------

create view VW_TE_FA_Hospital_details
as select * from  TE_FA_Hospital_details;

-------selecting the table from view -----------------------

select * from VW_TE_FA_Hospital_details;

----------inserting in the view ------------------
insert into VW_TE_FA_Hospital_details
values(1121,'Maithri Hospital','shimoga',08394230616);

----------DDL, DQL commands on view -------------------
alter view VW_TE_FA_Hospital_details
as select H.Hospital_Registration_No,H.Hospital_Name,H.Hospital_City,H.Hospital_Ph_No ,D.KMC_Reg_No,D.Doctor_Name,D.Doctor_Specialization,
P.Patient_No,P.Patient_Name,P.Patient_Age,P.Patient_Problem,P.Patient_Checkup_undergone,P.Patient_disease_identified,P.Prescribed_drug
from TE_FA_Patient_details as P
inner join TE_FA_Doctor_details as D  on  P.KMC_Reg_No=D.KMC_Reg_No 
inner join TE_FA_Hospital_details as H  on  D.Hospital_Registration_No=H.Hospital_Registration_No ; 

-------Drop view ------------------
drop view VW_TE_FA_Hospital_detail;


------ 2. Using transaction table perform various operations -------------------------

------Cinema Ticket Refernce Datasource ---------------------
---DATA DEFINITION LANGUAGE-CREATE,DROP,ALTER,TRUNCATE
---Creating the table from datasource
create table TE_FA_Cinema_Ticket
(
Film_Type varchar(250),
film_code varchar(250),
cinema_code varchar(250),
total_sales int,
tickets_sold int,
tickets_out	int,
show_time time,
occu_perc varchar(250),
ticket_price float,
ticket_use	int,
capacity varchar(250),
show_date date	,
show_month int,
show_quarter int,
show_day varchar(250)
);
---Truncating the table
truncate table TE_FA_Cinema_Ticket;
---Altering the table
alter table TE_FA_Cinema_Ticket
alter column show_time varchar(250);
---Adding new rows using alter 
alter table TE_FA_Cinema_Ticket
add cinema_Name varchar(250);

---Drop the table 
drop table TE_FA_Cinema_Ticket;

-----DATA MANIPULATION LANGUAGE-INSERT,UPDATE,DELETE
----Inserting the data into the table 
insert into TE_FA_Cinema_Ticket values
('Romance','1500','305',1500000,18,1,'5',19,80000,18,'250','2018-06-06',6,1,'6');
insert into TE_FA_Cinema_Ticket values
('Romance','1800','306',1500000,10,2,'4',18,90000,10,'255','2018-06-07',2,1,'26'),
('Horror','1500','307',2500000,12,0,'5',19,80000,18,'250','2018-06-08',6,1,'6'),
('Science','1550','308',3500000,13,1,'4',18,90000,10,'255','2018-06-09',2,1,'26'),
('Thriller','1560','309',4500000,14,1,'5',19,80000,18,'250','2018-06-06',6,1,'6');

----Updating the data
update TE_FA_Cinema_Ticket set cinema_code=306 where ticket_use=26
update TE_FA_Cinema_Ticket set cinema_code=307 where ticket_use=42
update TE_FA_Cinema_Ticket set cinema_code=308 where ticket_use=32
update TE_FA_Cinema_Ticket set cinema_code=309 where ticket_use=12

--------Deleting the data
delete from TE_FA_Cinema_Ticket where cinema_code=71; 

--DATA QUERY LANGUAGE-SELECT 
---Displaying data using select 
select * from TE_FA_Cinema_Ticket;

--------------------------------------------------------------------------------------------------
--------INPATIENT PROVIDER COVID HEALTH DATASOURCE -----------------
---DATA DEFINITION LANGUAGE-CREATE,DROP,ALTER,TRUNCATE
---Creating the table from datasource
create table TE_FA_Covid_Healthcare_details
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
---Truncating the table
truncate table TE_FA_Covid_Healthcare_details;
---Altering the table
alter table TE_FA_Covid_Healthcare_details
alter column Provider_Zip_Code varchar(250);
---Adding new rows using alter 
alter table TE_FA_Covid_Healthcare_details
add Sum_of_charges varchar(250);

---Drop the table 
drop table TE_FA_Covid_Healthcare_details;

-----DATA MANIPULATION LANGUAGE-INSERT,UPDATE,DELETE
----Inserting the data into the table 
insert into  TE_FA_Covid_Healthcare_details values
(01, 'EXTRACRANIAL PROCEDURES W/O CC/MCC',10001,'SOUTHEAST ALABAMA MEDICAL CENTER','1108 ROSS CLARK CIRCLE','DOTHAN','AL',36301,'AL-Dothan',91,32963.07692,5777.241758,4763.736264),
(02, 'EXTRACRANIAL PROCEDURES W/O CC/MCC',10001,'SOUTHEAST ALABAMA MEDICAL CENTER','1108 ROSS CLARK CIRCLE','DOTHAN','AL',36301,'AL-Dothan',91,32963.07692,5777.241758,4763.736264),
(03, 'EXTRACRANIAL PROCEDURES W/O CC/MCC',10001,'SOUTHEAST ALABAMA MEDICAL CENTER','1108 ROSS CLARK CIRCLE','DOTHAN','AL',36301,'AL-Dothan',91,32963.07692,5777.241758,4763.736264),
(04, 'EXTRACRANIAL PROCEDURES W/O CC/MCC',10001,'SOUTHEAST ALABAMA MEDICAL CENTER','1108 ROSS CLARK CIRCLE','DOTHAN','AL',36301,'AL-Dothan',91,32963.07692,5777.241758,4763.736264);


----Updating the data
update TE_FA_Covid_Healthcare_details set DRG_ID=40 where Provider_Id=10001
update TE_FA_Covid_Healthcare_details set DRG_ID=41 where Provider_Id=10005
update TE_FA_Covid_Healthcare_details set DRG_ID=42 where Provider_Id=10006
update TE_FA_Covid_Healthcare_details set DRG_ID=43 where Provider_Id=10011

--------Deleting the data
delete from  TE_FA_Covid_Healthcare_details where Provider_Id=10001; 

--DATA QUERY LANGUAGE-SELECT 
---Displaying data using select 

select * from TE_FA_Covid_Healthcare_details;

select count(*)from TE_FA_Covid_Healthcare_details;

































































