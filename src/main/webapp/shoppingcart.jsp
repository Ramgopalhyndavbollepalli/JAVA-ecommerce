<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Shopping Cart</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
        <%@ include file="navbar.jsp" %>
    
    <script src="js/cart.js"></script>
</head>
<body>
    <h2>Shopping Cart</h2>
    <table>
        <tr>
            <th>Name</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Total</th>
            <th>Action</th>
        </tr>
        <c:forEach var="product" items="${cart}">
            <tr>
                <td>${product.name}</td>
                <td>${product.quantity}</td>
                <td>${product.price}</td>
                <td>${product.quantity * product.price}</td>
                <td>
                    <form action="cart" method="post">
                        <input type="hidden" name="productId" value="${product.id}">
                        <button type="submit">Remove</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
    <form action="checkout" method="post">
        <button type="submit">Checkout</button>
    </form>
    <button onclick="clearCart()">Clear Cart</button>
</body>
</html>
