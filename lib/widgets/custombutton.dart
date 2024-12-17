import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key, this.ontap, this.isloading = false});
  final VoidCallback? ontap;
  final bool isloading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 8, 221, 199),
            borderRadius: BorderRadius.circular(8)),
        height: 40,
        width: double.infinity,
        child: Center(
            child: isloading
                ? const SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator(
                      color: Colors.black,
                    ))
                : const Text(
                    "ADD",
                    style: TextStyle(color: Colors.black),
                  )),
                  
      ),
    );
    
  }
}
