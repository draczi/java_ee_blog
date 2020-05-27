/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SessionBeans;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import model.Blogs;
/**
 *
 * @author Isi
 */
@Stateless
public class blogsDAO implements blogsDAOLocal {

    @PersistenceContext
    private EntityManager em;
   
   @Override
   public void addBlog(Blogs blog) {
       em.persist(blog);
   }
   
    @Override
   public List<Blogs> allBlogs() {
       return em.createNamedQuery("Blogs.findAll").getResultList();
   }
   
    @Override
   public List<Blogs> latestArticles() {
       return em.createNamedQuery("Blogs.findAllOrderBy").setMaxResults(3).getResultList();
   }
   
    @Override
   public List<Blogs> searchBlogs(String search) {
       return em.createQuery("SELECT b FROM Blogs b WHERE b.title like :search OR b.message like :search").setParameter("search", "%"+search+"%").getResultList();
   }
   
    @Override
   public List<Blogs> findBlogById(int id) {
       return em.createNamedQuery("Blogs.findById").setParameter("id", id).getResultList();
   }
   
    @Override
   public void deleteBlog(int id) {
       em.remove(em.find(Blogs.class, id));
   }
   


    @Override
   public void editBlog(int id, String title, String message) {
       em.createQuery("UPDATE Blogs b SET b.title = '"+title+"', b.message = '"+message+"' WHERE b.id = '"+id+"' ").executeUpdate();
   }
}