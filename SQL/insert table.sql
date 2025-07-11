-- Customers
INSERT INTO Customers VALUES 
(1, 'Sirija', '9876543210', 'Colony-1, City Centre'),
(2, 'Satya', '2345678901', 'Colony-7, Durgapur'),
(3, 'Vansh Raj', '3456789012', 'Colony-3,City Centre'),
(4, 'Yousuf Khan', '9037445510', 'Colony-5,Benachity'),
(5, 'Sandeep', '3999789012', 'Colony-2,Durgapur');

-- Restaurants
INSERT INTO Restaurants VALUES 
(1, 'KFC', 'Junction Mall', 4.5),
(2, 'Burger King', 'Benachity', 4.2),
(3, 'PizzaHut', 'City Center', 3.9),
(4, 'UBQNation', 'City Center', 4.1),
(5, 'Momo', 'Junction Mall', 3.8);

-- Food Items
INSERT INTO FoodItems VALUES
(1, 3, 'Margherita Pizza', 99.99),
(2, 3, 'Classic Pizza', 49.49),
(3, 2, 'Cheeseburger', 66.99),
(4, 1, 'KFC Soecial Bucket', 159.99),
(5, 4, 'Chicken Biryani', 349.00),
(6, 5, 'Veg Momo', 59.00);

-- Orders
INSERT INTO Orders VALUES
(201, 1, 3, '2025-04-01', 149.48),
(202, 2, 1, '2025-04-02', 159.99),
(203, 3, 2, '2025-04-03', 66.99),
(204, 4, 4, '2025-04-04', 349.00),
(205, 5, 5, '2025-04-05', 59.00);

-- Order Items
INSERT INTO OrderItems VALUES
(11, 201, 1, 1),
(12, 201, 2, 1),
(13, 202, 4, 1),
(14, 203, 3, 1),
(15, 204, 5, 1),
(16, 205, 6, 1);