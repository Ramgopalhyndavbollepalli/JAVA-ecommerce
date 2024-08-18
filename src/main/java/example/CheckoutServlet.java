package example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@WebServlet("/checkout")
public class CheckoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<Product> cart = (List<Product>) session.getAttribute("cart");

        if (cart == null || cart.isEmpty()) {
            request.setAttribute("message", "Your cart is empty!");
            request.getRequestDispatcher("shoppingcart.jsp").forward(request, response);
            return;
        }

        // Implement checkout processing logic (e.g., save order, charge customer, etc.)

        session.removeAttribute("cart");
        request.setAttribute("message", "Order placed successfully!");
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
