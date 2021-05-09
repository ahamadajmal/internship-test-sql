
#AHAMMAD AJMAL
#BABEL INTERNSHIP TEST

# CREATE THE TABLE
create table Payment (payment_id int, receiver_id int,amount int);

insert into Payment (payment_id, receiver_id,amount) values (1, 6,4000);
insert into Payment (payment_id, receiver_id,amount) values (2, 7,2000);
insert into Payment (payment_id, receiver_id,amount) values (3, 3,3000);
insert into Payment (payment_id, receiver_id,amount) values (4, 6,8000);
insert into Payment (payment_id, receiver_id,amount) values (5, 4,7600);
insert into Payment (payment_id, receiver_id,amount) values (6, 2,5000);
insert into Payment (payment_id, receiver_id,amount) values (7, 1,6100);


create table Reciever (receiver_id int,industry varchar(50));

insert into Reciever (receiver_id,industry) values (1, 'Marketing');
insert into Reciever (receiver_id,industry) values (2, 'Textile');
insert into Reciever (receiver_id,industry) values (3, 'Marketing');
insert into Reciever (receiver_id,industry) values (4, 'Construction');
insert into Reciever (receiver_id,industry) values (5, 'Textile');
insert into Reciever (receiver_id,industry) values (6, 'Textile');
insert into Reciever (receiver_id,industry) values (7, 'Marketing');

#Q 1) Get the industry which recieves the Largest amount?

SELECT industry, MAX(amount) AS Largestamount FROM Payment P 
INNER JOIN Reciever R on P.receiver_id = R.receiver_id;

#With the use of SQL I found out that Marketing industry is having the largest amount from the table given.


#Q 2) Get the industry which recieves the 3rd Largest amount

SELECT
    (SELECT DISTINCT
            industry 
        FROM
            (Payment p inner join reciever R on p. receiver_id =r. receiver_id )
        ORDER BY amount DESC
        LIMIT 1 OFFSET 2) AS Industry,

    (SELECT DISTINCT
            amount 
        FROM
            (Payment p inner join reciever R on p. receiver_id =r. receiver_id )
        ORDER BY amount DESC
        LIMIT 1 OFFSET 2) AS Third_largest_amount;

#With the use of SQL I found out that Textile industry is having the Third largest amount from the table.
