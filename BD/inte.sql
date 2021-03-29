create database integradora;
 \c integradora;


create table USUARIO(
 id_usuario serial primary key,
 tipo_us varchar(30),
 nom_us varchar(50),
 app_us varchar(50),
 apm_us varchar(50),
 email varchar(50) unique,
 pass varchar(50));


 create table TARJETA(
 nom_propietario varchar(50),
 no_tarjeta bigint primary key,
 cvv int,
 mes varchar(50),
 anio varchar(50),
 saldo bigint,
 id_usuario int,
 foreign key(id_usuario) references USUARIO(id_usuario) on delete cascade on update cascade);
 
 
SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE pg_stat_activity.datname = 'integradora'
AND pid <> pg_backend_pid();
