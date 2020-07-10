' Lab 4 Answers
' -------------

' CREATE TABLE statement

CREATE TABLE vendor (
	id  		INT PRIMARY KEY,
	name  		VARCHAR(50),
	address  	VARCHAR(60),
	state 		CHAR(2),
	upcprefix 	CHAR(5),
	balance	 	CURRENCY,
	createdate 	DATE
);

' INSERT statements
INSERT INTO vendor (id, name, address, state, upcprefix, balance, createdate) VALUES (1, 'UBC Cookie Company', '3333 University Way', 'BC', '00001', 955463.77, '2016-01-02')
INSERT INTO vendor (id, name, address, state, upcprefix, balance, createdate) VALUES (2, 'Salerno Foods', '123 5th Street', 'MA', '14700',150000.00, '2016-01-04')
INSERT INTO vendor (id, name, address, state, upcprefix, balance, createdate) VALUES (3, 'Keebler Company', 'Battle Creek', 'MI', '30100', 255000.00, '2016-01-08')
INSERT INTO vendor (id, name, address, state, upcprefix, balance, createdate) VALUES (4, 'Good Bakery', '45 Freedom Road', 'TX', '38281', 123472.99, '2016-01-23')
INSERT INTO vendor (id, name, address, state, upcprefix, balance, createdate) VALUES (5, 'Nabisco', 'East Hanover', 'NJ', '44000', 0, '2016-01-11')
INSERT INTO vendor (id, name, address, state, upcprefix, balance, createdate) VALUES (6, 'Matt''s Cookies', '482 North Milwaukee Avenue', 'IL', '79746', 999.99, '2016-01-15')

' UPDATE statements

' Update all vendor balances to increase them by 20%.
UPDATE vendor SET balance=balance*1.2

' Update the vendor name to 'Cookie Company', created date to '2016-01-25', and state to 'CA' for vendor with id = 1
UPDATE vendor SET name='Cookie Company', createdate='2016-01-25', state='CA'
WHERE id = 1


' DELETE statements

' Delete all vendors in the state 'BC'
DELETE FROM vendor 
WHERE state = 'BC'


' Delete vendor with id = 1
DELETE FROM vendor
WHERE id = 1

' Query 1: Return the sales records (all fields) for store 12 where the move is greater than 50

SELECT *
FROM sales
WHERE store=12 and move > 50


' Query 2: Return the vendor name, address, and balance for vendors created after January 3, 2016.  Sort rows by balance descending.

SELECT name, address, balance
FROM vendor
WHERE createdate > #2016-01-03#
ORDER BY balance DESC


' Query 3: Return the vendor id, vendor name, product UPC code, move, and sales (price * move/qty) for each product sold by store 100 in 1995.  Sort by sales descending.

SELECT vendorid, name, UPC, move, price*move/qty as sales
FROM vendor INNER JOIN sales ON vendor.id = sales.vendorid
WHERE store = 100 and salesYear = 1995
ORDER BY move/qty*price DESC


' Query 4: Return the total sales (price*move/qty) for each product.  The output should have the UPC of a product and the total sales of that product for all stores and for all time.

SELECT UPC, format(SUM(move/qty*price), 'Currency') as totalSales
FROM sales
GROUP BY UPC


' Query 5: Return for each vendor the total sales of their products at each store between the years 1992 and 1995 (inclusive).  Sort by total sales descending.  The output should have the vendor name, store number, and total sales.

SELECT name, store, format(SUM(price*move/qty), 'Currency') as totalSales
FROM vendor INNER JOIN sales ON vendor.id = sales.vendorid
WHERE salesYear >= 1992 and salesYear <= 1995
GROUP BY name, store
ORDER BY SUM(price*move/qty) DESC


' Query 6: Return for each store and product, the total sales, gross profit (price*move/qty*profit/100), count of weekly sales records, and average move amount of the product at that store.  Only show data for vendors with a name > 'H'. Sort by gross profit descending.  The output should have the store number, product UPC, total sales, gross profit, count of records, and average move volume.

SELECT store, UPC, format(SUM(price*move/qty), 'Currency') as totalSales, format(SUM(price*move/qty*profit/100), 'Currency') as grossProfit, COUNT(*) as countRecords, format(AVG(move), '#,##0') as averageMove
FROM vendor INNER JOIN sales ON vendor.id = sales.vendorid
WHERE name > 'H'
GROUP BY store, UPC
ORDER BY SUM(price*move/qty*profit/100) DESC
