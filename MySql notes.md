MySql:
	- Syntax:

- not case-sensitive: for SQL keywords such as SELECT, FROM, WHERE, INSERT
- `SELECT` and `SELECT ALL` is the same. 
	The keyword `ALL` only makes a difference in EXCEPT, INTERSECT, or UNION queries
- to remove duplicated rows, use `distinct`, like `select distinct ..`
- LENGTH() counts the number of bytes in a string. This means it considers multi-byte characters (such as Unicode or Chinese characters) as multiple bytes. Spaces are also counted as bytes.
CHAR_LENGTH() counts the number of characters in a string, regardless of how many bytes each character occupies. This makes it more suitable for character-based length restrictions, such as tweet limits.
both count an empty space as 1 character
- In SQL, the HAVING and WHERE clauses are both used to filter data, but they are used in different contexts.

​	`WHERE`: It is used to filter rows before any grouping (aggregation) occurs. The WHERE clause filters the rows based on the condition specified, and it is applied to individual rows in the table.

​	`HAVING`: It is used to filter groups after aggregation has taken place. The HAVING clause is applied to the result of GROUP BY and is typically used when you need to filter on the result of aggregate functions like COUNT(), SUM(), AVG(), etc.

- ​	case when ... then ..(value).. end
  - case when ... then ..(value).. else ..(value).. end
    - it should be `then`, to indicate the value to be aggrigated

* "Each derived table must have its own alias" error usually means one of two things:
     * Missing alias on a subquery
     
       * Valid: SELECT * FROM (SELECT 1) AS sub;
       * invalid: SELECT * FROM (SELECT 1);  -- Error: every derived table must have an alias
     
     * Missing column alias in a subquery
     
       * Valid: SELECT customer_id, MIN(order_date) AS first_order_date
     
       * Invalid: 
     
         ```
         SELECT customer_id, MIN(order_date) 
         FROM Delivery 
         GROUP BY customer_id
         ```

