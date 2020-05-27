/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SessionBeans;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.ejb.Stateless;
import javax.sql.DataSource;

/**
 *
 * @author Isi
 */
@Stateless
public class loginExample implements loginExampleLocal {

    @Resource(name = "blogs")
    private DataSource blogs;

    
    Connection conn;
    ResultSet rs;
    String fname;
    
    @Override
    public String loginValide(String username, String password) {
        try {
            conn = blogs.getConnection();
            rs = conn.prepareStatement("SELECT fname FROM users WHERE username = '"+username+"' AND password = '"+password+"'").executeQuery();
            if(rs.next()) {
                fname = rs.getString("fname");
                conn.close();
                return fname;
            } else {
                fname = null;
                conn.close();
                return fname;
            }
        } catch (SQLException ex) {
            Logger.getLogger(loginExample.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
