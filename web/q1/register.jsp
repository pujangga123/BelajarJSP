<%
    String nama = request.getParameter("nama");
    session.setAttribute("nama", nama);
    response.sendRedirect("form.jsp");
%>