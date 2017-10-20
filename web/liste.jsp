<%@page import="com.mehmet.database.Common"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mehmet.database.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center><h2>PERSON INFORMATION</h2>
            
    <table cellpadding="4">
        <tr bgcolor="#bbbbb">
            <td width = "60"><b>ID</b></td>
            <td width = "100"><b>NAME</b></td>
            <td width = "100"><b>SURNAME</b></td>
            <td width = "150"><b>ADRESS</b></td>
            <td width = "100"><b>PHONE</b></td>
            <td width = "100"><b>EMAIL</b></td>            
            <td width = "100"><b>UPDATE</b></td>                      
            <td width = "100"><b>DELETE</b></td>
        </tr>
        
        <%
            
            String sorgu = "SELECT * FROM person";
            Common.DatabaseOlustur();
            ResultSet res = Common.database.tümKayitlar(sorgu);
            String font_renk;
            int renk_degisken = 1;
             while(res.next()){
                if(renk_degisken==1){
                    font_renk = "yellow";
                    renk_degisken = 0;
                }else{
                    font_renk = "green";
                    renk_degisken = 1;
                }
                
                %>
               <tr bgcolor="<%= font_renk %>">
                    <td><%= res.getString("personId") %></td>
                    <td><%= res.getString("name") %></td>
                    <td><%= res.getString("surname") %></td>
                    <td><%= res.getString("address") %></td>
                    <td><%= res.getString("phone") %></td>
                    <td><%= res.getString("email") %></td>                    
                    <td><a href="guncelle.jsp?id=<%= res.getString("personId")%>">UPDATE</a></td>
                    <td><a href="silme.jsp?id=<%= res.getString("personId")%>">DELETE</a></td>
                </tr>
              <%  }
        %>
    </table>
    <br> 
    <a href="index.html">HOME PAGE</a><br>
    </center>
    </body>
</html>
