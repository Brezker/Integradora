create database integradora;
 \c integradora;


 create table USUARIO(
 id_usuario serial primary key,
 nom_us varchar(50),
 app_us varchar(50),
 apm_us varchar(50),
 email varchar(50),
 pass varchar(50));


 create table CLIENTE(
 id_usuario int primary key,
 foreign key(id_usuario)references USUARIO(id_usuario) on delete cascade on update cascade);
 


 create table TARJETA(
 nom_propietario varchar(50),
 no_tarjeta int primary key,
 cvv int,
 mes int,
 año int,
 saldo bigint,
 id_usuario int,
 foreign key(id_usuario) references USUARIO(id_usuario) on delete cascade on update cascade);
 
 
 
 SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE pg_stat_activity.datname = 'integradora'
AND pid <> pg_backend_pid();