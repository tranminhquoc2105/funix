/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quoctm.login;

/**
 *
 * @author SE130297
 */
public class LoginFail {
     private String loginErorr;

    public LoginFail() {
    }

    public LoginFail(String loginErorr) {
        this.loginErorr = loginErorr;
    }

    public String getLoginErorr() {
        return loginErorr;
    }

    public void setLoginErorr(String loginErorr) {
        this.loginErorr = loginErorr;
    }
}
