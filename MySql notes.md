MySql:
	- Syntax:

- not case-sensitive: for SQL keywords such as SELECT, FROM, WHERE, INSERT
- `SELECT` and `SELECT ALL` is the same. 
	The keyword `ALL` only makes a difference in EXCEPT, INTERSECT, or UNION queries
- to remove duplicated rows, use `distinct`, like `select distinct ..`
- LENGTH() counts the number of bytes in a string. This means it considers multi-byte characters (such as Unicode or Chinese characters) as multiple bytes. Spaces are also counted as bytes.
CHAR_LENGTH() counts the number of characters in a string, regardless of how many bytes each character occupies. This makes it more suitable for character-based length restrictions, such as tweet limits.
both count an empty space as 1 character