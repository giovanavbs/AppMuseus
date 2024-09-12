// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:museus/telas/main_screen.dart';
import 'package:museus/widgets/perfil_menu.dart';

class PerfilScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      body: Stack(
        children: [
          //nav
          Positioned(
            top: 20,
            left: 10,
            right: 10,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const MainScreen()),
                      (route) => false,
                    );
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fixedSize: const Size(50, 50),
                  ),
                  icon: const Icon(CupertinoIcons.chevron_back),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fixedSize: const Size(50, 50),
                  ),
                  icon: Icon(
                    isDark ? CupertinoIcons.sun_max_fill : CupertinoIcons.moon_stars,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 80, 
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 120,
                      height: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60), 
                        child: Image.asset(
                          "assets/images/perfil.png", 
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Lena",
                      // '${dadosLogin.nome}!',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Lena@gmail", // Atualizado para usar o e-mail do modelo
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        // ignore: sort_child_properties_last
                        child: const Text(
                          "Edite perfil",
                          style: TextStyle(color: Colors.white), // Texto do botão
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          side: BorderSide.none,
                          shape: const StadiumBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Divider(),
                    const SizedBox(height: 10),
                    // Menu
                    const PerfilMenu(),
                    const SizedBox(height: 5),
                    const PerfilMenu(),
                    const SizedBox(height: 5),
                    const PerfilMenu(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
