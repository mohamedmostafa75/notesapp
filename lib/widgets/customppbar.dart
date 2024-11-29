import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customsearchicon.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Notes",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        Spacer(
          flex: 1,
        ),
        Customsearchicon(),
      ],
    );
  }
}
