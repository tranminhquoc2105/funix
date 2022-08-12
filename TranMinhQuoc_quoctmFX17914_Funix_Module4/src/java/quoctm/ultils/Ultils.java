/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quoctm.ultils;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author SE130297
 */
public class Ultils implements Serializable {

    public static Connection makeConnection() throws SQLException, NamingException {
        //Load driver

        //++++ Buoc 1
//        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//        String url ="jdbc:sqlserver://localhost:1433;databaseName=SE1401";
//        Connection con = DriverManager.getConnection(url, "sa", "123456");
//        return con;
        // + Buoc 2
        //1
        Context context = new InitialContext();
        //2
        Context tomcatCtx = (Context) context.lookup("java:comp/env");
        //3
        DataSource data = (DataSource) tomcatCtx.lookup("SE130297");
        Connection con = data.getConnection();
        return con;
    }
}
