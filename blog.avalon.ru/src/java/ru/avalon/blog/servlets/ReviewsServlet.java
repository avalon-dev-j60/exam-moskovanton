package ru.avalon.blog.servlets;

import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ru.avalon.blog.entities.Reviews;
import ru.avalon.blog.services.ReviewsService;

@WebServlet("/reviews/all")
public class ReviewsServlet extends HttpServlet {
    
    private static final String JSP = "/WEB-INF/pages/reviews/all.jsp";
    
    @EJB ReviewsService reviewsService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Reviews> items = reviewsService.all();
        request.setAttribute("items", items);
        request.getRequestDispatcher(JSP).forward(request, response);
    }
    
   
}