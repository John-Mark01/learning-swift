CREATE VIEW view_addresses AS
    SELECT
        concat(first_name, ' ', last_name) as "full_name",
        department_id
    FROM employees
    UNION ALL
    SELECT
        concat(number, ' ', street) as "address"
    FROM addresses
    ORDER BY address
;