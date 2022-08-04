/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quoctm.account;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author SE130297
 */
public class accountDTO {

    private Map<String, String> map = new HashMap<String, String>();

    public accountDTO() {
    }

    public void accountMap() {
//        map.put(username, password);
        map.put("admin", "123");
        map.put("admin2", "123");
        map.put("admin3", "123");
        map.put("admin4", "1234");
    }
    
    public int checkLogin(String username, String password) { // Login servlet
        boolean checkUsername = map.containsKey(username);
        if (checkUsername == true) {
            String passCheck = map.get(username);
            if (password.equalsIgnoreCase(passCheck)) {
                return 1;
            } else {
                return 2;
            }
        } else {
            System.out.println("this username is invalid");
            return 0;
        }
    }

}
