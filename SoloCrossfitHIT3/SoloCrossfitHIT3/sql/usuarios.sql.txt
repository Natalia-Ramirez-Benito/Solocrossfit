CREATE TABLE usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50),
  plan VARCHAR(100),
  peso DECIMAL(5,2),
  categoria VARCHAR(20),
  eventos INT,
  horasExtra INT
);
