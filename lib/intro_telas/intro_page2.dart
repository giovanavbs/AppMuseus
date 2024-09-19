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
            image: AssetImage("images/museu2.jpg"), 
            fit: BoxFit.cover,
          ),
        ),
        child: const Align(
          alignment: FractionalOffset(0.5, 0.8), // valor 1 horixontal, valor 2 vertical
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'de São Paulo...',
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
