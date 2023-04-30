package com.logindao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author vajpa
 */
public class LoginDao {
    String sql = "select * from login where uname=? and pass=?";
    String url="jdbc:mysql://localhost:4307/users";
    String username="root";
    String password = "Adarsh12vaj3";
    
    public boolean check(String uname,String pass)
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,username,password);
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, uname);
            pst.setString(2, pass);
            ResultSet rs = pst.executeQuery();
            if(rs.next())
            {
                return true;
            }
        }
        catch(Exception e)
        {
            
        }
        return false;
    }
}
