import 'package:flutter/material.dart';

class SignInBtn extends StatelessWidget {
  const SignInBtn ({super.key, required this.onTap});

  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
      padding: EdgeInsets.all(18),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(color: Color.fromARGB(255, 27, 9, 114),
      borderRadius: BorderRadius.circular(5)),
      child: 
      const Center(
        child: Text(
          'Sign Out',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),),
    ),
    );
  }
}