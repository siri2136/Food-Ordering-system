DELIMITER $$

CREATE PROCEDURE GetCustomerOrders(IN cust_id INT)
BEGIN
  SELECT o.OrderID, o.OrderDate, o.TotalAmount, r.Name AS Restaurant
  FROM Orders o
  JOIN Restaurants r ON o.RestaurantID = r.RestaurantID
  WHERE o.CustomerID = cust_id;
END $$

DELIMITER ;