Rory H Millington 
ISTA420 Chapter 6

1. What does a set operator do?
    
    Set operators are operators that combine rows from two query result sets (or multisets).

2. What are the general requirements of a set operator

    A set operator compares complete rows between the results of the two input queries involved. The two input queries must produce results with the same number of columns, and corresponding columns must have compatible data types.

3. What is a Venn Diagram? This is not in the book.

    A Venn diagram (also called primary diagram, set diagram or logic diagram) is a diagram that shows all possible logical relations between a finite collection of different sets. These diagrams depict elements as points in the plane, and sets as regions inside closed curves. A Venn diagram consists of multiple overlapping closed curves, usually circles, each representing a set. The points inside a curve labelled S represent elements of the set S, while points outside the boundary represent elements not in the set S. Thus, for example, the set of all elements that are members of both sets S and T, S ∩ T, is represented visually by the area of overlap of the regions S and T.

4. Draw a Venn Diagram of the UNION operator. What does it do?

     The UNION operator combines two or more result sets into a single result set, without duplications. The union of      two queries gives rows that are present in the first result set or in the second result set or in both. But each row appears only once.
Venn diagram for UNION:
 


5. Draw a Venn Diagram of the UNION ALL operator. What does it do?

    Like the UNION operator the UNION ALL operator also combines two or more result sets into a single result set. The only difference between a UNION and UNION ALL is that the UNION ALL allows duplicate rows.

    Venn diagram for UNION ALL:


6. Draw a Venn Diagram of the INTERSECT operator. What does it do?

    The INTERSECT operator returns only the rows present in all the result sets. The intersection of two queries gives the rows that are present in both result sets. It returns only unique rows.

    Venn diagram for INTERSECT:


7. If SQL Server supported the INTERSECT ALL operator, what would it do?

   Return the number of duplicate rows matching the lower of the counts in both input multisets.  

8. Draw a Venn Diagram of the EXCEPT operator. What does it do?

    The EXCEPT operator returns all distinct the rows that are present in the result set of the first query, but not in the result set of the second query. It means it returns the difference between the two result sets.

    Venn diagram for INTERSECT:

9. If SQL Server supported the EXCEPT ALL operator, what would it do?

    Returns only occurrences of a row from the first multiset that do not have a corresponding occurrence in the second.
    
10. What is the precedence of the set operators? 

    SQL defines precedence among set operators. The INTERSECT operator precedes UNION and EXCEPT, and UNION and EXCEPT are evaluated in order of appearance. Using the ALL variant doesn’t change the precedence. In a query that contains multiple set operators, first INTERSECT operators are evaluated, and then operators with the same precedence are evaluated based on their order of appearance. Consider the following code:



    

