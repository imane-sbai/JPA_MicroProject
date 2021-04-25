package com.controllers;

import java.io.IOException;



import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.EntityM;
import com.models.Article;


/**
 * Servlet implementation class ArticleCont
 */
@WebServlet("/ArticleCont")
public class ArticleCont extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ArticleCont() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 int codearticle=Integer.parseInt(request.getParameter("id"));
		
		 EntityManager etm= EntityM.getEm();
			
			Query q = etm.createQuery("Select a from Article a where a.codearticle= :codearticle");
			q.setParameter("codearticle", codearticle);

	     

			Article article = (Article) q.getResultList().stream().findFirst().orElse(null);
	                       // or :
		//Article article= (Article) q.getSingleResult();
			
				request.setAttribute("article1", article);
				 request.getRequestDispatcher("articledetails.jsp").forward(request, response);
		
			
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
