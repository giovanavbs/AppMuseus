import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:museus/telas/main_screen.dart';
import 'package:museus/telas/expo-list-screen.dart';
import 'package:museus/telas/favoritos_screen.dart';
import 'package:museus/widgets/perfil_menu.dart';
import 'package:museus/models/expo.dart';
import 'package:museus/models/dados_login.dart'; 
import 'package:museus/models/servicos/salvar_login.dart'; 

class PerfilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    var usuario = SalvarLogin.dadosLogin; 

    if (usuario == null) {
// mesmo q tecnicamente tenha que fazer login para entrar, caso mude na main a tela de entrada nao vai ter form de login por isso fiz a condicional
      return Scaffold(
        body: Center(
          child: Text('realize login para acessar o perfil'),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
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
                        child: Container(
                          width: 120,
                          height: 120,
                          color: Colors.grey[300], 
                          child: Icon(
                            Icons.person,
                            size: 100, 
                            color: Colors.grey[700], 
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      usuario.nome, 
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "${usuario.usuario}@gmail.com", 
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
                        child: const Text(
                          "Edite perfil",
                          style: TextStyle(color: Colors.white),
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
                    const SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        List<Expo> favoritos = SalvarFavoritos();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FavoritoTela(favoritos: favoritos)),
                        );
                      },
                      child: Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Center(
                          child: Text(
                            "favoritos",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
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
