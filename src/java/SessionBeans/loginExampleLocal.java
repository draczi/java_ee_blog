/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SessionBeans;

import javax.ejb.Local;

/**
 *
 * @author Isi
 */
@Local
public interface loginExampleLocal {

    public String loginValide(String username, String password);
    
}
