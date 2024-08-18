<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product List</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <%@ include file="navbar.jsp" %>
    
</head>
<body>
    <h2>Product List</h2>
    <table>
        <tr>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Action</th>
        </tr>
        <c:forEach var="product" items="${products}">
            <tr>
                <td>${product.name}</td>
                <td>${product.description}</td>
                <td>${product.price}</td>
                <td>${product.quantity}</td>
                <td>
                    <form action="cart" method="post">
                        <input type="hidden" name="productId" value="${product.id}">
                        <input type="number" name="quantity" value="1" min="1">
                        <button type="submit">Add to Cart</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="checkout.jsp">Checkout</a>
</body>
</html>
