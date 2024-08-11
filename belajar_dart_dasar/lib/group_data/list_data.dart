void main(){
  var umur = [1,2,3,4];
  print(umur);

  List<int> berat = [10,20,30,40];
  print(berat);

  umur.add(10);
  print('$umur and ${umur.length}');

  umur[0] = 100;
  print(umur);
}

/**
 * list kumpulan data
 * bahasa lain sebutnya array
 * perlu menentukan isi tipe data dari list
 * menggunakan []
 * menambahkan data bisa menggunakan kata .add()
 * data list bisa kita ubah menggunakan data index, umur[0]=10
 */