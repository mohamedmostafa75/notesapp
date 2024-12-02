import 'package:flutter/material.dart';

import 'package:notes_app/widgets/NotesListview.dart';
import 'package:notes_app/widgets/customppbar.dart';

class Notesviewbody extends StatelessWidget {
  const Notesviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Customappbar(titlename:"Notes",icon: Icon(Icons.search),),
          Expanded(child: NotesListview())
        ],
      ),
    );
  }
}
