/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SessionBeans;

import java.util.List;
import javax.ejb.Local;
import model.Blogs;


/**
 *
 * @author Isi
 */
@Local
public interface blogsDAOLocal {

    public void addBlog(Blogs blog);

    public List<Blogs> allBlogs();

    public List<Blogs> latestArticles();

    public List<Blogs> searchBlogs(String search);

    public List<Blogs> findBlogById(int id);

    public void deleteBlog(int id);

    public void editBlog(int id, String title, String message);

 
}
