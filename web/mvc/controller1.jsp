<%@page import="belajarjsp.Siswa"%>
<%@page import="belajarjsp.Daftar"%>
<%
    Daftar daftar = new Daftar();
    Siswa siswa = new Siswa("555", "Rudi");
    Integer nilai = 70;
    
    // set attribut
    request.setAttribute("siswa", siswa);
    request.setAttribute("nilai", nilai);
    request.setAttribute("daftarsiswa", daftar.getList());
%>