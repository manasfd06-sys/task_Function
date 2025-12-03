SELECT * from employee;

--FUNCTION 1
CREATE or REPLACE FUNCTION get_employee_count()
RETURNS INTEGER AS $$
DECLARE
    emp_count INTEGER;
BEGIN
    SELECT COUNT(*) INTO emp_count FROM employee;
    RETURN emp_count;
END;
$$ LANGUAGE plpgsql;

SELECT get_employee_count();

--FUNCTION 2


CREATE OR REPLACE FUNCTION get_fullname(m_emp_id INTEGER)
RETURNS TEXT AS $$
DECLARE
    full_name TEXT;
BEGIN
    SELECT CONCAT(first_name, ' ', last_name) INTO full_name
    FROM employee
    WHERE emp_id = m_emp_id;

    RETURN full_name;
END;
$$ LANGUAGE plpgsql;

SELECT get_fullname(2);