
package pl.sdacademy;

import pl.sdacademy.model.Database;
import pl.sdacademy.model.Users;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by Gutek on 2017-05-28.
 */
public class MovieDeletedServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws SecurityException, IOException, ServletException {
        resp.setContentType("text/html");

        HttpSession session = req.getSession(true);
        Database baza = (Database) session.getAttribute("baza");

        baza.deleteMovie(Integer.parseInt(req.getParameter("titleNumber"))-1,(Users) session.getAttribute("user"));

        session.setAttribute("user", baza.getUsers().get(baza.getUsers().indexOf(session.getAttribute("user"))));
        req.getRequestDispatcher("/user.jsp").forward(req, resp);



    }
}

