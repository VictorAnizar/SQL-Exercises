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

/*Operators AND, NOT OR: these are usually used with the sentence WHERE.
The operator AND is used when two or the conditions that are writen are TRUE */

/*This statement isn´t going to show anything because one of the conditions are false. If we use AND, we must be shure that both conditions are true*/
select * from sakila.country where country='Algeria' and country_id=12;
/*This statement is going to show content if one of the conditions is true. If we use OR, we mustn't be shure that both conditions are true*/
select * from sakila.country where country='Algeria' or country_id=12;
/*This statement is similar than the last one. Returns the rows of the 2 conditions*/
select * from sakila.language where language_id=1 or name='German';
/*This statement is going to show all the rows except action, for this, we use the word NOT*/
select * from sakila.category where not name='Action'; 
/*This sentence is going to show the column rating, and the rating R wont be in some row*/
select distinct(rating) from sakila.film where not rating='R';

/********************Exercices using AND, OR, NOT************************/

/*1.- Consulta la tabla payment de la base de datos sakila..*/
select * from sakila.payment;

/*2- Filtra la información donde customer_id sea igual a 36, amount sea mayor a 0.99 y staff_id sea igual a 1.*/
select * from sakila.payment where customer_id=36 and amount>0.99 and staff_id=1;

/*3- Consulta la tabla rental de la base de datos sakila.*/
select * from sakila.rental;

/*4- Filtra la información donde staff_id no sea 1, customer_id sea mayor a 250 y inventory_id sea menor de 100.*/
select * from sakila.rental where (not(staff_id=1) and (customer_id>250) and(inventory_id<100)) order by inventory_id desc;

/****************************End of set 3 of exercises *******************************/

/*IN Operator. In short words, we can say that IN, represents a few OR's of a same column*/

/*The following sentence is similar to use:
select * from sakila.customer where first_name='MARY' or first_name='PATRICIA'*/
select * from sakila.customer where first_name in ('MARY','PATRICIA');

/*The next statement is equal to:
select * from sakila.film where (special_features='Trailers' or special_features='Trailers,Deleted Scenes') and (rating='G' or rating='NC-17') and length>100;
*/
select * from sakila.film where special_features in ('Trailers', 'Trailers,Deleted Scenes') and rating in ('G', 'NC-17') and length>100;

select * from sakila.category where (name not in('Action', 'Animation', 'Children'));

/********************Exercices using IN************************/

/*1.- Consulta la tabla film_text de la base de datos sakila.*/
select * from sakila.film_text;

/*2- Filtra la información donde title  sea ZORRO ARK, VIRGIN DAISY, UNITED PILOT*/
select * from sakila.film_text where title in ('ZORRO ARK', 'VIRGIN DAISY', 'UNITED PILOT');

/*3- Consulta la tabla city de la base de datos sakila.*/
select * from sakila.city;

/*4- Filtra la información donde city sea Chiayi, Dongying, Fukuyama y Kilis.*/
select * from sakila.city where city in ('Chiayi', 'Dongying', 'Fukuyama','Kilis');

/****************************End of set 4 of exercises *******************************/

/*BETWEEN operator: Is used to select values in a determinate range*/

/*Select all the rows which the values of customer_id are in the range of 300 and 350, and staff_id is equal to 1*/
select * from sakila.rental where (customer_id between 300 and 350) and staff_id=1;

select * from sakila.payment where (amount not between 3 and 5);

/********************Exercices using BETWEEN************************/

/*1.- Consulta la tabla payment de la base de datos sakila.*/
select * from sakila.payment;

/*2- Filtra la información donde amount esté entre 2.99 y 4.99,  staff_id sea igual a 2 y customer_id sea 1 y 2.*/
select * from sakila.payment where (amount between 2.99 and 4.99) and staff_id=2 and (customer_id in (1,2));

/*3- Consulta la tabla address de la base de datos sakila.*/
select * from sakila.address;

/*4- Filtra la información donde city_id esté entre 300 y 350.*/
select * from sakila.address where city_id between 300 and 350;

/*5- Consulta la tabla film de la base de datos sakila.*/
select * from sakila.film;

/*6- Filtra la información donde rental_rate esté entre 0.99 y 2.99, length sea menor igual de 50  y replacement_cost sea menor de 20.*/
select * from sakila.film where (rental_rate between 0.99 and 2.99) and length<=50 and replacement_cost<20;

/****************************End of set 5 of exercises *******************************/