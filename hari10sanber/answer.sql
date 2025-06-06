1. CREATE DATABASE myshop;

2. CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(255) NOT NULL, 
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL);

   CREATE TABLE items (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(255) NOT NULL, 
    description VARCHAR(255) NOT NULL,
    price INT NOT NULL, 
    stock INT NOT NULL, 
    catagory_id INT NOT NULL
    FOREIGN KEY (catagory_id) 
    REFERENCES (categories.id));

   CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(255) NOT NULL);

3. INSERT INTO `users` 
    (`id`, `name`, `email`, `password`) 
    VALUES (NULL, 'John Doe', 'john@doe.com', 'john123'), 
    (NULL, 'Jane Doe', 'Jane@doe.com', 'jenita123');

   INSERT INTO `categories` 
   (`id`, `name`) 
   VALUES (NULL, 'gadget'), 
            (NULL, 'cloth'), 
            (NULL, 'men'), 
            (NULL, 'women'), 
            (NULL, 'branded');

    INSERT INTO `items` 
    (`id`, `name`, `description`, `price`, `stock`, `catagory_id`) 
    VALUES (NULL, 'Sumsang b50', 'hape keren dari merek sumsang', '4000000', '100', '1'), 
            (NULL, 'Uniklooh', 'baju keren dari brand ternama', '500000', '50', '2'), 
            (NULL, 'IMHO Watch', 'jam tangan anak yang jujur banget', '2000000', '10', '1');

4. a. SELECT id, name, email FROM `users`;
   b. SELECT * FROM `items` WHERE price > 1000000;
      SELECT * FROM `items` WHERE name LIKE '%sang%';
   c. SELECT items.name, description, price, stock, catagory_id, categories.name AS kategori 
      FROM `items` 
      LEFT JOIN categories 
      ON 
      items.id = categories.id;

5. UPDATE `items` SET `name` = 'Sumsang' WHERE `items`.`id` = 1;