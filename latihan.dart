class Produk {
  String namaProduk;
  double harga;
  int jumlah;
  double diskon;

  Produk(this.namaProduk, this.harga, this.jumlah, this.diskon);

  void hitungTotalHargaTanpaDiskon() {
    double nPrice = harga * jumlah;
    print("Total Harga Tanpa Diskon\t: $nPrice");
  }

  void hitungTotalHargaSetelahDiskon() {
    double dPrice = harga * jumlah * (100-diskon) * 0.01;
    print("Total Harga Setelah Diskon\t: $dPrice");
  }

  void tampilkanInformasiProduk() {
    double nPrice = harga * jumlah;
    double dPrice = nPrice * (100-diskon) * 0.01;
    print("== Info Produk == ");
    print("Nama Produk\t: $namaProduk");
    print("Harga Satuan\t: $harga");
    print("Jumlah\t\t: $jumlah");
    print("Diskon\t\t: $diskon%");
    print("");
    print("Total Harga Tanpa Diskon\t: $nPrice");
    print("Total Harga Setelah Diskon\t: $dPrice");
  }
}

void main() {
  Produk kamera = Produk("Kamera", 1500000, 2, 10);
  kamera.hitungTotalHargaTanpaDiskon();
  kamera.hitungTotalHargaSetelahDiskon();
  kamera.tampilkanInformasiProduk();
}