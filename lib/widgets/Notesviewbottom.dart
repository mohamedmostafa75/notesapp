import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custombutton.dart';
import 'package:notes_app/widgets/customtextfield.dart';

class Notesviewbottom extends StatelessWidget {
  const Notesviewbottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
              children: [
         const Customtextfield(hinttext: "title"),
          const SizedBox(
            height: 10,
          ),
        const  Customtextfield(hinttext: "content",maxline: 5,),
         Spacer(flex: 1,),
          Custombutton(
              ontap: () {
                print("hello");
              },
              name: "Add")
        ],
      ),
    );
  }
}
