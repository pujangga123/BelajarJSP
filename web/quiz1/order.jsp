<%
    String item = request.getParameter("item").toString();
    Integer qty = Integer.parseInt(request.getParameter("qty"));
    
    request.setAttribute("item", item);
    request.setAttribute("qty", qty);
    
    RequestDispatcher dispacher = request.getRequestDispatcher("order.view.jsp");
    dispacher.forward(request, response);
%>