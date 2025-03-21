# MySQL Date & Time Cheat Sheet

## Data Types

| Type        | Description                           | Example                 |
| ----------- | ------------------------------------- | ----------------------- |
| `DATE`      | Stores only the date                  | `'2024-03-21'`          |
| `DATETIME`  | Stores date and time (no timezone)    | `'2024-03-21 14:30:00'` |
| `TIMESTAMP` | Stores date & time with UTC awareness | `'2024-03-21 14:30:00'` |
| `TIME`      | Stores time only                      | `'14:30:00'`            |
| `YEAR`      | Stores year only                      | `'2024'`                |

---

## Common Functions

### Extraction

| Function                         | Description             | Example (`'2024-03-21 14:30:00'`) | Result       |
| -------------------------------- | ----------------------- | --------------------------------- | ------------ |
| `YEAR(date)`                     | Extracts year           | `YEAR('2024-03-21')`              | 2024         |
| `MONTH(date)`                    | Extracts month (1–12)   | `MONTH('2024-03-21')`             | 3            |
| `DAY(date)` / `DAYOFMONTH(date)` | Extracts day            | `DAY('2024-03-21')`               | 21           |
| `HOUR(datetime)`                 | Extracts hour           | `HOUR('2024-03-21 14:30:00')`     | 14           |
| `MINUTE(datetime)`               | Extracts minute         | `MINUTE('2024-03-21 14:30:00')`   | 30           |
| `SECOND(datetime)`               | Extracts second         | `SECOND('2024-03-21 14:30:00')`   | 0            |
| `WEEKDAY(date)`                  | Day of week (0=Monday)  | `WEEKDAY('2024-03-21')`           | 3            |
| `DATE(datetime)`                 | Strips time, keeps date | `DATE('2024-03-21 14:30:00')`     | `2024-03-21` |
| `TIME(datetime)`                 | Strips date, keeps time | `TIME('2024-03-21 14:30:00')`     | `14:30:00`   |

---

### Formatting

#### `DATE_FORMAT(date, format_string)`

| Format Code | Meaning            | Result Example |
| ----------- | ------------------ | -------------- |
| `%Y`        | 4-digit year       | `2024`         |
| `%y`        | 2-digit year       | `24`           |
| `%m`        | 2-digit month      | `03`           |
| `%c`        | Month (1–12)       | `3`            |
| `%d`        | Day (2-digit)      | `21`           |
| `%e`        | Day (no leading 0) | `21`           |
| `%H`        | Hour (00–23)       | `14`           |
| `%i`        | Minute             | `30`           |
| `%s`        | Second             | `00`           |
| `%M`        | Full month name    | `March`        |

**Example:**

```sql
SELECT DATE_FORMAT('2024-03-21 14:30:00', '%Y-%m-%d %H:%i');
-- Result: '2024-03-21 14:30'
```