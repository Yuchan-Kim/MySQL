#root account management

drop user if exists 'book'@'%';
drop user if exists 'web'@'%';


# CREATE ACCOUNT
CREATE USER 'web'@'%' IDENTIFIED BY '1234';
#CREATE USER 'web'@'localhost' IDENTIFIED BY '1234'; -> localhost 에서 접속가능
#CREATE USER 'web'@''IPAddress' ENTIFIED BY '1234';

#Password change
alter USER 'web'@'%' IDENTIFIED BY 'web'; #Changed password from 1234 to web.

#Granting privileges
GRANT ALL privileges on web_db.* to 'web'@'%'; 

#GRANT SELECT,INSSERT on privileges on web_di.* to 'web'@'%';  -->> Able to grant certain features to one of the accounts. 

#Delete accounts
DROP USER 'web'@'%'; 


create user 'book'@'%' identified by 'book';
grant all privileges on book_db.* to 'book'@'%';

#Direct apply changes to the account, use after create the user account
flush privileges; 

#Creating DB
drop database if exists web_db;
create database web_db
	default character set utf8mb4 #emoji character set
    collate utf8mb4_general_ci #Sorting rules
    default encryption = 'n' #No encryption
;

show databases;




















