<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Checkout</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h2>Checkout</h2>
    <form action="checkout" method="post">
        <p>Review your order and click checkout to complete your purchase.</p>
        <button type="submit">Complete Purchase</button>
    </form>
    <p><%= request.getAttribute("message") %></p>
</body>
</html>
