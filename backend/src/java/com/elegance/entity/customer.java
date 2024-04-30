/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elegance.entity;

/**
 *
 * @author DELL
 */
public class customer {
   
    private int id;
    private String username;
    private String email;
    private String password;
    private String role;

    public int getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getRole() {
        return role;
    }

    public customer(int id, String username, String email, String password, String role) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
        this.role = role;
    }
    public customer(String username, String email, String password, String role) {

        this.username = username;
        this.email = email;
        this.password = password;
        this.role = role;
    }
}

    

