import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custombutton.dart';
import 'package:notes_app/widgets/customtextfield.dart';

class Notesviewbottom extends StatelessWidget {
  const Notesviewbottom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: addnotesform(),
    );
  }
}

class addnotesform extends StatefulWidget {
  const addnotesform({
    super.key,
  });

  @override
  State<addnotesform> createState() => _addnotesformState();
}

class _addnotesformState extends State<addnotesform> {
  final GlobalKey<FormState> Formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: Formkey,
      child: Column(
        children: [
          Customtextfield(
            hinttext: "title",
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Customtextfield(
            hinttext: "content",
            maxline: 5,
            onSaved: (value) {
              subtitle = value;
            },
          ),
          const Spacer(
            flex: 1,
          ),
          Custombutton(
              ontap: () {
                if (Formkey.currentState!.validate()) {
                  Formkey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
              name: "Add")
        ],
      ),
    );
  }
}
