<%-- 
    Document   : biodata
    Created on : 4 Dec 2025, 15.19.27
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biodata</title>
    </head>
    <body>
        <h2>Biodata Mahasiswa</h2>
        <form action="biodata_hasil.jsp" method="post">
            Nama: <input type="text" name="nama"><br><br>
            Nim: <input type="text" name="nim"><br><br>
            Hobbi:
            <select name="hobbi">
                <option> Bermain Game</option>
                <option> Olahraga</option>
                <option> Membaca</option>
                <option> Ngoding</option>
            </select>
            <br><br>
            <button type="submit">Kirim</button>
            <button type="reset">Batal</button>
        </form>
    </body>
</html>
