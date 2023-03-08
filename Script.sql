CREATE USER 'sys_temp'@'localhost' IDENTIFIED BY '123456'; -- 1.2. �������� user sys_temp

SELECT User FROM mysql.user; -- 1.3. ������� ���� �������������

grant all privileges on *.* to 'sys_temp'@'localhost'; -- 1.4. ������ ����������������� ���� ������������ sys_temp

SHOW GRANTS FOR 'sys_temp'@'localhost'; -- 1.5. �������� ���� ������������ sys_temp

ALTER USER 'sys_temp'@'localhost' IDENTIFIED WITH mysql_native_password BY '123456'; -- ��������������� � ���� ������ �� ����� sys_temp

show tables from sakila; -- �������� ���� ������ ���� sakila

REVOKE INSERT, update, DELETE ON *.* FROM 'sys_temp'@'localhost'  -- 3.1 ������� ����� �� ��������, ��������� � �������� �� ���� � ������������ sys_temp 