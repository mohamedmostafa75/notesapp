import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key, this.ontap,required this.name});
  final VoidCallback? ontap;
final String name;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap ,
      child: Container(
                decoration: BoxDecoration(  color: const Color.fromARGB(255, 8, 221, 199),
                  borderRadius: BorderRadius.circular(8)
                ),
              
                height: 40,
                width: double.infinity,
                child: Center(child: Text(name,style: TextStyle(color: Colors.black),)),
              ),
    );
  }
}