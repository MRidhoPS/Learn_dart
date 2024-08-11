void main(){
  var total = sum([1,2,3]);
  print(total);
}

int sum(List<int> nilai){
  var angka = 0;

  for (var i in nilai){
    angka += i;
  }

  return angka;
}

/**
 * function yang akan me return sebuah tipe data
 * disini kita mengganti kata void menjadi int agar dapat mereturn sebuah data yang bertipe int, selain int tidak bisa
 * sebagai contoh juga kita menggunakan sebuah parameter yang harus bertipe list dan value bertipe int juga
 */