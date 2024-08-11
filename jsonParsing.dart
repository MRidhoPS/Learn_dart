import 'dart:convert';

class Dummy {
  String jsonDummy = '''
  {
    "name": "John Doe",
    "age": 30,
    "isEmployed": true,
    "skills": ["Dart", "Flutter", "JavaScript"]
  }
  ''';
}

class ModelDummy {
  final String name;
  final int age;
  final bool isEmployed;
  List<String> skills;

  ModelDummy(
      {required this.name,
      required this.age,
      required this.isEmployed,
      required this.skills});

  factory ModelDummy.fromJson(Map<String, dynamic> json) {
    return ModelDummy(
        name: json['name'],
        age: json['age'],
        isEmployed: json['isEmployed'],
        skills: List<String>.from(json['skills']));
  }
}

void main() {
  Dummy dummy = Dummy();

  Map<String, dynamic> userJson = jsonDecode(dummy.jsonDummy);

  final user = ModelDummy.fromJson(userJson);

  print('Her name is : ${user.name}');
  print('Her age is : ${user.age}');
}
