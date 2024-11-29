import 'package:flutter/material.dart';
import 'package:notes_app/views/home_views.dart';
import 'package:notes_app/widgets/custombutton.dart';
import 'package:notes_app/widgets/textfiledW.dart';

class Notesviewbottom extends StatelessWidget {
  const Notesviewbottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          
          children: [
            textfiledW(
              namefield: 'title',
            ),
            const SizedBox(
              height: 10,
            ),
            textfiledW(
              maxline: 4,
              namefield: 'content',
            ),
            const SizedBox(
              height: 30,
            ),
            Custombutton(ontap: (){
            print("hello");
            },name: "Add")
          ],
        ),
      ),
    );
  }
}
