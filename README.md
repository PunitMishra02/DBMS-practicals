# College DBMS Practicals (MySQL)

SQL practical project based on the supplied *Practicals.pdf*.

## Contents
- `schema.sql` — five related tables and constraints
- `sample_data.sql` — sample students, courses, societies, admissions and enrollments
- `practical_queries.sql` — 25 prescribed practical exercises (including updates and ALTER statements)
- `administration.sql` — user/role/privilege/index examples (admin permissions required)

## Run
Use MySQL 8.0+ or MySQL Workbench. From a MySQL command-line session:

```sql
SOURCE schema.sql;
SOURCE sample_data.sql;
SOURCE practical_queries.sql;
```

**Important:** `practical_queries.sql` includes destructive or persistent changes (Q7, Q18–Q20, Q23). Run queries individually for practical demonstrations. Some SELECT statements intentionally return no rows with the small sample dataset. Run `administration.sql` separately only with appropriate privileges; replace its illustrative passwords first.

## Database relationships
`ADMISSION` links `STUDENT` to `COURSE`; `ENROLLMENT` links `STUDENT` to `SOCIETY`.

## Source
Transcribed and organized from the provided 18-page DBMS practicals PDF.
