class Person {
  String name = 'gust';
  String umur = '11';

  Person(String name, String umur) {
    // this.name(akses name dari field class) lalu = name(dari parameter constructor)
    this.name = name;
    this.umur = umur;
  }

  // bisa juga seperti ini
  // Person(this.name, this.umur);

  Person.perons2(String name, String umur) {
    this.name = name;
    this.umur = umur;
  }
}

void main() {
  Person person = Person("Ridho", "10");

  print(person.name);
  print(person.umur);

  var result = Person.perons2("Yesa", "1033");
  print(result.name);
}

/**
 * di dalam class kita bisa membuat sebuah constructor
 * kita juga bisa memberi parameter pada constructor
 * nama constructor harus sama seperti nama class, tanpa void
 * saat membuat constructor, maka saat membuat object baru kita wajib mengikuti parameter yang ada di contructor
 * tidak bisa membuat constraktor lebih dari satu
 */