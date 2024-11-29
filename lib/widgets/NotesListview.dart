import 'package:flutter/material.dart';
import 'package:notes_app/widgets/NotesItems.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all( 8),
      child: ListView.builder(
        padding: EdgeInsets.only(top: 8),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Notesitems(),
          );
        },
      ),
    );
  }
}
