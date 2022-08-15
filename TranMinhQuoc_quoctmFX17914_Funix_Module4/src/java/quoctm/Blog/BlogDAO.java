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
public class BlogDAO implements Serializable {

    public List<BlogDTO> getAllBlog() throws SQLException, NamingException {
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        List<BlogDTO> listBlog = null;
        try {
            conn = Ultils.makeConnection();
            if (conn != null) {
                String sql = "Select * from blog";
                stm = conn.prepareStatement(sql);
                rs = stm.executeQuery();
                while (rs.next()) {
                    String ID = rs.getString("ID");
                    String title = rs.getString("title");
                    String Content_summary = rs.getString("Content_summary");
                    String Article_content = rs.getString("Article_content");
                    String time = rs.getString("Time");
                    String Author = rs.getString("Author");
//                    String dat = time.toString();
                    BlogDTO dto = new BlogDTO(ID, title, Content_summary, Article_content, time, Author);
                    if (listBlog == null) {
                        listBlog = new ArrayList<>();
                    }
                    listBlog.add(dto);
                }
            }
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (conn != null) {
                conn.close();
            }
            return listBlog;
        }
    }

    public boolean createNewBlog(BlogDTO dto) throws SQLException, NamingException {
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        try {
            conn = Ultils.makeConnection();
            String sql = "INSERT INTO blog(ID, title, Content_summary, Article_content, Time, Author) "
                    + "VALUES (?, ?, ?, ?, ?, ?)";
//            String sql = "INSERT INTO blog(ID, title, Content_summary, Article_content, Author) "
//                    + "VALUES (?, ?, ?, ?, ?)";
            stm = conn.prepareStatement(sql);

            stm.setString(1, dto.getID());
            stm.setString(2, dto.getTitle());
            stm.setString(3, dto.getSummary());
            stm.setString(4, dto.getContent());
//            stm.setString(5, dto.getTime());
            stm.setString(6, dto.getAuthor());
            stm.setString(5, dto.getTime());

            int row = stm.executeUpdate();
            if (row > 0) {
                return true;
            }
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return false;
    }

    public static BlogDTO findBlog(String id) throws SQLException, NamingException {
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        BlogDTO blog = null;
        try {
            conn = Ultils.makeConnection();

            String sql = "Select * from blog where ID Like ? ";

            stm = conn.prepareStatement(sql);
            stm.setString(1, "%" + id + "%");
            rs = stm.executeQuery();
            if (rs.next()) {
                String title = rs.getString("title");
                String summary = rs.getString("Content_summary");
                String content = rs.getString("Article_content");
                String time = rs.getString("Time");
                String Author = rs.getString("Author");
                blog = new BlogDTO(id, title, summary, content, time, Author);
            }
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return blog;
    }

    public boolean updateBlog(String title, String summary, String content, String time, String author, String ID) throws SQLException, NamingException {
        Connection con = null;
        PreparedStatement stm = null;
        int rs = 0;
        try {
            con = Ultils.makeConnection();
            if (con != null) {
                String sql = "Update blog "
                        + "Set title = ?, Content_summary = ?, Article_content = ?, Time = ?, Author = ? "
                        + "Where ID = ?";
                stm = con.prepareStatement(sql);
                stm.setString(1, title);
                stm.setString(2, summary);
                stm.setString(3, content);
                stm.setString(4, time);
                stm.setString(5, author);
                stm.setString(6, ID);
                boolean check = stm.executeUpdate() > 0;
                if (check) {
                    return true;
                }
            }
        } finally {
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return false;
    }
}
