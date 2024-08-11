class Manager {
  String? name;

  void sayHello(String name){
    print("say hellow to $name with my manager");
  }
}

class ViceManager extends Manager{
  @override
  void sayHello(String name){
    print("say hello to $name with our vice manager");
  }
}

void main(){
  ViceManager viceManager = ViceManager();

  viceManager.sayHello("Arthur");
}

/**
 * kemampuan deklarasi ulang sebuah method dari parent class
 * ketika sudah di overriding maka method pada parent class tidak bisa diakses lagi ketika dibuatkan sebuah object
 * pastikan bahwa method dari parent class harus sama dengan class child
 */