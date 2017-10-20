<%-- 
    Document   : arama
    Created on : Oct 13, 2017, 10:42:07 PM
    Author     : Mehmet
--%>

<%@page import="com.mehmet.database.Common"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
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
         <%! 
           String sql_sorgu;
        %>
        <center><h2>Kişi Bilgileri</h2>
            
            <form method="post" action="arama.jsp">
                Arama Yapılacak Anahtar: <br>
                <input type="text" name="arama"/><br>
                <input type="submit"/><br>
                <input type="checkbox" name="adi" value="adi" /><br>Adı<br>
                <input type="checkbox" name="adi" value="soyadi" /><br>Soyadı<br>
            </form>
            
        <%
            Common.DatabaseOlustur();
            try{
                String aranan_veri = request.getParameter("arama");
                String deger_adi = request.getParameter("adi");
                if(aranan_veri != null && aranan_veri != ""){
                     if(!deger_adi.equals("null") && deger_adi.equals("adi")){
                         sql_sorgu = "SELECT * FROM person Where name LIKE'"+aranan_veri+"%'";
                     }else if(!deger_adi.equals("null")&& deger_adi.equals("soyadi")){
                         sql_sorgu = "SELECT * FROM person Where surname LIKE'"+aranan_veri+"%'";
                     }else if(deger_adi.equals("null")&& !deger_adi.equals("adi") && !deger_adi.equals("soyadi")) {
                         sql_sorgu = "SELECT * FROM person";
                     }  
               
                ResultSet veriler = Common.database.kayitGetir(sql_sorgu);
        %>
    
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
            String font_renk;
            int renk_degisken = 1;
            while(veriler.next()){
                if(renk_degisken==1){
                    font_renk = "yellow";
                    renk_degisken = 0;
                }else{
                    font_renk = "green";
                    renk_degisken = 1;
                }
                %>
                <tr bgcolor="<%= font_renk %>">
                    <td><%= veriler.getString("personId") %></td>
                    <td><%= veriler.getString("name") %></td>
                    <td><%= veriler.getString("surname") %></td>
                    <td><%= veriler.getString("address") %></td>
                    <td><%= veriler.getString("phone") %></td>
                    <td><%= veriler.getString("email") %></td>
                    <td><a href="guncelle.jsp?id=<%= veriler.getString("personId")%>">UPDATE</a></td>
                    <td><a href="silme.jsp?id=<%= veriler.getString("personId")%>">DELETE</a></td>
                </tr>
                <%
            }
            veriler.close(); 
            out.println("Veritabanına bağlanıldı...<br>");
            }
            } catch(SQLException ex){
                out.println("Bağlanti kurulamadı...<br>");
            }finally {}
        %>
        <a href="index.html">HOME PAGE</a>
        </center>
    </table>
    </body>
</html>
