import 'package:belajar_dart_oop/sesi_1/class_object.dart';

extension Rio on Person{

  void sayhellowTo(String to){
    print("Hai my name is $name, how are you $to");
  }

}

void main(){
  Person person = Person();
  person.sayhellowTo('jani');
}

/** 
 * ini biasanya digunakan ketika kita ingin menambahkan sebuah method disebuah class yang mana class tersebut tanpa kita ubah, karena class tersebut bukan class buatan kita atau dari library
 * cara menggunakannya adalah menambahkan kata kunci extension
 * field name kita dapatkan dari class person karena kita menggunakan extension
 * extension ini artinya kita bisa menggunakan field dari class person
 */