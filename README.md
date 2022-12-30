# Bus_Booking_Portal
1. download the zip file of the project from here
2. extrac the zip file
3. open your eclipse ide and click on file
4. Add tomcat server 9.0 to your eclipse
5. now click on open project from file system and select the extracted folder and click on finish
6. now run the project on server




# Database create Command(used to create database and tables in database)

create database ticketdb;

1. create table AccountProfile(Name VARCHAR(50) NOT NULL,Username VARCHAR(50) NOT NULL,Password VARCHAR(50) NOT NULL,Age VARCHAR(20) NOT NULL , Address VARCHAR(50) NOT NULL , Phone VARCHAR(20) NOT NULL ,Email VARCHAR(50) NOT NULL);


2. create table HypotheticlVehicle(Vehicle_id INT PRIMARY KEY,Vehicle_Type VARCHAR(50) NOT NULL , Usual_Departure_Time VARCHAR(50) NOT NULL, From_Station VARCHAR(50) NOT NULL ,To_Station VARCHAR(20) NOT NULL ,Time_Taken_For_Travel VARCHAR(50) NOT NULL,Price VARCHAR(20) NOT NULL);

3. create table ticket(vehicle_id int primary key not null,ticket_status varchar(20) , From_station varchar(20) not null,To_Station varchar(40) not null,hours_of_journey varchar(20) not null,price varchar(20) not null,Total_passenger varchar(20) not null, passenger_name varchar(20) not null,Username varchar(50) not null ,passenger_adress varchar(50) not null,passenger_age varchar(20) not null,coupan_applied varchar(20) ,feedback varchar(100));

4. create table adminprofile(username varchar(20) not null , password varchar(20) not null);

5. create table query(name varchar(20) not null,username varchar(20) not null, number varchar(30) not null , query varchar(100) not null);
