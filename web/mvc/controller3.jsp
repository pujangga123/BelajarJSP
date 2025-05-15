<%
    Integer panjang = 10;
    Integer lebar = 20;
    Integer luas = panjang * lebar;
    
    request.setAttribute("panjang", panjang);
    request.setAttribute("lebar", lebar);
    request.setAttribute("luas", luas);
    
    RequestDispatcher dispacher = request.getRequestDispatcher("____(a)____");
    dispacher.forward(request, response);
%>