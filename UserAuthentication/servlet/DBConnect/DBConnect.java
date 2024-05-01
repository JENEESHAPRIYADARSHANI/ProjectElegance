/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elegance.DBConnect;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author DELL
 */
public class DBConnect {

    private static String url = "jdbc:mysql://localhost:3306/elegance";
    private static String username = "root";
    private static String password = "";
    private static Connection con;

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, username, password);
            System.out.println("Database connection established successfully!");
        } catch (Exception ex) {
            System.err.println("Error connecting to the database: " + ex.getMessage());
            ex.printStackTrace();
        }
        return con;
    }
}
