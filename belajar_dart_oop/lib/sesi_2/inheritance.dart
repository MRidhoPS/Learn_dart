import 'package:belajar_dart_oop/sesi_1/class_object.dart';

class Rio extends Person{

  String sayGood(){
    var resul = Person().sayhellow("a");
    return resul;
  }

}

void main(){
  Rio rio = Rio();
  print(rio.sayGood());
}

/**
 * kemampuan untuk menurunkan sebuah class ke class lain
 * class child hanya bisa punya satu parent class
 * parent class bisa punya banyak class child
 * saat class diturunkan ke class child, maka semua isi dari parent child otomatis dimiliki oleh class child
 * tambah kata extends setelah nama class
 */