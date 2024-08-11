class Person {
  String name = 'arthur';
  int? umur;
  final String counter = 'indonesia'; // final wajib dimasukan valuenya

  String sayhellow(String grade) {
    String result = "Say hellow to $name with grade $grade";
    return result;
  }
}

void main() {
  var person = Person();

  print(person.umur = 20);
  print(person.name);
  print(person.counter);

  print(person.sayhellow('A'));
}

/**
 * class akan berisi properties, field dan function
 * 
 * object digunakan untuk memanggil field, method atau apapun isi dari sebuah class
 * 
 * field---
 * field adalah data yang bisa kita sisipkan kedalam object sebuah class
 * membuat field sama seperti membuat variable bedanya hanya berada di dalam blok code class
 * field wajib dimasukan nilainya, kecuali nullable
 * cara pemanggilan field biasanya seperti ini "object.field" / "person.name", person object dari class Person() dan name merupakan field dari class Person()
 * manipulasi field sama seperti manipulasi variabel
 * 
 * method---
 * method adalah sebuah function yg berada didalam sebuah class
 * di deklarasikan di dalam sebuah class
 * bisa menambah return value pada method
 * untuk mengakses method sama seperti mengakses sebuah field pd object class
 * method juga bisa mengakses sebuah field yg berada di dalam class yang sama
 * 
 * method expression body---
 * method yang hanya satu baris saja
 * mirip seperti membuat anonymous function
 * contoh : void wakeUp() => print('i wake up')
 */