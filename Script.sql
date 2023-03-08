CREATE USER 'sys_temp'@'localhost' IDENTIFIED BY '123456'; -- 1.2. создание user sys_temp

SELECT User FROM mysql.user; -- 1.3. выборка всех пользователей

grant all privileges on *.* to 'sys_temp'@'localhost'; -- 1.4. выдача привелегированных прав пользователю sys_temp

SHOW GRANTS FOR 'sys_temp'@'localhost'; -- 1.5. просмотр прав пользователя sys_temp

ALTER USER 'sys_temp'@'localhost' IDENTIFIED WITH mysql_native_password BY '123456'; -- переподключаюсь к базе данных от имени sys_temp

show tables from sakila; -- просмотр всех таблиц базы sakila

REVOKE INSERT, update, DELETE ON *.* FROM 'sys_temp'@'localhost'  -- 3.1 забрала права на внесение, изменение и удаление из базы у пользователя sys_temp 