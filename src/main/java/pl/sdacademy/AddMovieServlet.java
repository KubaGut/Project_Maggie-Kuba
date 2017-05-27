package pl.sdacademy;


import pl.sdacademy.model.Database;
import pl.sdacademy.model.Users;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

public class AddMovieServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws SecurityException, IOException, ServletException {
        resp.setContentType("text/html");

        HttpSession session = req.getSession(true);
        Database baza = (Database) session.getAttribute("baza");
        baza.addMovie(req.getParameter("title"),req.getParameter("directorName"),req.getParameter("directorLastName"),
                req.getParameter("premieraDate"),req.getParameter("category"),req.getParameter("place"),
                req.getParameter("actorName"),req.getParameter("actorLastName"),req.getParameter("actorDateOfBirth"),
                req.getParameter("actorPlaceOfBirth"),req.getParameter("actorDeathPlace"),(Users) session.getAttribute("user"));

        session.setAttribute("user", baza.getUsers().get(baza.getUsers().indexOf(session.getAttribute("user"))));
        req.getRequestDispatcher("/user.jsp").forward(req, resp);

    }
}
