import 'package:flutter/material.dart';
import 'package:notes_app/widgets/primarykey.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield(
      {super.key, required this.hinttext, this.maxline = 1, this.onSaved});
  final String hinttext;
  final int maxline;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field is Required';
          } else {
            return null;
          }
        },
        onSaved: onSaved,
        maxLines: maxline,
        cursorColor: kPrimarycolor,
        decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: const TextStyle(color: kPrimarycolor),
            border: buildbordar(),
            enabledBorder: buildbordar(),
            focusedBorder: buildbordar(kPrimarycolor)));
  }
}

OutlineInputBorder buildbordar([Color]) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: Color ?? Colors.white));
}
