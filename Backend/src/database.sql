CREATE DATABASE orangedb;
CREATE TABLE User (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  perfilphoto BLOB,
  country VARCHAR(255)
);
CREATE TABLE Project (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  tags VARCHAR(255),
  link VARCHAR(255) NOT NULL,
  description VARCHAR(255) NOT NULL,
  coverphoto BLOB,
  fk_iduser INT NOT NULL,
  FOREIGN KEY (fk_iduser) REFERENCES User (id)
);