/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quoctm.Blog;

import java.io.Serializable;
//import java.sql.Date;
//import java.util.Date;


/**
 *
 * @author SE130297
 */
public class BlogDTO implements Serializable{
    private String ID;
    private String title;
    private String summary;
    private String content;
    private String time;
    private String author;

    public BlogDTO() {
    }

    public BlogDTO(String ID, String title, String summary, String content, String time, String author) {
        this.ID = ID;
        this.title = title;
        this.summary = summary;
        this.content = content;
        this.time = time;
        this.author = author;
    }
    
     public BlogDTO(String ID, String title, String summary, String content, String author) {
        this.ID = ID;
        this.title = title;
        this.summary = summary;
        this.content = content;
        this.author = author;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

}
