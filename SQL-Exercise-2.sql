/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
SELECT P.Name AS ProductName, C.Name AS CategoryName 
FROM Products AS P
INNER JOIN categories AS C 
ON C.CategoryID = P.CategoryID
WHERE C.Name = 'Computers';
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
SELECT P.Name AS ProductName, P.Price AS ProductPrice, R.Rating AS Review
FROM Products as P
INNER JOIN reviews AS R
ON P.ProductID = R.ProductID
WHERE R.Rating = 5; 
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT E.FirstName AS EmployeeName, SUM(S.Quantity) AS QuantitySold
FROM employees AS E
INNER JOIN sales AS S
ON E.EmployeeId = S.EmployeeID
GROUP BY E.EmployeeID
ORDER BY QuantitySold DESC
LIMIT 2;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT D.Name AS DepartmentName, C.Name AS CategoryName
FROM departments AS D
INNER JOIN categories AS C
ON D.DepartmentID = C.DepartmentID
WHERE C.Name = "Appliances" OR C.Name = "Games";

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 SELECT P.Name AS ProductName, SUM(S.Quantity) AS TotalQuantitySold, SUM(P.Price * S.Quantity) AS TotalPriceSold
 FROM Products AS P
 INNER JOIN sales AS S
 ON P.ProductID = S.ProductID
 WHERE P.NAME = "Eagles: Hotel California";

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT P.Name AS ProductName, R.Reviewer AS ReviewerName, R.Rating AS Rating, R.Comment AS Comment
FROM Products AS P
INNER JOIN reviews AS R
ON P.ProductID = R.ProductID
WHERE P.Name = "Visio TV" AND R.Rating = 1;