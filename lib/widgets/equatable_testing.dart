import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class EquatableTesting extends StatefulWidget {
  const EquatableTesting({super.key});

  @override
  State<EquatableTesting> createState() => _EquatableTestingState();
}

class _EquatableTestingState extends State<EquatableTesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {

          Person person1 = Person(name: "samrat", age: 30);
          Person person2 = Person(name: "samrat", age: 30);

          print(person1 == person2);
          print(person1 == person1);
          print(person2 == person2);

      }),
    );
  }
}

class Person {
  final String name;
  final int age;

  const Person({required this.name, required this.age});
}
