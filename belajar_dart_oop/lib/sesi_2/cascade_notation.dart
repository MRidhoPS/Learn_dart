class User{
  String? name;
  int? umur;
}

void main(){
  User user = User()
  ..name = 'ridho' // ini merupakan penggunaan cascade notation dengan ..
  ..umur = 22;

  print(user.name);
  print(user.umur);
}

/**
 * untuk memberikan beberapa operasi pada object yang sama
 * .. dan ?
 * .. untuk object yang tidak nullable
 * ? untuk object yang nullable
 */