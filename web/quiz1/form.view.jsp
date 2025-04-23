<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello ${nama}</h1>
        <form action="order.jsp" method="post">
            <select name="item">
                <option value="topi">Topi</option>
                <option value="topi">Rompi</option>
            </select>
            <input name="qty">
            <button type="submit">Pesan</button>
        </form>
    </body>
</html>
