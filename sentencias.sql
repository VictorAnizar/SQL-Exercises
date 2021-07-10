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