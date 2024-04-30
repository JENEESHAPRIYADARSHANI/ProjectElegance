/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elegance.util;

import com.elegance.DBConnect.DBConnect;
import com.elegance.entity.Admin;
import com.elegance.entity.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DELL
 */

public class loginUtil {

    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;
    
    //check the user'spassword ans username is matching.
    public static List checkUser(String email, String password){
        ArrayList user = new ArrayList<>();
        try{
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "SELECT * FROM user WHERE email = '"+email+"' AND password = '"+password+"'";
            rs = stmt.executeQuery(sql);
            while (rs.next()){
                int id = rs.getInt(1);
                String usrname = rs.getString(2);
                String uemail = rs.getString(3);
                String pwd = rs.getString(4);
                String role = rs.getString(5);

                if (role.equals("customer")){
                    customer customer = new customer(id , usrname, uemail, pwd, role);
                    user.add(customer);
                }else if(role.equals("admin")){
                    Admin admin = new Admin(id, uemail, usrname,pwd, role);
                    user.add(admin);
                }
            }
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return user;
    }


}


    

