-- Orders by specific customer
SELECT * FROM Orders WHERE CustomerID = 1;

-- Restaurants with rating > 4.0
SELECT * FROM Restaurants WHERE Rating > 4.0;

-- Most ordered restaurant
SELECT RestaurantID, COUNT(*) AS OrderCount
FROM Orders
GROUP BY RestaurantID
ORDER BY OrderCount DESC
LIMIT 1;

-- Update customer address
UPDATE Customers
SET Address = 'New Colony, City Centre'
WHERE CustomerID = 1;

-- View customers
SELECT * FROM Customers;

-- Total revenue
SELECT SUM(TotalAmount) AS TotalRevenue
FROM Orders;

-- Top 5 spenders
SELECT c.CustomerID, c.Name, SUM(o.TotalAmount) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.Name
ORDER BY TotalSpent DESC
LIMIT 5;

-- Most ordered food item
SELECT f.FoodItemID, f.Name, SUM(oi.Quantity) AS TotalOrdered
FROM FoodItems f
JOIN OrderItems oi ON f.FoodItemID = oi.FoodItemID
GROUP BY f.FoodItemID, f.Name
ORDER BY TotalOrdered DESC
LIMIT 1;

-- Orders in a date range
SELECT * FROM Orders
WHERE OrderDate BETWEEN '2025-03-31' AND '2025-04-07';

-- Orders per restaurant
SELECT r.RestaurantID, r.Name, COUNT(o.OrderID) AS TotalOrders
FROM Restaurants r
LEFT JOIN Orders o ON r.RestaurantID = o.RestaurantID
GROUP BY r.RestaurantID, r.Name;

-- Repeated customers per restaurant
SELECT r.RestaurantID, r.Name, COUNT(*) AS RepeatedCustomers
FROM Orders o
JOIN (
    SELECT CustomerID, RestaurantID
    FROM Orders
    GROUP BY CustomerID, RestaurantID
    HAVING COUNT(OrderID) > 1
) repeated ON o.CustomerID = repeated.CustomerID AND o.RestaurantID = repeated.RestaurantID
JOIN Restaurants r ON r.RestaurantID = o.RestaurantID
GROUP BY r.RestaurantID, r.Name;