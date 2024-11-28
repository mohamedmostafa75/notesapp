import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customppbar.dart';

class Notesviewbody extends StatelessWidget {
  const Notesviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Customappbar()
      ],
    );
  }
}
