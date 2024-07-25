drop database if exists book_db;

create database book_db
	default character set utf8mb4 #emoji character set
    collate utf8mb4_general_ci #Sorting rules
    default encryption = 'n' #No encryption
;

show databases; 

use book_db; 

drop database book_db;