package com.controllers;
import com.models.User;





import com.dao.*;
import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InscrireCont
 */
@WebServlet("/InscrireCont")
public class InscrireCont extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAOImpl userdao=new UserDAOImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InscrireCont() {
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
		PrintWriter out = response.getWriter();
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String email = request.getParameter("email");
	
	
		String motdepasse = request.getParameter("password");
		String adresse = request.getParameter("adresse");
		User newuser=new User(nom,prenom,email,adresse,motdepasse);

			
				try {
					userdao.create(newuser);
					request.getRequestDispatcher("SignIn.jsp").forward(request, response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
		}
		

	}


