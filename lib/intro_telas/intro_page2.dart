import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:  Colors.blue,
      body:  Center(
        child: Text(
          'Pg 2',
          style: TextStyle(
            color: Colors.white, 
          ),
        ),
      ),
    );
  }
}