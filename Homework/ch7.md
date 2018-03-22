ISTA420 Chapter 7

Rory H Millington

15 Mar 2018

1. What is a window function?

    A window function is a function that, for each row, computes a scalar result value based on a calculation against a subset of the rows from the underlying query.

2. What does PARTITION do?
    
    The window-partition clause (PARTITION BY) restricts the window to the subset of rows that have the same values in the partitioning columns as in the current row. In the last query, the window is partitioned by empid. For an underlying row with employee ID 1, the window exposed to the function filters only the rows where the employee ID is 1.

3. What does ORDER BY do?

    The window-order clause (ORDER BY) defines ordering, but don’t confuse this with presentation ordering. In a window aggregate function, window ordering supports a frame specification. In a window ranking function, window ordering gives meaning to the rank. In our example, the window ordering is based on ordermonth.

4. What does ROWS BETWEEN do?

    A window-frame clause (ROWS BETWEEN <top delimiter> AND <bottom delimiter>) filters a frame, or a subset, of rows from the window partition between the two specified delimiters. In this example, the frame is defined with no low boundary point (UNBOUNDED PRECEDING) and extends until the current row (CURRENT ROW). In addition to the window-frame unit ROWS, there’s another unit called RANGE, but it’s implemented in T-SQL in a limited capacity.

5. What is a ranking window function? Why would you use it? Give an example.

        You use ranking window functions to rank each row with respect to others in the window. T-SQL supports four ranking functions: ROW_NUMBER, RANK, DENSE_RANK, and NTILE. The following query demonstrates the use of these functions:

6. What is an oﬀset window function? Why would you use it? Give an example.

    You use offset window functions to return an element from a row that is at a certain offset from the current row or at the beginning or end of a window frame. T-SQL supports two pairs of offset functions: LAG and LEAD, and FIRST_VALUE and LAST_VALUE.

7. What do LEAD and LAG DO

        The LAG and LEAD functions support window partitions and window order clauses. There’s no relevance to window framing here. You use these functions to obtain an element from a row that is at a certain offset from the current row within the partition, based on the indicated ordering. The LAG function looks before the current row, and the LEAD function looks ahead.

8. What do FIRST VALUE and LAST VALUE do?

    You use the FIRST_VALUE and LAST_VALUE functions to return an element from the first and last rows in the window frame, respectively. Therefore, these functions support window-partition, window-order, and window-frame clauses.

9. What is an aggragate window function? Why would you use it? Give an example.

    You use aggregate window functions to aggregate the rows in the defined window. They support window-partition, window-order, and window-frame clauses.

10. What is a pivot table and what does it do?

    Pivoting data involves rotating data from a state of rows to a state of columns, possibly aggregating values along the way. In many cases, the pivoting of data is handled by the presentation layer for purposes such as reporting.

