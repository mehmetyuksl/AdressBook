package com.mehmet.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Database {
    String URL = "jdbc:mysql://localhost:3306/personel";
    String USERNAME = "root";
    String PASSWORD = "";
    Connection baglanti;
    ResultSet result = null;
    
    public Database() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        baglanti = (Connection)DriverManager.getConnection(URL,USERNAME,PASSWORD);
    }
    
    public void ekle(String sorgu){
        result = null;
        try{
            PreparedStatement ekle = baglanti.prepareStatement(sorgu);
            ekle.executeUpdate();
        }catch(SQLException e){
        }
    }
    
    public ResultSet kayitGetir(String sorgu){
        result = null;
        try{
            Statement query = baglanti.createStatement();
            result = query.executeQuery(sorgu);
        }catch(SQLException ex){}
        return result;
    }
    
    public ResultSet tümKayitlar(String sorgu){
        result = null;
        try{
            Statement query = baglanti.createStatement();
            result = query.executeQuery(sorgu);
        }catch(SQLException ex){}
        return result;
    }
    
    public ResultSet editİslemi(String sorgu){
        result = null;
         try{
            Statement query = baglanti.createStatement();
            result = query.executeQuery(sorgu);
        }catch(SQLException ex){}
        return result;
    }
    
    public void silme(String sorgu){
        result = null;
        try{
            PreparedStatement ekle = baglanti.prepareStatement(sorgu);
            ekle.executeUpdate();
        }catch(SQLException e){
        }
    }
    
    
    
}
