import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:url_launcher/url_launcher.dart';  
import 'package:museus/models/museus.dart';
import 'package:museus/telas/detalhes_museu.dart';

class MuseuCard extends StatelessWidget {
  final Museu museu;
  MuseuCard({super.key, required this.museu});

  Future<void> _launchURL() async {
    final Uri url = Uri.parse('https://www.google.com/maps/search/?api=1&query=${museu.latitude},${museu.longitude}');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetalhesScreen(museu: museu,),
        ),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(museu.img),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                museu.nome,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Iconsax.calendar,
                    size: 15,
                    color: Colors.grey,
                  ),
                  Text(
                    "${museu.data}",
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 1,
            right: 1,
            child: IconButton(
              onPressed: _launchURL,
              style: IconButton.styleFrom(
                backgroundColor: Colors.white,
                fixedSize: const Size(30, 30),
              ),
              iconSize: 20,
              icon: const Icon(Iconsax.location),
            ),
          )
        ],
      ),
    );
  }
}
