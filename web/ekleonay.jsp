<%-- 
    Document   : ekleonay
    Created on : Oct 13, 2017, 9:17:42 PM
    Author     : Mehmet
--%>

<%@page import="com.mehmet.database.Common"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h2>NEW RECORD</h2>
        
        
        <%
            Common.DatabaseOlustur();
            
            String adi = request.getParameter("adi");
            String soyadi = request.getParameter("soyadi");
            String adres = request.getParameter("adres");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
             
            String sorgu = "INSERT INTO person(name,surname,address,phone,email)VALUES"
                    +"('"+adi+"','"+soyadi+"','"+adres+"','"+phone+"','"+email+"')";
            Common.database.ekle(sorgu);
            out.println("Yeni kayıt başarıyla eklenmiştir...<br><a href='index.html'>HOME PAGE</a>");
        %>
    </center>
    </body>
</html>
