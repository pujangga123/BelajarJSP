<%@page import="crud.Mahasiswa"%>
<%
    Mahasiswa mahasiswa = new Mahasiswa();
    mahasiswa.nim = "984294";
    mahasiswa.nama = "Yuda";
    mahasiswa.nilai = 45;
    
    if(mahasiswa.tambah()) {
        request.setAttribute("hasil", "Data berhasil tersimpan");
    } else {
        request.setAttribute("hasil", "Data gagal disimpan");
    }
    
    RequestDispatcher dispacher = request.getRequestDispatcher("mahasiswa2.tambah.view.jsp");
    dispacher.forward(request, response);
    
%>