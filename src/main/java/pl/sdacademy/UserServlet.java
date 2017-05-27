package pl.sdacademy;

import pl.sdacademy.model.Database;
import pl.sdacademy.model.Users;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class UserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws SecurityException, IOException, ServletException {
        resp.setContentType("text/html");

        String login = req.getParameter("Login");
        String password = req.getParameter("Password");

        Database baza = new Database();
        baza.createDatabase();

        for(Users p: baza.getUsers()){
            if (p.getLogin().equals(login) && p.getPassword().equals(password)){
                HttpSession session = req.getSession(true);
                session.setAttribute("user", p);
                session.setAttribute("baza", baza);
                req.getRequestDispatcher("/user.jsp").forward(req, resp);
            }
        }
        req.setAttribute("wrong", "WRONG PASSWORD");
        req.getRequestDispatcher("/login.jsp").forward(req, resp);

    }
}
