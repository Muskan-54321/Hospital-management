create database ecommerce_db;
INSERT INTO Users(name,email) VALUES
('Muskan','muskan@example.com'),
('Kirti','kirti@example.com'),
('Nishu','nishu@example.com);
  
  select *from users;
  
  INSERT INTO products(name,category,price) VALUES
  ('Laptop','Electronics',70000),
  ('Smartphone','Electronics',50000),
  ('Headphones','Accessories',3000);
  ('charger','Electronics',1500);
  
  select*from products;

  INSERT INTO Purchases(user_id,product_id,purchase_date) VALUES
  (1,1,'2025-01-05'),-- Laptop
  (2,3,'2025-01-07'),--Smartphone
  (4,5,'2025-01-08),--Headphones
  (6,7,'2025-01-09),--Charger

  select*from products;

  INSERT INTO user_product_aggregation(user_id,category,purchase_count)
  SELECT Purchases.user_id,products.category,COUNT(Purchases.product_id) AS purchase_count
  FROM Purchases
  JOIN Products ON Purchases.product_id = Products.product_id
  GROUP BY Purchases.user_id, Products.category;
  select*from user_product_aggregation;
