import 'package:flutter/material.dart';
import 'package:museus/models/expo.dart';
import 'package:museus/telas/museu_list_screen.dart';

class FavoritoTela extends StatefulWidget {
  final List<Expo> favoritos;

  const FavoritoTela({required this.favoritos, super.key});

  @override
  _FavoritoTelaState createState() => _FavoritoTelaState();
}

class _FavoritoTelaState extends State<FavoritoTela> {
  late List<Expo> favoritos;

  @override
  void initState() {
    super.initState();
    favoritos = widget.favoritos;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const SizedBox(height: 60),
                Expanded(
                  child: favoritos.isEmpty
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'nenhuma exposição adicionada aos favoritos.',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey[600],
                              ),
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MuseuListScreen(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              child: const Text(
                                'ver museus',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        )
                      : ListView.builder(
                          itemCount: favoritos.length,
                          itemBuilder: (context, index) {
                            final expo = favoritos[index];
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: Card(
                                elevation: 5,
                                child: ListTile(
                                  contentPadding: const EdgeInsets.all(10),
                                  title: Text(expo.nomeExpo),
                                  subtitle: Text(expo.descricaoExpo),
                                  leading: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'images/${expo.img}',
                                      width: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  trailing: IconButton(
                                    icon: const Icon(Icons.remove_circle, color: Colors.red), 
                                    onPressed: () {
                                      AlterarFavorito(expo); // mesma logica pra remover que a usada na tela de exps
                                    },
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                ),
              ],
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
    );
  }
}



/*
class SemFavorito extends StatelessWidget {
  const SemFavorito({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], 
      body: Stack(
        children: [
          Positioned.fill(
            top: 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(50.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFF363636), // Cor de fundo do container
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Nenhuma exposição foi adicionada aos favoritos! Verifique nossos museus e adicione as exposições que mais gostar aos favoritos para que possam ser visualizadas aqui!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MuseuListScreen()),
                          );
                        },
                        child: const Text('Ver Museus'),
                      ),
                    ],
                  ),
                ),
              ],
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
    );
  }
} */