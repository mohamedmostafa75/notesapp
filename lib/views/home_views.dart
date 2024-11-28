import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notesviewbody.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Notesviewbody(),
    );
  }
}
