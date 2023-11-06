CREATE TABLE Materials (
 •     id INTEGER PRIMARY KEY,
 •     title TEXT NOT NULL,
 •     description TEXT,
 •     age_range TEXT,  -- Диапазон возрастов, к которым материал предназначен
 •     country TEXT,    -- Страна происхождения материала
 •     language TEXT,   -- Язык материала
 • );
 • 
 • -- Таблица для хранения комментариев
 • CREATE TABLE Comments (
 •     id INTEGER PRIMARY KEY,
 •     material_id INTEGER,  -- Связь с материалом
 •     text TEXT NOT NULL,
 •     rating INTEGER,  -- Оценка материала
 •     FOREIGN KEY (material_id) REFERENCES Materials (id)
 • );
 • 
 • -- Таблица для хранения пользователей (если необходимо)
 • CREATE TABLE Users (
 •     id INTEGER PRIMARY KEY,
 •     username TEXT NOT NULL,
 •     password TEXT NOT NULL,
 •     role TEXT  -- Роль пользователя (учитель, администратор и т.д.)
 • );
 • 
 • -- Таблица для связи материалов и пользователей (если необходимо)
 • CREATE TABLE MaterialUser (
 •     id INTEGER PRIMARY KEY,
 •     material_id INTEGER,
 •     user_id INTEGER,
 •     FOREIGN KEY (material_id) REFERENCES Materials (id),
 •     FOREIGN KEY (user_id) REFERENCES Users (id)
 • );
