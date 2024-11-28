import 'package:flutter/material.dart';
import 'package:notes_app/widgets/NotesItems.dart';
import 'package:notes_app/widgets/customppbar.dart';

class Notesviewbody extends StatelessWidget {
  const Notesviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Customappbar(),
          Notesitems(),
        ],
      ),
    );
  }
}

