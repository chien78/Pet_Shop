USE PetShop_db
GO

/* PROC FOR tbUser */
CREATE PROCEDURE usp_AddUser
    @name VARCHAR(50),
    @address VARCHAR(50),
    @phone VARCHAR(50),
    @role VARCHAR(50),
    @dob DATE,
    @password VARCHAR(50)
AS
BEGIN
    INSERT INTO tbUser (name, address, phone, role, dob, password)
    VALUES (@name, @address, @phone, @role, @dob, @password)
END
GO

CREATE PROCEDURE usp_DelUser
    @id INT
AS
BEGIN
    DELETE FROM tbUser
    WHERE id = @id
END
GO

CREATE PROCEDURE usp_UpdateUser
    @id INT,
    @name VARCHAR(50),
    @address VARCHAR(50),
    @phone VARCHAR(50),
    @role VARCHAR(50),
    @dob DATE,
    @password VARCHAR(50)
AS
BEGIN
    UPDATE tbUser
    SET name = @name, address = @address, phone = @phone, role = @role, dob = @dob, password = @password
    WHERE id = @id
END
GO

CREATE PROCEDURE usp_FindUser
    @name VARCHAR(50)
AS
BEGIN
    SELECT *
    FROM tbUser
    WHERE name LIKE @name
END
GO

/* PROC FOR tbProduct */
CREATE PROCEDURE usp_AddProduct
    @pname VARCHAR(50),
    @ptype VARCHAR(50),
    @pcategory VARCHAR(50),
    @pqty INT,
    @pprice DECIMAL(18,2)
AS
BEGIN
    INSERT INTO tbProduct (pname, ptype, pcategory, pqty, pprice)
    VALUES (@pname, @ptype, @pcategory, @pqty, @pprice)
END
GO

CREATE PROCEDURE usp_DelProduct
    @pcode INT
AS
BEGIN
    DELETE FROM tbProduct
    WHERE pcode = @pcode
END
GO

CREATE PROCEDURE usp_UpdateProduct
    @pcode INT,
    @pname VARCHAR(50),
    @ptype VARCHAR(50),
    @pcategory VARCHAR(50),
    @pqty INT,
    @pprice DECIMAL(18,2)
AS
BEGIN
    UPDATE tbProduct
    SET pname = @pname, ptype = @ptype, pcategory = @pcategory, pqty = @pqty, pprice = @pprice
    WHERE pcode = @pcode
END

GO

CREATE PROCEDURE usp_FindProduct
    @name NVARCHAR(50)

AS
BEGIN
    SELECT *
    FROM tbProduct
    WHERE pname LIKE @name
END

GO

CREATE PROCEDURE usp_FindCategoryProduct
    @name NVARCHAR(50)

AS
BEGIN
    SELECT pcategory
    FROM tbProduct
    WHERE pname = @name
END

GO

CREATE PROCEDURE usp_FindPriceProduct
    @name NVARCHAR(50)

AS
BEGIN
    SELECT pprice
    FROM tbProduct
    WHERE pname = @name
END

GO

CREATE PROCEDURE usp_MinusQuantity
    @qty NVARCHAR(50),
	@name NVARCHAR(50)

AS
BEGIN
    UPDATE tbProduct
	SET pqty = @qty
	WHERE pname = @name
END

GO

CREATE PROCEDURE usp_GetQuantity
    @name NVARCHAR(50)

AS
BEGIN
    SELECT pqty
    FROM tbProduct
    WHERE pname = @name
END

GO

/* PROC FOR tbCustomer */
CREATE PROCEDURE usp_AddCustomer
    @name VARCHAR(30),
    @address VARCHAR(100),
    @phone VARCHAR(20)
AS
BEGIN
    INSERT INTO tbCustomer (name, address, phone)
    VALUES (@name, @address, @phone)
END
GO

CREATE PROCEDURE usp_DelCustomer
    @id INT
AS
BEGIN
    DELETE FROM tbCustomer
    WHERE id = @id
END
GO

CREATE PROCEDURE usp_UpdateCustomer
    @id INT,
    @name VARCHAR(30),
    @address VARCHAR(100),
    @phone VARCHAR(20)
AS
BEGIN
    UPDATE tbCustomer
    SET name = @name, address = @address, phone = @phone
    WHERE id = @id
END
GO

CREATE PROCEDURE usp_FindCustomer
    @name VARCHAR(30)
AS
BEGIN
    SELECT *
    FROM tbCustomer
    WHERE name LIKE @name
END
GO

/* PROC FOR tbCash */
CREATE PROCEDURE usp_SaveCash
    @name VARCHAR(50),
    @qty INT,
    @price DECIMAL(18,2),
    @total DECIMAL(18,2),
    @cname NVARCHAR(100),
    @cashier NVARCHAR(20)
AS
BEGIN
    INSERT INTO tbCash (cname, cashier, name, qty, price, total)
    VALUES (@cname, @cashier, @name, @qty, @price, @total)
END

GO