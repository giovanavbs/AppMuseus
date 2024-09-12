import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:  Colors.red,
      body:  Center(
        child: Text(
          'Pg 3',
          style: TextStyle(
            color: Colors.white, 
          ),
        ),
      ),
    );
  }
}