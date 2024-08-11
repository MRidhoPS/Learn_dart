class Hewan{
  String? name = "Nama hewan";
}

class Harimau extends Hewan{
  @override
  String? name = "harimau";
}

void main(){

  Harimau harimau = Harimau();
  print(harimau.name);

}


/**
 * sama seperti method overriding
 */