import 'package:bloc/bloc.dart';


class CounterCubit extends Cubit<int> {
  CounterCubit(this.nilaiAwal) : super(nilaiAwal);

  int nilaiAwal = 0;

  void increment() => emit(state + 1);
  // disini statenya bernilai 0, kenapa? karena state ini sudah diatur, dimana? pada construktor super() diatas
  // kita menggunakan value 0 pada super() yang mana ketika value dari super itu ditambah 1 maka akan bernikai 1
  // lain hal jika value super diganti menjadi 5 maka hasilnya jika ditambahkan akan me return "6"

  @override
  void onChange(Change<int> change){
    super.onChange(change);
    print(change);
  }
}

void main(){
  CounterCubit(10)
  ..increment()
  ..close();
}

/**
 * cubit merupakan bagian dari bloc package yang digunakan untuk mengatur state
 * cubit merupakan solusi untuk yang lebih sederhana karena tidak memerlukan sebuah event dan hanya berfokus pada state
 * emit merupakan function untuk mengirim state baru
 * state adalah nilai saat ini
 * ktia bisa memantau perubahan state pada cubit, dengan cara menggunakan function onChanged dari cubit itu sendiri
 */