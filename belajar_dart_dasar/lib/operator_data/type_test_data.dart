// ignore_for_file: unnecessary_type_check

void main(){
  dynamic angka = 100;
  var intAngka = angka as int;
  print(intAngka);

  print(angka is! int);
  print(angka is int);
}

/**
 * as untuk konversi tipe data secara paksa
 * is akan menhasilkan true jika object sesuai dengan tipe data
 * is! akan menghasilkan true jika object tidak sesuai dengan tipe data
 */