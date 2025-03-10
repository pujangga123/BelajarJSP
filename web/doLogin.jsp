<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    if(username.equals("budi") && password.equals("123")) {
        session.setAttribute("namauser", username);
        response.sendRedirect("home.jsp");
    } else {
        response.sendRedirect("error.jsp");
    }
%>