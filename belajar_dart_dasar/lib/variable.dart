void main() {

  //1
  String ubahVariabel = 'ridho';
  ubahVariabel = 'yoru'; // kita ubah menjadi yoru

  print(ubahVariabel);

  //2
  final String namaBarang = 'motorcycle';
  print(namaBarang);

  /**
   * (3) alurnya akan seperti ini baris 18 baru baris 17
   * yang harusnya jika tidak pakai late itu akan meng eksekusi baris 17 baru 18 dan 19
   */
  late var panggilFungsi = getValue();
  print("Panggil getValue");
  print(panggilFungsi);

}


String getValue(){
  print("get value dipanggil");
  return 'ridho phs';
}

/**
 * variable merupakan tempat untuk menyimpan data 
 * bagus ketika kita ingin menggunakan data yang sama berulang kali
 * wajib memiliki tipe data dan nama, ketika kita ingin menggunakan variable tersebut kita hanya perlu memanggil nama variable tersebut
 * format penulisan biasanya camelCase
 * isi dari variable bisa diubah (1)
 * untuk variabel yang tidak ingin dirubah maka mengguanakan final seperti pada nomer (2), untuk final tidak bisa di deklarasikan ulang tetapi isinya masih bisa berubah
 * untuk penggunaan variabel yg tidak ingin diubah sama sekali, maka tambahkan const, untuk const isinya tidak bisa dirubah dan variabelnya tidak bisa di deklare ulang juga
 * untuk kata kunci late, digunakan ketika variabel akan di deklarasikan nanti saja ketika variable tersebut akan diakses jika tidak maka variabel tidak akan di deklare (3)
 */