ISTA Homework Ch 9

Rory H Millington

28 Mar 2018

Read chapter 9, pages 297 - 313 in the T-SQL Fundmentals book.
Homework questions

1. What is a temporal table?

    A system-versioned temporal table has two columns representing the validity period of the row, plus a linked history table with a mirrored schema holding older states of modified rows. When you need to modify data, you interact with the current table, issuing normal data-modification statements. SQL Server automatically updates the period columns and moves older versions of rows to the history table. When you need to query data, if you want the current state, you simply query the current table as usual. If you need access to older states, you still query the current table, but you add a clause indicating that you want to see an older state or period of time. SQL Server queries the current and history tables behind the scenes as needed.



2. Under what circumstances would you use a temporal table? Temporal tables are in widespread use in certain kinds of businesses.

    To view older data, maybe for comparison, trends, changes. 
    
3. What are the semantics of a temporal table? There are seven of them.

        A primary key  Two columns defined as DATETIME2 with any precision, which are non-nullable and represent the start and end of the row’s validity period in the UTC time zone  A start column that should be marked with the option GENERATED ALWAYS AS ROW START  An end column that should be marked with the option GENERATED ALWAYS AS ROW END  A designation of the period columns with the option PERIOD FOR SYSTEM_TIME (<startcol>, <endcol>)  The table option SYSTEM_VERSIONING, which should be set to ON  A linked history table (which SQL Server can create for you) to hold the past states of modified rows

4. How do you search a history table?

    If you need access to older states, you still query the current table, but you add a clause indicating that you want to see an older state or period of time. A start column that should be marked with the option GENERATED ALWAYS AS ROW START  An end column that should be marked with the option GENERATED

5. How do you modify a history tablre?

    Modifying temporal tables is similar to modifying regular tables. You modify only the current table with INSERT, UPDATE, DELETE, and MERGE statements.

6. How do you delete date from a history table? Why would you want to delete data from a history table?

    DELETE FROM

7. How do you search a history table?

    If you want to query the current state of the data, you simply query the current table as you would query a normal table.

8. How do you query all data from both a history ﬁle and the current data?

    Conveniently, you can specify the FOR SYSTEM_TIME clause when querying views, and the clause definition is propagated to underlying objects.

9. How do you drop a temporal table?

    SQL Server drops the column from both tables.

Page 1, Revised on December 21, 2017 by Charles Carter