mixin People {
  String? name = 'Badur';

  String tebakNama(String name) => 'nama kamu $name bukan ${this.name}';
}

class Murid with People {

  @override
  String tebakNama(String name) => 'nama kamu $name bukan ${super.name}';
}

void main() {
  Murid murid = Murid();
  print(murid.tebakNama("Yolanda"));
}

/**
 * mixin ini seperti reusable code, kita bisa menggunakan code dari kelas lain tanpa harus mewarisi class tersebut
 * sama seperti implements, mixin bisa lebih dari 1
 * harus menggunakan mixin unutk membuat class mixin
 * untuk mengakses class mixin harus menambahkan with dan nama mixinnya
 * kita bisa menambahkan kata kunci "on" agar mixin hanya bisa di gunakan oleh beberapa class turunan saja
 * contoh : mixin play on playable{}
 * jadi mixin hanya bisa di akses oleh class turunan yaitu class playable
 */