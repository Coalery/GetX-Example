import 'dart:convert';

class Person {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age
  });

  factory Person.fromJsonString(String jsonString) {
    return Person.fromJson(jsonDecode(jsonString));
  }

  factory Person.fromJson(dynamic json) {
    final String name = json['name'];
    final int age = json['age'];
    
    return Person(
      name: name,
      age: age
    );
  }
}