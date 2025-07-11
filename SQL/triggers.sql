DELIMITER $$

CREATE TRIGGER UpdateOrderTotal
AFTER INSERT ON OrderItems
FOR EACH ROW
BEGIN
  DECLARE item_price DECIMAL(6,2);
  DECLARE order_total DECIMAL(7,2);

  SELECT Price INTO item_price
  FROM FoodItems
  WHERE FoodItemID = NEW.FoodItemID;

  SELECT TotalAmount INTO order_total
  FROM Orders
  WHERE OrderID = NEW.OrderID;

  UPDATE Orders
  SET TotalAmount = order_total + (item_price * NEW.Quantity)
  WHERE OrderID = NEW.OrderID;
END $$

DELIMITER ;