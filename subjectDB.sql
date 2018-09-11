CREATE TABLE user (id SERIAL PRIMARY KEY, login_id varchar(255) UNIQUE Not Null, name varchar(255) Not Null, birth_date DATE Not Null,password Varchar(255) Not Null,create_date DATETIME Not Null,update_date DATETIME Not Null);
INSERT INTO user VALUES (1, 'admin', '管理者', 19990911,'password',20180905,20180911);

