CREATE TABLE Materials (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT,
    age_range TEXT,
    country TEXT,
    language TEXT,
);

CREATE TABLE Comments (
    id INTEGER PRIMARY KEY,
    material_id INTEGER,
    text TEXT NOT NULL,
    rating INTEGER,
    FOREIGN KEY (material_id) REFERENCES Materials (id)
);
 

CREATE TABLE Users (
    id INTEGER PRIMARY KEY,
    username TEXT NOT NULL,
    password TEXT NOT NULL,
    role TEXT
);

CREATE TABLE MaterialUser (
    id INTEGER PRIMARY KEY,
    material_id INTEGER,
    user_id INTEGER,
    FOREIGN KEY (material_id) REFERENCES Materials (id),
    FOREIGN KEY (user_id) REFERENCES Users (id)
);
