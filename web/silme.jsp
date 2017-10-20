<%-- 
    Document   : silme
    Created on : Oct 14, 2017, 4:04:41 AM
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
            String gelen_id = request.getParameter("id");            
            String sql = "DELETE FROM person Where personId='"+gelen_id+"'";
            Common.database.silme(sql);
            out.println("Kayıt başarı ile silindi.<br>Tüm listeye erişmek için <a href = 'liste.jsp'>tıkla</a>");
        %>
        <a href="index.html">HOME PAGE</a>
    </center>
        <br>
        
    </body>
</html>
