package example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");

        try (Connection connection = DatabaseUtil.getConnection()) {
            String sql = "INSERT INTO Users (username, password, email) VALUES (?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password); // You should hash the password before storing it
            statement.setString(3, email);
            
            int rowsInserted = statement.executeUpdate();
            
            if (rowsInserted > 0) {
                // Registration successful, redirect to login page
                response.sendRedirect("login.jsp?message=Registration successful, please log in.");
            } else {
                // Registration failed, redirect back to registration page with an error message
                request.setAttribute("error", "Failed to register. Please try again.");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Database error. Please try again.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }
}
