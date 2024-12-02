import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customsearchicon.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key, required this.titlename, required this.icon});
  final String titlename;

final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          titlename,
          style: const TextStyle(color: Colors.white, fontSize: 30),
        ),
        const Spacer(
          flex: 1,
        ),
         Customicon(iconn: icon,),
      ],
    );
  }
}
