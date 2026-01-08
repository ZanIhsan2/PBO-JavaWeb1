<%-- 
    Document   : biodata_hasil
    Created on : 4 Dec 2025, 15.29.43
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String nama = request.getParameter("nama");
    String nim = request.getParameter("nim");
    String hobbi = request.getParameter("hobbi");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biodata</title>
    </head>
    <body>
        <h2>Hasil Input Biodata Mahasiswa</h2>
        
        Nama: <%= "nama" %><br>
        Nama: <%= "nim" %><br>
        Nama: <%= "hobbi" %><br><br>
        
        <a href="biodata.jsp">Kembali</a>
    </body>
</html>
