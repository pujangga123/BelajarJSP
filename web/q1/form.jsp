<%
    String nama="";
    if(session.getAttribute("nama")!=null) {
        nama = session.getAttribute("nama").toString();
        
    } else {
        response.sendRedirect("home.jsp");
    }
    
    request.setAttribute("nama", nama);
    
    RequestDispatcher dispacher = request.getRequestDispatcher("form.view.jsp");
    dispacher.forward(request, response);
%>