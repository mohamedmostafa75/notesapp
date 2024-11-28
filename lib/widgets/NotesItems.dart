import 'package:flutter/material.dart';

class Notesitems extends StatelessWidget {
  const Notesitems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: Color(0xffFFCD7A),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              "Flutter tips",
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                "Make me know what are you want to acheive today",
                style:
                    TextStyle(color: Colors.black.withOpacity(0.4), fontSize: 20),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  size: 35,
                  Icons.delete,
                  color: Colors.black,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Text("Novmeber 28,2024 ",
                style: TextStyle(color: Colors.black.withOpacity(0.4))),
          )
        ],
      ),
    );
  }
}
