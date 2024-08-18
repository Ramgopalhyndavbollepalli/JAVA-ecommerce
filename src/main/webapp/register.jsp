<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="productList.jsp">Products</a>
        <a href="shoppingcart.jsp">Shopping Cart</a>
        <a href="admin.jsp">Admin Panel</a>
        <a href="login.jsp">Login</a>
    </div>
    
    <div class="form-container">
        <h2>Register</h2>
        <form action="RegisterServlet" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            
            <button type="submit">Register</button>
        </form>
        
        <div class="login-link">
            <p>Already have an account? <a href="login.jsp">Login here</a></p>
        </div>
        
        <% if (request.getAttribute("error") != null) { %>
            <div class="error-message">
                <p><%= request.getAttribute("error") %></p>
            </div>
        <% } %>
    </div>
</body>
</html>
