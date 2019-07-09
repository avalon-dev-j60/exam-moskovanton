package ru.avalon.blog.services;

import java.util.Collections;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.*;
import ru.avalon.blog.entities.Reviews;

@Stateless
public class ReviewsService {
    
    @PersistenceContext(unitName = "Blog-PU")
    EntityManager em;
    
    public void create(Reviews reviews) {
        em.persist(reviews);
    }
    
    public void update(Reviews reviews) {
        em.merge(reviews);
    }
    
    public void delete(Reviews reviews) {
        em.remove(reviews);
    }
    
    public Reviews find(long id) {
        try{
            return em
                    .createNamedQuery("find-reviews-by-id", Reviews.class)
                    .setParameter("id", id)
                    .getSingleResult();
        } catch (NoResultException e){
            return null;
        }
    }
    
    public List<Reviews> all() {
        try{
            return em
                    .createNamedQuery("find-all-reviews", Reviews.class)
                    .getResultList();
        } catch (NoResultException e){
            return Collections.emptyList();
        }
    }
    
}

