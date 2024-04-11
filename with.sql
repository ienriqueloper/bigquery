CREATE TABLE `curso-384005.ecommerce.customers` (
  CustomerID INT64 NOT NULL,
  FirstName STRING,
  LastName STRING,
  RegionID INT64
);


CREATE TABLE `curso-384005.ecommerce.products` (
  ProductID INT64 NOT NULL,
  Name STRING,
  Category STRING
);


CREATE TABLE `curso-384005.ecommerce.sales` (
  SaleID INT64 NOT NULL,
  CustomerID INT64,
  ProductID INT64,
  Quantity INT64,
  SaleDate DATE
);


CREATE TABLE `curso-384005.ecommerce.regions` (
  RegionID INT64 NOT NULL,
  RegionName STRING
);

INSERT INTO `curso-384005.ecommerce.customers` (CustomerID, FirstName, LastName, RegionID)
VALUES
  (1, 'Juan', 'Pérez', 1),
  (2, 'Ana', 'Gómez', 2),
  (3, 'Luis', 'Martínez', 1),
  (4, 'Sofía', 'López', 3),
  (5, 'Carlos', 'Navarro', 2),
  (6, 'María', 'Díaz', 3),
  (7, 'Jorge', 'Morales', 1),
  (8, 'Patricia', 'Castro', 4),
  (9, 'Roberto', 'Fernández', 2),
  (10, 'Lucía', 'Pérez', 3);


INSERT INTO `curso-384005.ecommerce.products` (ProductID, Name, Category)
VALUES
  (1, 'Laptop', 'Electronics'),
  (2, 'Smartphone', 'Electronics'),
  (3, 'Desk', 'Furniture'),
  (4, 'Chair', 'Furniture'),
  (5, 'Tablet', 'Electronics'),
  (6, 'Monitor', 'Electronics'),
  (7, 'Sofa', 'Furniture'),
  (8, 'Bookshelf', 'Furniture'),
  (9, 'Mouse', 'Electronics'),
  (10, 'Keyboard', 'Electronics');


INSERT INTO `curso-384005.ecommerce.sales` (SaleID, CustomerID, ProductID, Quantity, SaleDate)
VALUES
  (1, 1, 1, 1, '2023-04-01'),
  (2, 2, 2, 2, '2023-04-02'),
  (3, 3, 3, 450, '2023-04-03'),
  (4, 4, 4, 4, '2023-04-04'),
  (5, 5, 5, 100, '2023-04-05'),
  (6, 6, 6, 200, '2023-04-06'),
  (7, 7, 1, 300, '2023-04-07'),
  (8, 8, 2, 400, '2023-04-08'),
  (9, 1, 9, 150, '2023-04-09'),
  (10, 2, 10, 150, '2023-04-10'),
  (11, 3, 5, 100, '2023-04-11'),
  (12, 4, 6, 200, '2023-04-12'),
  (13, 5, 9, 250, '2023-04-13'),
  (14, 6, 10, 250, '2023-04-14');


INSERT INTO `curso-384005.ecommerce.regions` (RegionID, RegionName)
VALUES
  (1, 'North'),
  (2, 'South'),
  (3, 'East'),
  (4, 'West'),
  (5, 'Central'),
  (6, 'Northeast');
