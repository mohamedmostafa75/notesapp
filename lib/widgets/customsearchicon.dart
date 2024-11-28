import 'package:flutter/material.dart';

class Customsearchicon extends StatelessWidget {
  const Customsearchicon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
    width: 45,
    decoration: BoxDecoration(color: Colors.white.withOpacity(0.05),borderRadius: BorderRadius.circular(16)),
    child: IconButton(onPressed: (){}, icon: Icon(Icons.search)),

    );
  }
}