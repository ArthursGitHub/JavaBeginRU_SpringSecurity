package com.javabycode;

import javax.servlet.ServletException;
import javax.servlet.annotation.HttpConstraint;
import javax.servlet.annotation.HttpMethodConstraint;
import javax.servlet.annotation.ServletSecurity;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/auth")
@ServletSecurity(
        value = @HttpConstraint(rolesAllowed = {"auth"}),
        httpMethodConstraints = {@HttpMethodConstraint(value = "GET", rolesAllowed = {"auth"}),
                                 @HttpMethodConstraint(value = "POST")}
        )
public class AuthServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        out.write("Your credentials are authenticated to access web application");
    }
}
