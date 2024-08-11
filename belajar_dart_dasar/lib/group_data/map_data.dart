void main(){
  Map<String, dynamic> nama = {
    'nama':'ridho',
    'umur':10,
    'kelas':'5 Sd'
  };

  //bisa juga begini
  // 1.
  // var nama = Map<String, dynamic>();
  // 2.
  // var nama = <String, dynamic>{};

  print(nama);
  print(nama['nama']);
  
}


/**
 * memiliki key dan value
 * key bisa disebut indexnya dan values bisa disebut sebagai data dari index
 * tipe datanya bisa apapun dan harus tentukan secara manual
 * jika key ditambahkan dengan key yang sudah ada, maka key yg lama akan diganti dengan key yang baru
 */