import 'package:flutter/material.dart';
import 'package:museus/widgets/constantes.dart';
import 'package:museus/widgets/introTelas.dart';
// import 'package:museus/widgets/introTelas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({Key? key}) : super (key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Biofit",
        colorScheme: ColorScheme.fromSeed(seedColor: kprimaryColor),
        scaffoldBackgroundColor: kbackgroundColor,
        useMaterial3: true,
      ),
      home: IntroScreen(),   
    );
  }
}
