void main() {
  fullName(firstName: 'Ridho');
}

void fullName({required String firstName, String? lastName = 'John'}) {
  print('$firstName $lastName');
}

/**
 * secara default parameter wajib dikirimkan atau wajib diinput
 * kita bisa membuat parameter yang tidak wajib dikurung
 * kita wrap dengan []
 * dan parameter optional harus nullable
 * kita bisa menggunakan parameternya ketika memanggil function sehingga susunan parameter tidak harus teratur
 * kata kunci require bisa kita gunakan ketika kita ingin memaksa sebuah parameter menjadi sebuah mandatory ketika function dipanggil
 * jadi ketika function dipanggil maka required parameter lgsg muncul seperti contoh diatas
 */