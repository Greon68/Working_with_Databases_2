-- Создаём схему из нескольких отношений-«Сотрудник»

--Создаём таблицу "Отделы":
CREATE TABLE IF NOT EXISTS Departments (
	id SERIAL PRIMARY KEY,
	name VARCHAR(128) NOT NULL
);
	
-- Создаём таблицу "Сотрудник":

-- 1) Создаём связь с таблицей "Отделы",
-- 2) Начальник является сотрудником , поэтому ссылкой
-- на его id мы прописываем тот факт , что он начальник

CREATE TABLE IF NOT EXISTS Employees (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	department_id INTEGER NOT NULL REFERENCES Departments(id),
	boss_id INTEGER  
);