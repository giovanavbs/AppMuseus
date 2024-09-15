import 'package:flutter/material.dart';
import 'package:museus/models/expo.dart';
import 'package:museus/telas/favoritos_screen.dart';

void main() {
  runApp(const MuseusExp());
}

class MuseusExp extends StatelessWidget {
  const MuseusExp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Expo> expos = ModalRoute.of(context)!.settings.arguments as List<Expo>;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Stack(
          children: [
            Positioned.fill(
              top: 80,
              child: Center(
                child: ExposiApp(expos: expos),
              ),
            ),
            Positioned(
              top: 20,
              left: 10,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: IconButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  fixedSize: const Size(50, 50),
                ),
                icon: const Icon(Icons.arrow_back),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExposiApp extends StatefulWidget {
  final List<Expo> expos;

  const ExposiApp({required this.expos, super.key});

  @override
  ExposiAPP createState() => ExposiAPP();
}

class ExposiAPP extends State<ExposiApp> {
  static List<Expo> favoritos = [];

  @override
  void initState() {
    super.initState();
  }

  void AlterarFavorito(Expo expo) {
    setState(() {
      if (favoritos.contains(expo)) {
        favoritos.remove(expo);
      } else {
        favoritos.add(expo);
      }
    });
  }

  void NavFavoritos(BuildContext context, List<Expo> favoritos) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FavoritoTela(favoritos: favoritos),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView.builder(
        itemCount: widget.expos.length,
        shrinkWrap: true,
        padding: const EdgeInsets.all(5),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final exposicaoFavorita = favoritos.contains(widget.expos[index]);
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Stack(
                  alignment: Alignment.topRight,
                  children: <Widget>[
                    Column(
                      children: [
                        SizedBox(
                          height: 200,
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(10)), 
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('images/${widget.expos[index].img}'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                child: Container(
                                  color: const Color(0xFF9B5DE5),
                                  width: double.infinity,
                                  height: 40,
                                  child: Center(
                                    child: Text(
                                      widget.expos[index].nomeExpo,
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)), 
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(widget.expos[index].descricaoExpo),
                              SizedBox(height: 10),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  widget.expos[index].nomeCientista,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFF9B5DE5), 
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: IconButton(
                        icon: Icon(
                          exposicaoFavorita ? Icons.favorite : Icons.favorite_border,
                          color: exposicaoFavorita ? Colors.red : Colors.white,
                        ),
                        onPressed: () {
                          AlterarFavorito(widget.expos[index]);
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

List<Expo> SalvarFavoritos() {
  return ExposiAPP.favoritos;
}
