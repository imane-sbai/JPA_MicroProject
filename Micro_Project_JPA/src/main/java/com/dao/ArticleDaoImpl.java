package com.dao;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import com.entity.EntityM;
import com.models.Article;



public class ArticleDaoImpl implements ArticleDao{
	@Override
	  public List<Article> getAllArticles()  {
	      EntityM ent= new EntityM();

	        return ent.getAll();
	    }
   @Override
		 public List<Article> getArticles(String categorie){
			EntityManager etm= EntityM.getEm();
			
			Query q = etm.createQuery("Select a from Article a where a.categ= :categorie");
			q.setParameter("categorie", categorie);

			List<Article> articles=q.getResultList();
			
		    
			return articles;
		}
	 
}
