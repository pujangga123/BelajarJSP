package belajarjsp;

public class User {
    public String namaDepan;
    public String namaBelakang;

    public String getNamaDepan() {
        return namaDepan;
    }

    public String getNamaBelakang() {
        return namaBelakang;
    }

    public String getJenisKelamin() {
        return jenisKelamin;
    }
    public String jenisKelamin;
    
    public User(String namaDepan, String namaBelakang, String jenisKelamin) {
        this.namaDepan = namaDepan;
        this.namaBelakang = namaBelakang;
        this.jenisKelamin = jenisKelamin;
    }
    
    public String namaLengkap() {
        return this.namaDepan+" "+this.namaBelakang;
    }
    
}
