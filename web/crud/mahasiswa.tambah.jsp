<%@page import="crud.Mahasiswa"%>
<%
    Mahasiswa mahasiswa = new Mahasiswa();
    mahasiswa.nim = "984294";
    mahasiswa.nama = "Yuda";
    mahasiswa.nilai = 45;
    
    if(mahasiswa.tambah()) {
        out.println("Data berhasil ditambahkan");
    } else {
        out.println("Data gagal disimpan");
    }
    
%>