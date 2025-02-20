AI prompt:
    Please create me an experss node.js api for register user, login and authentication:
        1. code to be in a single file
        2. the user has username, email, title, password.
        3. the data should be stored in Postgre database.
        4. password should be hashed in the data.
        5. it should be possible to modify email and title of a user.
        6. the user should also have created_at and updated_at

    .env file form:

    PORT=3000
    DB_USER=your_db_user
    DB_HOST=localhost
    DB_NAME=your_db_name
    DB_PASSWORD=your_db_password
    DB_PORT=5432
    JWT_SECRET=your_secret_key
SQL example:

    CREATE TABLE IF NOT EXISTS users (
                id SERIAL PRIMARY KEY,
                username VARCHAR(50) UNIQUE NOT NULL,
                email VARCHAR(100) UNIQUE NOT NULL,
                title VARCHAR(50),
                password TEXT NOT NULL,
                created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
            );


    INSERT INTO users (username, email, title, password) 
        VALUES ('some user', 'demo@demo.lt', 'Mr.', 'seecret password');

    select * from users;
    npm init -y
``

## III. Intro to security

SQL injection:  
    https://brightsec.com/blog/sql-injection-attack/