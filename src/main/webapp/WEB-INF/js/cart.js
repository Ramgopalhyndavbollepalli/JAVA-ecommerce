function clearCart() {
    if (confirm("Are you sure you want to clear the cart?")) {
        fetch('cart', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            },
            body: 'action=clear'
        })
        .then(response => response.redirect("shoppingcart.jsp"));
    }
}
