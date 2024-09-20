import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/intro4.png"), 
            fit: BoxFit.cover,
          ),
        ),
        child: const Align(
          alignment: FractionalOffset(0.5, 0.8), // valor 1 horixontal, valor 2 vertical
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Conheça os melhores MUSEUS...',
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