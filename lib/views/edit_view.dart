import 'package:flutter/material.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [Text("Edit Note"),
          Spacer(flex: 1,),
           Icon(Icons.done)],
        ),
      ),
      body: Column(),
    );
  }
}
