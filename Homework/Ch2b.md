Rory Millington

Homework 420 Ch 2B

1. List the order of execution of a SQL query.

FROM, WHERE, GROUP BY, HAVING, SELECT(Expressions, DISTINCT) ORDER BY, TOP/OFFSET-FETCH

2. What does the from clause do?
	
First clause that is logically processed.

3. What does the where clause do?

Specifies a predicate of logical expression to filter the rows returned by the FROM clause.	

4. What does the group by clause do?

Arrange the rows returned by the previous logical query processing phase in groups.	

5. What does the having clause do?

Group filter thats queries only evaluate to True	

6. What does the select clause do?

Specifies attributes (columns) you want to return in the result table of inquery.	

7. What does the distinct keyword do?

If you want to handle only distinct occurrences of known values, specify the DISTINCT keyword before 
the input expression to the aggregate function.
	
8. What does the order by clause do?

You use the ORDER BY clause to sort the rows in the output for presentation purposes. In terms of 
logical query processing, ORDER BY is the very last clause to be processed.

9. What does the limit clause do? This is not in the book.

10. What does the top clause do?

Limit amount of data sorted. i.e top 5% not ANSCI.

The TOP filter is a proprietary T-SQL feature you can use to limit the number or percentage of rows your query returns.

11. What do the o?set ...fetch ... clauses do?

The OFFSET-FETCH filter is considered an extension to the ORDER BY clause. With the OFFSET clause you indicate how many rows to skip, and with the FETCH clause you indicate how many rows to filter after the skipped rows.
Pic and Chose.
