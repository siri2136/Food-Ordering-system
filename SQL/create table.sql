CREATE DATABASE online_food_order;
USE online_food_order;

CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  Name VARCHAR(100),
  Contact VARCHAR(20),
  Address VARCHAR(200)
);

CREATE TABLE Restaurants (
  RestaurantID INT PRIMARY KEY,
  Name VARCHAR(100),
  Location VARCHAR(100),
  Rating FLOAT
);

CREATE TABLE FoodItems (
  FoodItemID INT PRIMARY KEY,
  RestaurantID INT,
  Name VARCHAR(100),
  Price DECIMAL(6,2),
  FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
);

CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerID INT,
  RestaurantID INT,
  OrderDate DATE,
  TotalAmount DECIMAL(7,2),
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
  FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
);

CREATE TABLE OrderItems (
  OrderItemID INT PRIMARY KEY,
  OrderID INT,
  FoodItemID INT,
  Quantity INT,
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
  FOREIGN KEY (FoodItemID) REFERENCES FoodItems(FoodItemID)
);