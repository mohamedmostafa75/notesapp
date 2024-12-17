import 'package:flutter/material.dart';
import 'package:notes_app/widgets/editviewbody.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            Editviewbody(),
          ],
        ),
      ),
    );
  }
}
