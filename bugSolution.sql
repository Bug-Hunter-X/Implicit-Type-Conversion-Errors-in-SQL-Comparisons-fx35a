To prevent implicit type conversion issues, always perform explicit type casting before comparisons. This ensures that the data types match and avoids unexpected behavior. 

Here's how to modify the examples to use explicit casting:

**Example 1:**

```sql
SELECT * FROM products WHERE product_id = CAST('123' AS INT);
-- Or, if product_id could be stored as a string:
SELECT * FROM products WHERE CAST(product_id AS INT) = 123;
```

This explicitly converts '123' to an integer before the comparison.  If the conversion fails (e.g., '123a'), the query will not silently omit the result.

**Example 2:**

```sql
SELECT * FROM products WHERE CAST(price AS INT) = 10; --Explicit cast to an integer for comparison.
--Or convert 10 to decimal
SELECT * FROM products WHERE price = CAST(10 AS DECIMAL(10,2));
```

This explicitly casts `price` (assuming it is a decimal) or 10 to the same data type for proper comparison.  Ensure that the target data type accurately reflects the precision and scale of the values involved.