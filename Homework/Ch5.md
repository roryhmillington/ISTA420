Rory Millington
Chapter 5 ISTA 420

1. What is a table expression? Can you give a technical deﬁnition of a table expression?

    A table expression is a named query expression. that represents a valid relational table.  You can use table expressions in data manipulation statements much like you use other       tables.

2. In what SQL clause are derived tables (table valued subqueries) located?

    Derived tables are defined in the FROM clause in the outer query. Their scope of existence is in the outer query. As soon as the outer query is finished the derived table is gone.

3. Why can you refer to column aliases in an outer query that you deﬁned in an inner table valued subquery?

     Table expression allows you to do this threw inline aliasing.       

4. What SQL key word deﬁnes a common table expression?

    With

5. When using common table expressions, can a subsequent derived table use a table alias declared in a preceding table expression?

    Yes    

6. Can a main query refer to a previously deﬁned common table expression by multiple aliases?

    Yes

7. In SQL, is a view a durable object?

    Yes stored as permanent objects.

8. In a view, what does WITH CHECK OPTION do? Why is this important?

    To prevent modifications thru through the view that conflicts with the views filter. 

9. In a view, what does SCHEMABINDING do? Why is this important?

    It binds the schema of referenced objects and columns to the schema of the referencing object.

10. What is a table valued function?

    Reusable table expressions that support input parameters.

11. What does the APPLY operator do?

    Used in the from clause, performs its work in the logical query processing phase. 

12. What are the two forms of the APPLY operator? Give an example of each.

    CROSS APPLY AND OUTER  APPLY.  CROSS APPLY implements one logical query phase. OUTER APPLY implements two. 
