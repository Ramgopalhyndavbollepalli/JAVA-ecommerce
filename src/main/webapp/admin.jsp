<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Panel</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="productList.jsp">Products</a>
        <a href="shoppingcart.jsp">Shopping Cart</a>
        <a href="admin.jsp" class="active">Admin Panel</a>
        <a href="login.jsp">Login</a>
    </div>
    
    <div class="form-container">
        <h2>Admin Panel</h2>
        <h3>Add New Product</h3>
        <form action="ProductAdminServlet" method="post" enctype="multipart/form-data">
            <label for="name">Product Name:</label>
            <input type="text" id="name" name="name" required>
            
            <label for="description">Description:</label>
            <textarea id="description" name="description" rows="4" required></textarea>
            
            <label for="price">Price:</label>
            <input type="number" id="price" name="price" step="0.01" required>
            
            <label for="quantity">Quantity:</label>
            <input type="number" id="quantity" name="quantity" required>
            
            <label for="image">Product Image:</label>
            <input type="file" id="image" name="image" required>
            
            <button type="submit">Add Product</button>
        </form>
    </div>
</body>
</html>
