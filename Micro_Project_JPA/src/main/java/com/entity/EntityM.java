package com.entity;

import com.models.Article;


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;

public class EntityM {
    EntityManagerFactory emf = null;
    EntityManager em = null;
    public EntityM() {
        emf = Persistence.createEntityManagerFactory("Datajpa");
        em = emf.createEntityManager();
    }
    public Article get(int codearticle) {
        return em.find(Article.class, codearticle);
    }

    public List<Article> getAll() {
        List<Article> articles = em.createQuery("From Article", Article.class).getResultList();
        return articles;
    }
   
   public static EntityManager getEm() {
	   EntityManagerFactory emf = null;
       EntityManager em = null;
       try {
           emf = Persistence.createEntityManagerFactory("Datajpa");
           em = emf.createEntityManager();
       } catch (Exception e) {
           e.printStackTrace();
       }
       return em;

   }
 

}
