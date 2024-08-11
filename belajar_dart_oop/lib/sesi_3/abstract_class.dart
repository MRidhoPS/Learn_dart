abstract class Manager{
  String? name = 'Biru';
  Manager(this.name);
}

class Employe extends Manager{
  Employe(name) : super(name);
}

void main(){
  Employe employe = Employe("Brody");
  print(employe.name);
}

/**
 * kita bisa memubat class menjadi abstract
 * abstract artinya, class tersebut tidak bisa dibuat sebagai object secara langsung, hanya bisa diturunkan
 * untuk membuat class menjadi abstract kita bisa menambahkan abstract
 * untuk abstract method
 * untuk method yang ada di dalam class abstract, maka akan memaksa si class childnya meng override si method dari parent class nya. hukumnya wajib di override agar tidak error, pemanggilannya sama seperti memanggil method pada umumnya
 */