/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quoctm.assignment3.registration;

/**
 *
 * @author SE130297
 */
public class RegistrationError {

    private String userNameNullErr;
    private String userNameCharErr;
    private String ageNullErr;
    private String ageCharErr;
    private String ageRangeErr;
    private String countryNullErr;
    private String courseNullErr;
    private String languageNullErr;
    
    public RegistrationError() {
    }

    public String getUserNameNullErr() {
        return userNameNullErr;
    }

    public void setUserNameNullErr(String userNameNullErr) {
        this.userNameNullErr = userNameNullErr;
    }

    public String getUserNameCharErr() {
        return userNameCharErr;
    }

    public void setUserNameCharErr(String userNameCharErr) {
        this.userNameCharErr = userNameCharErr;
    }

    public String getAgeNullErr() {
        return ageNullErr;
    }

    public void setAgeNullErr(String ageNullErr) {
        this.ageNullErr = ageNullErr;
    }

    public String getAgeCharErr() {
        return ageCharErr;
    }

    public void setAgeCharErr(String ageCharErr) {
        this.ageCharErr = ageCharErr;
    }

    public String getAgeRangeErr() {
        return ageRangeErr;
    }

    public void setAgeRangeErr(String ageRangeErr) {
        this.ageRangeErr = ageRangeErr;
    }

    public String getCountryNullErr() {
        return countryNullErr;
    }

    public void setCountryNullErr(String countryNullErr) {
        this.countryNullErr = countryNullErr;
    }

    public String getCourseNullErr() {
        return courseNullErr;
    }

    public void setCourseNullErr(String courseNullErr) {
        this.courseNullErr = courseNullErr;
    }

    public String getLanguageNullErr() {
        return languageNullErr;
    }

    public void setLanguageNullErr(String languageNullErr) {
        this.languageNullErr = languageNullErr;
    }
}
