import 'package:first_app/my_cinema.dart';
import 'package:first_app/my_class_room.dart';
import 'package:first_app/my_form.dart';
import 'package:first_app/my_math.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "ATEODINANG",
      home: MyCinema(),
      debugShowCheckedModeBanner: false,
    );
  }
}
