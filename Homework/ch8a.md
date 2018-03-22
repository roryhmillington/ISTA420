ISTA420 Homework Chapter 8a

Rory H Millington

16 Mar 2018

1. When using INSERT, is the list of columns necessary? Why or why not?

    Specifying the target column names right after the table name is optional, but by doing so, you control the value-column associations instead of relying on the order of the columns in the CREATE TABLE statement. In T-SQL, specifying the INTO clause is optional.

2. When using INSERT SELECT, do you use a subquery (derived table)? Under what circumstances do you not use a subquery?

    The standard INSERT SELECT statement inserts a set of rows returned by a SELECT query into a target table. The syntax is similar to that of an INSERT VALUES statement, but instead of using the VALUES clause, you specify a SELECT query.

3. What is the operand for the INSERT EXEC statement?

    You use the INSERT EXEC statement to insert a result set returned from a stored procedure or a dynamic SQL batch into a target table.The INSERT EXEC statement is similar in syntax and concept to the INSERT SELECT statement, but instead of using a SELECT statement, you specify an EXEC statement. (with the @country parameter):

4. How would you use the INSERT INTO statement?

    The SELECT INTO statement is a nonstandard T-SQL statement that creates a target table and populates it with the result set of a query. By “nonstandard,” I mean that it’s not part of the ISO and ANSI SQL standards. You cannot use this statement to insert data into an existing table. In terms of syntax, simply add INTO <target_table_name> right before the FROM clause of the SELECT query you want to use to produce the result set.

5. What are the parameters to the BULK INSERT statement?

    You use the BULK INSERT statement to insert into an existing table data originating from a file. In the statement, you specify the target table, the source file, and options. You can specify many options, including the data file type (for example, char or native), the field terminator, the row terminator, and others—all of which are fully documented.

6. Does IDENTITY guarantee uniqueness? If not, how do you guarantee uniqueness?

    Identity is a standard column property. You can define this property for a column with any numeric type with a scale of zero (no fraction). When defining the property, you can optionally specify a seed (the first value) and an increment (a step value). If you don’t provide those, the default is 1 for both. You typically use this property to generate surrogate keys, which are keys that are produced by the system and are not derived from the application data.

7. How do you create a SEQUENCE object?

    To create a sequence object, use the CREATE SEQUENCE command. The minimum required information is just the sequence name, but note that the defaults for the various properties in such a case might not be what you want.

8. How do you use a SEQUENCE object?

    Unlike the identity property, the sequence object supports the specification of a minimum value (MINVALUE <val>) and a maximum value (MAXVALUE <val>) within the type. If      you  don’t indicate what the minimum and maximum values are, the sequence object will assume the minimum and maximum values supported by the type. For example, for an INT type, those would be –2,147,483,648 and 2,147,483,647, respectively.

9. How do you alter a SEQUENCE object?

    You can change any of the sequence properties except the data type with the ALTER SEQUENCE command (MINVAL <val>, MAXVAL <val>, RESTART WITH <val>, INCREMENT BY <val>, CYCLE | NO CYCLE, or CACHE <val> | NO CACHE).

10. What is the diﬀerence between DELETE and TRUNCATE?

    The DELETE statement is a standard statement used to delete data from a table based on an optional filter predicate. The standard statement has only two clauses—the FROM clause, in which you specify the target table name, and a WHERE clause, in which you specify a predicate. Only the subset of rows for which the predicate evaluates to TRUE will be deleted. The standard TRUNCATE statement deletes all rows from a table. Unlike the DELETE statement, TRUNCATE has no filter.

11. What is the diﬀerence between DELETE and DROP TABLE?
