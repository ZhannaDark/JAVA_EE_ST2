package main.javaee.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import main.javaee.mini.shop.ConnectionDB;

import java.io.IOException;

@WebServlet(value = "/login")
public class LogInServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String user_name = ConnectionDB.getUser(email, password);
        if (user_name != null) {
            request.setAttribute("user", user_name);
            request.getRequestDispatcher("/profile.jsp").forward(request, response);
        } else {
            request.setAttribute("text", "Incorrect login or password!");
            request.getRequestDispatcher("/signup.jsp").forward(request, response);
        }

    }
}
