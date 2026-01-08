<%-- 
    Document   : ganjil_genap
    Created on : 4 Dec 2025, 15.39.14
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cek Ganjil Genap</title>
    </head>
    <body>
        <h2>Cek bilangan ganjil atau genap</h2>
        
        <form method="post">
            Masukan Angka:
            <input type="number" name="angka" required>
            <button type="submit">Cek</button>
        </form>
        <br><hr>
        <%
            String inputAngka = request.getParameter("angka");
            
            if (inputAngka != null ) {
                int angka = Integer.parseInt(inputAngka);
                String  hasil = (angka % 2 == 0) ? "Genap" : "Ganjil";
            %>
            
            <h3>Hasil:</h3>
            <p>Bilangan <b> <%= angka %> </b> adalah <b> <%= hasil %> </b></p>
            
            <%
            }
        %>
    </body>
</html>
