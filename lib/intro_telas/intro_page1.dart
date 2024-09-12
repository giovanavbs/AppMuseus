import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:  Colors.purple,
      body:  Center(
        child: Text(
          'Pg 1',
          style: TextStyle(
            color: Colors.white, 
          ),
        ),
      ),
    );
  }
}