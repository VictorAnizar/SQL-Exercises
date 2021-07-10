/*SELECT: is for see all or specific columns (with their respectives rows) of a table*/

select actor_id, first_name, last_name, last_update from sakila.actor;
select actor_id, first_name as nombre, last_name as apellido, last_update as actualizacion from sakila.actor;
select * from sakila.city;

/**************************************************/

/*DISTINCT: used with the statement SELECT. it is used for return distinct values when we have repeated values in a table*/

/*This statement is going to show that we only have two uniques values in that specific column*/
select distinct(store_id) from sakila.customer;
/*This statement is going to show that we only have 599 uniques values in that specific column*/
select distinct(customer_id) from sakila.payment;

/**************************************************/

/*ORDER BY: helps to order the rows according to a specific column, is usualy used with the words ASC or DESC for ascending order or 
desending order severally*/

/*this sentence is going to show the content order alphabetically by country in ascending way*/
select * from sakila.country order by (country) asc;
/*this sentence is going to show the content order alphabetically by first_name in ascending way*/
select * from sakila.customer order by (first_name) asc;

/********************Exercices using the las 3 sentences************************/

/*1.- Consulta store_id, first_name y last_name de la tabla customer de la base de datos sakila.*/
select store_id, first_name, last_name from sakila.customer;

/*2- Cambia el nombre de las columnas store_id, first_name y last_name a Tienda, Nombre y Apellido respectivamente.*/
select store_id as tienda, first_name as nombre, last_name as apellido from sakila.customer;

/*3- Ordena de manera descendente la columna Apellido*/
select store_id as tienda, first_name as nombre, last_name as apellido from sakila.customer order by apellido desc;

/*4- Consulta la tabla payment de la base de datos sakila.*/
select * from sakila.payment;

/*5- ¿Cuál es la cantidad mas baja y mas alta de la columna amount?*/
select distinct(amount) from sakila.payment order by amount asc;
/*or*/
select min(amount) as cantidad_baja, max(amount) as cantidad_alta from sakila.payment;

/****************************End of set 1 of exercises *******************************/

/*WHERE: provide a filter in a SELECT sentence based on a determined value*/

/*Shows all the rows which column first_name contains the word 'DAN'*/
select * from sakila.actor where first_name='DAN';
/*Shows all the rows which column city contains the word 'London'*/
select * from sakila.city where city='London';
/*Shows all the rows which column country_id contains the number 102*/
select * from sakila.city where country_id=102;
/*Shows all the rows which column store_id contains the number 1*/
select * from sakila.customer where store_id=1;
/*Shows all the rows which column film_id contains a greather number than 50*/
select * from sakila.inventory where film_id>50;
/*Shows the rows which column amount contains a uniques minor numbers than 3*/
select distinct(amount) from sakila.payment where amount<3;
/*Shows all the rows which column staff_id  is different than 2*/
select * from sakila.staff where staff_id<>2;
/*Shows all the rows which column name is different than 'German'*/
select * from sakila.language where name<>'German';

/********************Exercices using WHERE************************/

/*1.- Consulta description, release_year de la tabla film de la base de datos sakila.*/
select description, release_year from sakila.film;

/*2- Filtra la información donde title sea IMPACT ALADDIN*/
select * from sakila.film where title='IMPACT ALADDIN';

/*3- Consulta la tabla payment de la base de datos sakila.*/
select * from sakila.payment;

/*4- Filtra la información donde amount sea mayor a 0.99.*/
select * from sakila.payment where amount>0.99 order by amount asc;

/****************************End of set 2 of exercises *******************************/