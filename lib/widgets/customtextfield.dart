import 'package:flutter/material.dart';
import 'package:notes_app/widgets/primarykey.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield({super.key, required this.hinttext,  this.maxline = 1,});
  final String hinttext;
  final int maxline ;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxline,
      cursorColor: Kprimarycolor,
      decoration: InputDecoration(
        
        hintText: hinttext,
        hintStyle: const TextStyle(color: Kprimarycolor),
        border: buildbordar(),
        enabledBorder: buildbordar(),
        focusedBorder: buildbordar(Kprimarycolor))
      
    );
  }
}
 
 OutlineInputBorder buildbordar([Color]){
  return OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Color ?? Colors.white ));
 }