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
public class Vehicles{
    
    public boolean vehicle_user(String user[]){
    
        String FirstName = user[0];
        String LastName = user[1];
        String Cell = user[2];
        String Email = user[3];
        String make = user[4];
        String comments = user[5];
        
        
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oshop","root","password");
        
          String query = "insert into vehicles(FirstName,LastName,Cell,Email,make,comments) values(?,?,?,?,?,?)";
          
          PreparedStatement ps = conn.prepareStatement(query);
          
          ps.setString(1, FirstName);
          ps.setString(2, LastName);
          ps.setString(3, Cell);
          ps.setString(4, Email);
          ps.setString(5, make);
          ps.setString(6, comments);
          
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
}