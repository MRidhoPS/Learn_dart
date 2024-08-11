import 'package:belajar_dart_testing/contains_test/list_of_data.dart';
import 'package:belajar_dart_testing/contains_test/map_of_data.dart';
import 'package:test/test.dart';

void main(){

  setUpAll(() => print("Mulai test class Hobi"));

  // class Hobi
  Hobi hobi = Hobi();

  group('Checking pada class Hobi', () => {
    test('apakah variable hari bertipe list?', () => {
      expect(hobi.hari, isA<List>())
    }),

    test('Harus ada data "main game" di dalam list hari', () => {
      expect(hobi.hobiku(), contains('Main Game'))
    })
  });


  // class Person
  Person person = Person();

  group('Checking pada class Person', () => {
    test('Variabel guru harus bertipe map', () => {
      expect(person.guru, isA<Map<String, dynamic>>())
    }),

    test('Variabel guru harus memiliki user_id key', () => {
      expect(person.guru.keys, contains('user_id'))
    }),

    test('Value dari user_id harus int', () => {
      expect(person.guru['user_id'], isA<int>())
    })
  });

  tearDownAll(() => print('Test class Person selesai'));

}