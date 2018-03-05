Rory Millington

Home Chapter 2A

1.  What is a primary key constraint? What two other constraints is it equivilent to?
    
* A primary-key constraint enforces the uniqueness of rows and disallows NULLS in the constraint attributes.  

2. What is a nullability constraint? What does it prevent?

* Must assign a value. 

3. What is a unique constraint? What does it prevent?

* A unique constraint enforces the uniqueness of rows allowing you to implement the concept alternate keys from the relational model in your database. 

4.  What is a foreign key constraint? What does it allow?

* A foreign key reinforces referential integrity. This constraint is defined on one or more attributes in what is called the reference table and points to the points to candidate key. (Primary-key or unique-constraint) attributes in what’s called the referenced table. 

5. What is a check constraint? What does it allow?

* Defines a predicate that a row must meet to be entered the table or to be modified. Predicate returns either true or false. 

6. What is a default constraint? What does it allow?

* Associated with a particular attribute, its an expression used as the default value when an explicit value is not specified. 
       
7. What is domain integrity? This is not in your text book, but it’s important.
       
8. What is the di?erence between the where and the having clauses? How are they alike?

* The WHERE clause filters rows returned by the FROM clause, whereas the HAVING clause is a group filter. They both evaluate to TRUE,
        
9. What SQL operator has the highest precedence? What SQL operator has the lowest precedence?

* FORM clause, ORDER clause

10. Yes or no: In the SQL standard, is NULL equal to NULL? Why or why not?

* NO, no it is equal to the unknown,
