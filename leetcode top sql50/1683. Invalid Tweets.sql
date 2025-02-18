/* 1683. Invalid Tweets */

# Write your MySQL query statement below
select tweet_id from Tweets
where length(content) > 15

/** NOTE: a space is treated as a character. 
LENGTH() counts the number of bytes in a string. This means it considers multi-byte characters (such as Unicode or Chinese characters) as multiple bytes. Spaces are also counted as bytes.
CHAR_LENGTH() counts the number of characters in a string, regardless of how many bytes each character occupies. This makes it more suitable for character-based length restrictions, such as tweet limits.
both count an empty space as 1 character
*/