<%-- 
    Document   : ekle
    Created on : Oct 12, 2017, 10:56:09 PM
    Author     : Mehmet
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.mehmet.database.Database"%>
<%@page contentType="text/html;charset=ISO-8859-9″" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
        <title>JSP Page</title>
    </head>
    <body>
        
    <center><h2>PERSON ADD</h2>
        <form method="post" action="ekleonay.jsp">
            <table>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="adi"   pattern="[À-ž]{15}"/></td>
                </tr>
                <tr>
                    <td>Surname:</td>
                    <td><input type="text" name="soyadi" pattern="[À-ž]{15}"/></td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td><input type="text" name="adres" /></td>
                </tr>
                <tr>
                    <td>Phone:</td>
                    <td><input type="number" name="phone" /></td>
                </tr>
                <tr>
                    <td>E-mail:</td>
                    <td><input type="text" name="email" /></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><input type="submit" name="Kaydet" /></td>
                </tr>
            </table>            
        </form>
        <br><a href="index.html">HOME PAGE</a><br>
    </center>
    </body>
     
</html>
