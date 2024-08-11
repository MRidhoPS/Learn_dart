interface class People {
  String? kerjaan = 'programmer';

  String tebakKerjaan(String job) => 'Kerjaan lu adalah $job';
}

class Guru implements People {
  @override
  String? kerjaan = 'Pedagang';

  @override
  String tebakKerjaan(String job) =>
      'kerjaan lu bukan $kerjaan tetapi $job';
}

void main(){
  Guru guru = Guru();

  print(guru.tebakKerjaan("Guru"));
}

/**
 * sama seperti abstract class, yang membedakan adalah interface ini semua field atau method yang ada di dalam class interface lgsg otomatis bersifat abstract atau wajib di wariskan kepada class childnya
 * untuk membuat interface class cukup menambahkan "interface"
 * untuk mewarisi class interface bukan menggunakan "extends" tetap menggunakan "implements"
 * interface sedikit berbeda dengan abstract class, ab class masih bisa memanggil field atau method yang sudah di override dengan keyword super sedangkan di interface tidak bisa menggunakan keyword super
 * class child dari parent class yang menggunakan interface, bisa menggunakan implements dari 1 class. jadi class child bisa mengimplement dari banyak class interface
 * interface bukan berarti mewarisi, tetapi justru men deklarasi ulang semua field dan method dari class interface 
 */