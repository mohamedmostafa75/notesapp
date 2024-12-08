import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/views/home_views.dart';
import 'package:notes_app/widgets/primarykey.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(kBoxname);
  

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
