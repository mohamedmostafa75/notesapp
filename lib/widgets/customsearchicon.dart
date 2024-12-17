import 'package:flutter/material.dart';

class Customicon extends StatelessWidget {
  const Customicon({super.key, required this.iconn});
  final Icon iconn;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(16)),
      child: IconButton(onPressed: () {
        
      }, icon: iconn),
    );
  }
}
