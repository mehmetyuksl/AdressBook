<%-- 
    Document   : kayitguncelle
    Created on : Oct 14, 2017, 12:26:57 AM
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
        <%
            Common.DatabaseOlustur();
            String personId = request.getParameter("personId");
            String name = request.getParameter("name");
            String surname = request.getParameter("surname");
            String address = request.getParameter("address");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String sql = "UPDATE person SET name='"+name+"',surname='"+surname+"',address='"+address+
                    "',phone='"+phone+"',email='"+email+"' WHERE personId='"+personId+"'";
            Common.database.editİslemi(sql);
            out.println("Kayit guncellendi<br>Tüm kayitlar için <a href='liste.jsp'>tıkla</a>");            
        %>
        <br>
        <a href="index.html">HOME PAGE</a>
    </center>
    </body>
</html>
