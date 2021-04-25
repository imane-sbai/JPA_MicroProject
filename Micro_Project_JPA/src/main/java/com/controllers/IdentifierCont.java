package com.controllers;
import com.models.*;


import com.dao.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class IdentifierCont
 */
@WebServlet("/IdentifierCont")
public class IdentifierCont extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAOImpl userda= new UserDAOImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IdentifierCont() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String motdepasse = request.getParameter("password");
		PrintWriter out = response.getWriter();
		User user=new User();
		user.setEmail(email);
		user.setMotdepasse(motdepasse);
		try {
		if (	userda.finduser(user)) {
			
			user=userda.findbyemail(email);
		
			HttpSession session = request.getSession();
			session.setAttribute("currentUser",user);
			response.sendRedirect("accueil1.jsp");
		}
		else {
			response.setContentType("text/html");
		
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Invalid Email or Password');");
		
			out.println("</script>");
			RequestDispatcher rd=request.getRequestDispatcher("SignIn.jsp");
			rd.include(request, response);
		}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
