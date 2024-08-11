class Barang{
  String? warna = 'biru';
}

class Toples extends Barang{
  @override
  String? warna = 'merah';

  void tebakWarna(){
    print("ini warna parent class : ${super.warna}");
    print("ini warna child class : $warna");
  }
}

void main(){
  Toples toples = Toples();
  toples.tebakWarna();
}

/**
 * untuk menggunakan sebuah field atau method dari parent class yang sudah terlanjur di overriding
 * gunakan kata kunci super
 * super untuk mengakses class parent
 */