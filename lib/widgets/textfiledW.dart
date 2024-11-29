import 'package:flutter/material.dart';
import 'package:notes_app/widgets/primarykey.dart';

class textfiledW extends StatelessWidget {
  textfiledW(
      {this.onchanged,
      super.key,
      this.namefield,
      this.Obsecure = false,
      this.maxline});
  final String? namefield;
  final bool? Obsecure;
  final int? maxline;

  Function(String)? onchanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormField(
        maxLines: maxline,
        obscureText: Obsecure!,
        validator: (data) {
          if (data!.isEmpty) {
            return 'please fill the feild';
          }
          return null;
        },
        onChanged: onchanged,
        decoration: InputDecoration(
          hintText: namefield,
          hintStyle: const TextStyle(color: Kprimarycolor),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Kprimarycolor),
          ),
        ),
      ),
    );
  }
}
