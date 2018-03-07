1. In general, why would you even want to join two (or more) tables together? This is a good time to think about the nature of relational algebra.

    To optimize the query process.  

2. Describe in your own words the output from an inner join.

    Two in, two out with a filter. (Two logical query in with a Cartesian output that is then filtered by a specified predicate in a designated clause called on, this is also known as a join condition ).

3. Describe in your own words the output from an outer join.

  Two in two out with a filter and outer rowsl   

4. Describe in your own words the output from an cross join.

    One in two out. (one logical query that produces a Cartesian output of two.)

5. A convenient mnemonic for remembering the various joins is “Ohio.” Why is this true?

      Round on both ends and high in the middle      

6. Give an example of a composite join.

Primary key and foreign key based on more than one attribute. Searching a criminal data base for criminals, 30 to 35 years of age with brown hair, and blue eyes. 

7. What is the diﬀerence between the following two queries? The business problem is “How many orders do we have from each customer?”

================first query=============== SELECT C.custid, COUNT(*) AS numorders FROM Sales.Customers AS C LEFT OUTER JOIN Sales.Orders AS O ON C.custid = O.custid GROUP BY C.custid; ================second query=============== SELECT C.custid, COUNT(O.orderid) AS numorders FROM Sales.Customers AS C LEFT OUTER JOIN Sales.Orders AS O ON C.custid = O.custid GROUP BY C.custid;

Preserves all rows from ORDERS, Does not include the outer rows.

8. What might be one reason the following query does not return the column custID in this query?
SELECT C.custid, C.companyname, O.orderid, O.orderdate FROM Sales.Customers AS C LEFT OUTER JOIN Sales.Orders AS O ON C.custid = O.custid WHERE O.orderdate >= ’20160101’;

Order date might not have inputed. Query is good, just might be missing money.