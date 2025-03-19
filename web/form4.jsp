<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="request4.jsp" method="post" >
            Nama <input name="nama" type="text"><br>
            Umur <input name="umur" type="number"><br>
            Hobi<br>
            <select name="hobi" size="4">
                <option value="membaca">Membaca</option>
                <option value="olahrage">Olah-raga</option>
                <option value="memasak">Memasak</option>
                <option value="berkebun">Berkebun</option>
            </select><br>
            <input type="checkbox" value="menikah" name="status"> Menikah<br><br>
            <button>Kirim</button>
        </form>
    </body>
</html>
