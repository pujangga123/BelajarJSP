package belajarjsp;

public class User {
    public String namaDepan;
    public String namaBelakang;
    public String jenisKelamin;
    public Integer gaji;

    public String getNamaDepan() {
        return namaDepan;
    }

    public Integer getGaji() {
        return gaji;
    }

    public String getNamaBelakang() {
        return namaBelakang;
    }

    public String getJenisKelamin() {
        return jenisKelamin;
    }
    
    public User(String namaDepan, String namaBelakang, String jenisKelamin, Integer gaji) {
        this.namaDepan = namaDepan;
        this.namaBelakang = namaBelakang;
        this.jenisKelamin = jenisKelamin;
        this.gaji = gaji;
    }
    
    public String namaLengkap() {
        return this.namaDepan+" "+this.namaBelakang;
    }
    
}
