import 'package:belajar_dart_testing/calculator_test/main_calcu.dart';
import 'package:test/test.dart';

void main() {
  Calcu calcu = Calcu(2, 3);

  setUp(() => print("Start Testing...."));

  tearDown(() => print("Test finish"));

  group(
      'Check tipe data',
      () => {
            test(
                "Angka input harus bertipe int",
                () =>
                    {expect(calcu.a, isA<int>()), expect(calcu.b, isA<int>())})
          });

  group(
      'add',
      () => {
            test('menambahkan dua angka positif',
                () => expect(calcu.add(2, 3), 5))
          });
}
