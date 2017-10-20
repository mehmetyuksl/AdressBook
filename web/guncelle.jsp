<%-- 
    Document   : guncelle
    Created on : Oct 13, 2017, 11:56:28 PM
    Author     : Mehmet
--%>

<%@page import="com.mehmet.database.Common"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Common.DatabaseOlustur();
            String gelen_id = request.getParameter("id");
            String sorgu = "SELECT * FROM person Where personId ='"+gelen_id+"'";
            //ResultSet veriler = sorgulama.executeQuery("SELECT * FROM person Where personId ='"+gelen_id+"'");
            ResultSet veriler = Common.database.editİslemi(sorgu);
            while(veriler.next()){
        %>
    <center>
        <form method="post" action="kayitguncelle.jsp" >
            <h3>Person Information</h3>
            <table>
                <input type="hidden" name="personId" value="<%= veriler.getString("personId")%>"/>
                <tr>
                    <td width="100">Name:</td>
                    <td><input type="text" name="name" value="<%= veriler.getString("name")%>"/></td>
                </tr>
                <tr>
                    <td width="100">Surname:</td>
                    <td><input type="text" name="surname" value="<%= veriler.getString("surname")%>"/></td>
                </tr>
                <tr>
                    <td width="100">Address:</td>
                    <td><input type="text" name="address" value="<%= veriler.getString("address")%>"/></td>
                </tr>
                <tr>
                    <td width="100">Phone:</td>
                    <td><input type="text" name="phone" value="<%= veriler.getString("phone")%>"/></td>
                </tr>
                <tr>
                    <td width="100">E-mail:</td>
                    <td><input type="text" name="email" value="<%= veriler.getString("email")%>"/></td>
                </tr>
            </table>
                <br>
                <input type="submit" value="Update Contact Information"/>
        </form>
    </center>
        <%
            }
        veriler.close();
        %>
    </body>
</html>
