import 'package:flutter/material.dart';

// tava só testando por aqui
class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/masp.jpg"), 
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: FractionalOffset(0.5, 0.8), // valor 1 horixontal, valor 2 vertical
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Pg 2',
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
