Rory Millington

Homework Ch 2c

1. What is a data type? Why do we have data types?

Storage location for characters.

2. What is a collation? Name four elements of a collation.

Collation is a property of character data that encapsulates several aspects: language support, sort order, case sensitivity, accent sensitivity, and more.

3. How would you strip whitespace from a string? For example, suppose you had “ Dave ” but wanted only “Dave”. R Trim L Trim

4. Suppose you wanted to make a list of every college and university that was called an Institute from the college table. Write the query.

Select from college or university where the name includes institute. Select name from college LIKE

5. How would you ?nd out the index of the ?rst space in a string? For example, the index of the ?rst space in “Barack Hussein Obama” would be 7.

Count the spacing. CHARINDEX 2 parameter. What your looking for. 

6. How would you select just the ?rst name in a list of the presidents. First names can be an arbitrary length, from 
“Cal” to “Benjamin.”

SELECT SUBSTRING(3 Parameters) CHARINDEX returns the interger. Presidents Name, First position, find space. 

7. Payments are due exactly 30 days from the date of the last function. Write a select query that calculates 
the date of the next payment. Pretend we want to update a column in a database that contains the date of the next

DATE ADD Function 


payment. We will do this when we write UPDATE queries.



8. Suppose your son or daughter wants to run a query every day that tells them the number of days until their 16th
birthday. Write a select query that does this.


9. What function returns the current date? This is very useful in a table that maintains a log of events, such as user 
logins.

