import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customppbar.dart';
import 'package:notes_app/widgets/customtextfield.dart';

class Editviewbody extends StatelessWidget {
  const Editviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height:50 ,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Customappbar(titlename: "Edit Notes", icon: Icon(Icons.done)),
        ),
        SizedBox(
          height:50 ,
        ),
         const Customtextfield(hinttext: "title"),
          const SizedBox(
            height: 15,
          ),
        const  Customtextfield(hinttext: "content",maxline: 5,),
      ],
    );
  }
}