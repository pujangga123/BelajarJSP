<%
    String nama = "";
    
    if(request.getParameter("nama")!=null) {
        session.setAttribute("nama", request.getParameter("nama"));
    }
    
    if(session.getAttribute("nama")!=null) {
        nama = session.getAttribute("nama").toString();
    } 
    
    if(nama.equals("")) {
        response.sendRedirect("home.jsp");
    }
    
    request.setAttribute("nama", nama);
    
    RequestDispatcher dispacher = request.getRequestDispatcher("form.view.jsp");
    dispacher.forward(request, response);
%>