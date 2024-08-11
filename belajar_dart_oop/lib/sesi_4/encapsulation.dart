class Pet {
  String? _name = 'harimau';

  String? get getName => _name; // untuk mendapatkan field yang private

  set setName(String? value) =>
      _name = value; // untuk mengubah value field yang private
}

void main() {
  Pet pet = Pet();
  print(pet.getName);

  pet.setName = 'kucing';
  print(pet.getName);
}

/**
 * memastikan data sensitif tidak dapat diakses dari luar
 * cara mengubahnya kita harus menggunakan sebuah method
 * 
 * nama methodnya
 * - getter = untuk mengambil data pada field
 * - setter = untuk mengubah data pada field
 * 
 * caranya dengan cara menggunakan kata kunci "get" dan "set"
 */