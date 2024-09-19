import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/museu3.jpg"), 
            fit: BoxFit.cover,
          ),
        ),
        child: const Align(
          alignment: FractionalOffset(0.5, 0.8), // valor 1 horixontal, valor 2 vertical
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'com o melhor aplicativo informativo.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}