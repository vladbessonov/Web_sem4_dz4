/* 
Создать файл my.sql, в котором должна создаваться таблица с информацией об одногруппниках. В таблице должно быть четыре поля: id, name, age, address. 
Все поля в таблице обязательны для заполнения.
Необходимо добавить 5-10 одногруппников в данную таблицу.

Необходимо написать запрос на получение имен всех одногруппников (только имен, без всего остального),
 которые живут в Москве 
 и их возраст находится в диапазоне [18, 30) лет. 

Примечание:
Квадратные скобки при указании диапазона, означают "включительно", а круглые "не включительно", то есть диапазон (7, 9] 
означает "от 7, где 7 не попадает в данный диапазон, до 9 включительно". 
Такой синтаксис нельзя использовать в sql, вам нужно найти решение, как такое условие можно записать в sql по-другому.
Для проверок работы своего скрипта можете использовать свою базу данных, либо используйте сайт: https://onecompiler.com/mysql 

Решшение:
https://onecompiler.com/mysql/3zzb4meq6
*/




-- create
CREATE TABLE employee (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  name TEXT NOT NULL,
  age INTEGER NOT NULL,
  adress TEXT NOT NULL
);

-- insert
INSERT INTO employee (name, age, adress) VALUES ('Ivan', 20, 'Samara');
INSERT INTO employee (name, age, adress) VALUES ('Alexey', 17, 'Moscow');
INSERT INTO employee (name, age, adress) VALUES ('Vlad', 18, 'Moscow');
INSERT INTO employee (name, age, adress) VALUES ('Ludmila', 27, 'Saratov');
INSERT INTO employee (name, age, adress) VALUES ('Vera', 30, 'Moscow');
INSERT INTO employee (name, age, adress) VALUES ('Irina', 25, 'Moscow');

-- fetch 
SELECT name AS Имя 
FROM employee 
WHERE (adress = 'Moscow') AND (age >= 18 AND age < 30 ) 

