/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mehmet.database;

import java.sql.SQLException;

/**
 *
 * @author Mehmet
 */
public class Common {
    public static Database database=null;
    
    public static void DatabaseOlustur() throws ClassNotFoundException, SQLException{ 
        if(database==null)
    database = new Database();
    
    }
}
