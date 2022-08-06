/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login_Process;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author SE130297
 */
public class MapClass {
    private Map map = new HashMap();

    public MapClass() {
    }

    public Map getMap() {
        return map;
    }

    public void setMap(Map map) {
        this.map = map;
    }
    
    public void saveUser(String user, String password){
        map.put(user, password);
    }
    
    public boolean containKey(String user){
        if(!map.containsKey(user)){
            return false;
        }
        return true;
    }
}
