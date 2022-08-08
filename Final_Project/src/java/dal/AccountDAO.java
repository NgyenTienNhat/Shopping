/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import context.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Account;
import model.Manager;

/**
 *
 * @author Nguyen Tien Nhat
 */
public class AccountDAO extends DBContext {

    public Account login(String account, String password) {
        String sql = "select * from Customer_Account where account = ? and password = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, account);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Account(rs.getString("account"),
                        rs.getString("password"));
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Manager loginManager(String account, String password) {
        String sql = "select [account], [password] from Managers where account = ? and password = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, account);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Manager(
                        rs.getString("account"),
                        rs.getString("password"));
            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }
    
    public Account checkAccount(String account) {
        String sql = "select * from Customer_Account where account = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, account);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Account(rs.getString(1),
                        rs.getString(2));
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    public void signUp(String account, String password ){
        String sql = "INSERT INTO Customer_Account VALUES (?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, account);
            st.setString(2, password);
            st.executeUpdate();
            

        } catch (SQLException e) {
            System.out.println(e);
        }
        
    }
   
}
  