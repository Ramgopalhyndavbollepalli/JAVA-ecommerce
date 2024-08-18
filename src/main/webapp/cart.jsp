<!DOCTYPE html>
<html>
<head>
    <title>Shopping Cart</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <%@ include file="navbar.jsp" %>

    <div class="container">
        <h2>Your Cart</h2>
        <c:forEach var="product" items="${sessionScope.cart}">
            <div class="cart-item">
                <div>
                    <h3>${product.name}</h3>
                    <p>Price: $${product.price}</p>
                </div>
                <a href="cart?action=remove&productId=${product.id}"><button>Remove</button></a>
            </div>
        </c:forEach>
        <a href="checkout.jsp"><button>Proceed to Checkout</button></a>
    </div>
    <footer>
        <p>&copy; 2024 E-Commerce Store. All rights reserved.</p>
    </footer>
</body>
</html>
