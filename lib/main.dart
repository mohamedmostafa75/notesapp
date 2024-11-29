import 'package:flutter/material.dart';
import 'package:notes_app/views/home_views.dart';

void main() {
  runApp(const notesapp());
}

class notesapp extends StatelessWidget {
  const notesapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
      home: const HomeView(),
    );
  }
}
