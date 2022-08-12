/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quoctm.Blog;

import java.io.Serializable;
import java.sql.Array;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.NamingException;
import quoctm.ultils.Ultils;

/**
 *
 * @author SE130297
 */
public class BlogDAO implements Serializable{
    public List<BlogDTO> getAllBlog () throws SQLException, NamingException{
          Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        List<BlogDTO> listBlog = null;
        try{
            conn = Ultils.makeConnection();
            if(conn != null){
                String sql = "Select * from blog";
                  ps = conn.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    String ID = rs.getString("ID");
                    String title= rs.getString("title");
                    String Content_summary= rs.getString("Content_summary");
                    String Article_content= rs.getString("Article_content");
                    Date time= rs.getDate("Time");
                    String Author= rs.getString("Author");
                    String dat = time.toString();
                    BlogDTO dto = new BlogDTO(ID, title, Content_summary, Article_content, dat, Author);
                    if(listBlog == null){
                        listBlog = new ArrayList<>();
                    }
                    listBlog.add(dto);
                }
            }
        }finally {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (conn != null) {
                conn.close();
            }
            return listBlog;
        }
    }
}
