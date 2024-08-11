class Superhero{
  String? _name ='Batman';

  void _tebakHero(String _name){
    print("Nama superhero $_name");
    print("Name superhero dari field class ${this._name}");
  }
}

void main(){

  Superhero superhero = Superhero();
  superhero._tebakHero("Superman");


}

/**
 * secara default field dan method pada sebuah class itu dapat di akses dari luar file maupun di dalam file
 * akan tetapi akan ada kasus dimana field dan method tersebut tidak ingin diakses dari luar file
 * caranya adalah dengan menambahkan sebuah _(underscore) pada nama field atau method maka kedua aspek tersebut tidak bisa diakses di luar file
 */