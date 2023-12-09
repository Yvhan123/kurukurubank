package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve correct username and password from context parameters
        String correctUsername = getServletContext().getInitParameter("username");
        String correctPassword = getServletContext().getInitParameter("password");

        // Retrieve user input from login.jsp
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Check for null or empty values
        if (username == null || username.isEmpty() || password == null || password.isEmpty()) {
            request.getRequestDispatcher("nullValueException.jsp").forward(request, response);
        } else {
            // Check for correct username and password
            if (correctUsername.equals(username) && correctPassword.equals(password)) {
                response.sendRedirect("index.jsp"); //change the index.jsp to home page
            } else {
                // Incorrect credentials, forward to authenticationException.jsp
                request.getRequestDispatcher("authenticationException.jsp").forward(request, response);
            }
        }
    }
}