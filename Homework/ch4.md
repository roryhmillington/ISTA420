Rory H. Millington  
ISTA420 
Chapter 4

1. In your own words, what is a subquery?

    The inner most query whose result is used by the outer query, is known as a subquery. 

2. In your own words, what is a self contained subquery?

    Self contained queries that are independent of the tables in the outer query. 
    
3. In your own words, what is a correlated subquery?

    Correlated subqueries are subqueries that refer to attributes in the outer field. This means the subquery is dependent on the outer query and cannot be invoke independently.
    
4. Give an example of a subquery that returns a single value. When would you use this kind of subquery?

    Scalar subquery, can appear can appear anywhere in the outer query, where a single value expression can appear. WHERE/SELECT    

5. Give an example of a subquery that returns multiple values. When would you use this kind of subquery?

    Multivalued subquery is a subquery that returns multiple values as a single column. (IN).  Returns a list. 

6. Give an example of a subquery that returns table values. When would you use this kind of subquery?

   Select all FROM

7. What does the exists predicate do? Give an example.

    Accepts a subquery as input and returns TRUE if the subquery returns any rows and FALSE otherwise. 

8. What happens if we use the not operator before a predicate? Give an example.

    Its doesn't return this information. Customers that did not place orders.     

9. When you use exists or not exists with respect to a row in a database, does it return two or three values? Explain your answer.

    Two, any rows or false otherwise.  Does not recognize NULLS

10. How would you a subquery to calculate aggregates? For example, you want to calculate yearly sales of a product, and you also want to keep a running sum of total sales. Explain how you would use a subquery to do this.

