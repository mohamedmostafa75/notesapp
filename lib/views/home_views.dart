import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Notesviewbottom.dart';
import 'package:notes_app/widgets/notesviewbody.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
              context: context,
              builder: (context) {
                return const Notesviewbottom();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const Notesviewbody(),
    );
  }
}
