import 'package:flutter/material.dart';
import 'package:practice_application/homescreen.dart';
import 'package:practice_application/screens/movies.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "buttons",
      routes: {
        '/': (context) => const HomeScreen(),
        '/screens': (context) => const MyMovies()
      },
      initialRoute: '/',
    );
  }
}
