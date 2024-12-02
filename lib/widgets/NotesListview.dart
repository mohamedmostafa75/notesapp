import 'package:flutter/material.dart';
import 'package:notes_app/widgets/NotesItems.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 8),
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0),
            child: Notesitems(),
          );
        },
      ),
    );
  }
}
