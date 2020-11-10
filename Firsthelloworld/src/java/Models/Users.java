/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.sql.*;
import com.mysql.jdbc.Driver;

/**
 *
 * @author Owner
 */
public class Users {
    
    public boolean register_user(String user[]){
    
        String FirstName = user[0];
        String LastName = user[1];
        String Email = user[2];
        String Password = user[3];
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oshop","root","password");
        
          String query = "insert into customers(FirstName,LastName,Email,Password) values(?,?,?,?)";
          
          PreparedStatement ps = conn.prepareStatement(query);
          
          ps.setString(1, FirstName);
          ps.setString(2, LastName);
          ps.setString(3, Email);
          ps.setString(4, Password);
          
          int result= ps.executeUpdate();
          if(result!=0){
              return true;
          }else{
              return false;
          }
          
        }
        catch(Exception e){
            
            System.out.print("Something went wrong!");
        }
        
        return false;
}
    
    public String[] login_user(String user[]){
        
        String Email = user[0];
        String Password = user[1];
        
        String[] response =new String[3];
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oshop","root","password");
        
          String query = "select * from customers where Email='"+Email+"' and Password='"+Password+"';";
          
          Statement stmt = conn.createStatement();
          
          ResultSet rs = stmt.executeQuery(query);
          
          String FirstName= "";
          while(rs.next()){
              
              response[0] = rs.getString("FirstName");
              response[1] = rs.getString("id");
              response[2] = rs.getString("Email");
              
          }
          
          return response;
          
        }catch(Exception e){
            
            response[0]= "ERROR - Something went wrong!";
            
            return response;
        }
        
    }
    
}

