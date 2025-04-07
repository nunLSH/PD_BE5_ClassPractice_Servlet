package com.grepp.servlet.app.member;

import com.grepp.servlet.app.auth.Principal;
import com.grepp.servlet.app.auth.Role;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;

@WebServlet("/member/*")
public class MemberController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
        String url = req.getRequestURI();
        String[] urlArr = url.split("/");

        switch (urlArr[urlArr.length - 1]) {
            case "login":
                login(req, resp);
                break;
            case "logout":
                logout(req, resp);
                break;
            default:
                resp.setStatus(404);
        }
    }

    private void logout(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        HttpSession session = req.getSession();
        session.removeAttribute("principle");
        resp.sendRedirect("/");
    }

    private void login(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        HttpSession session = req.getSession();
        String userId = req.getParameter("userId");
        String password = req.getParameter("password");

        resp.setHeader("set-cookie", "JSESSIONID=" + session.getId() + "; max-age=3600; path=/");
        session.setAttribute("principal", new Principal(userId, List.of(Role.ROLE_USER), LocalDateTime.now()));
        resp.sendRedirect("/");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
        super.doPost(req, resp);
    }
}