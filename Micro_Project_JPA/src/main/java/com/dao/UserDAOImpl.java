package com.dao;





import com.entity.EntityM;
import com.models.Article;
import com.models.User;

import java.sql.*;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

public class UserDAOImpl implements UserDao {


@Override
    public boolean create(User u)  {
	 EntityManager em= EntityM.getEm();
	 
	 em.getTransaction().begin();
		em.persist(u);
		em.getTransaction().commit();

 
        return true;
    }
@Override
    public boolean finduser(User u)  {
	 EntityManager em= EntityM.getEm();

 
		Query q = em.createQuery("Select c from User c where c.email= :email and c.motdepasse= :mdp");
		q.setParameter("email",u.getEmail());
		q.setParameter("mdp",u.getMotdepasse());

		User client = (User) q.getResultList().stream().findFirst().orElse(null);
                // or :
		//User client = (User) q.getSingleResult(); 
               

		if(client==null) return false;
		else return true;

    }
@Override
    public User findbyemail(String email) {
	
	 EntityManager em= EntityM.getEm();

	 
		Query q = em.createQuery("Select c from User c where c.email= :email");
		q.setParameter("email",email);
		

		User user = (User) q.getResultList().stream().findFirst().orElse(null);
                      // or :
		//User user = (User) q.getSingleResult();
        return user;
    }


 

  

  
}
