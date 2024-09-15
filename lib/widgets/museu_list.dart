import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:museus/models/museus.dart';
import 'package:museus/telas/all_museu_screen.dart';
import 'package:museus/telas/detalhes_museu.dart';
import 'package:url_launcher/url_launcher.dart'; 

class MuseuList extends StatefulWidget {
  const MuseuList({Key? key}) : super(key: key);

  @override
  _MuseuListState createState() => _MuseuListState();
}

class _MuseuListState extends State<MuseuList> {

  Future<void> _launchMapsUrl(double latitude, double longitude) async {
    final String googleMapsUrl = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    final Uri url = Uri.parse(googleMapsUrl);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'MuseusSP',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AllMuseuScreen(),
                    ),
                  ),
                  child: const Text(
                    'Ver Tudo',
                    style: TextStyle(
                      color: Colors.black
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              museu.length,
              (index) => GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetalhesScreen(
                      museu: museu[index],
                    ),
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 200,
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
                                image: AssetImage(museu[index].img),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            museu[index].nome,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const Icon(
                                Iconsax.calendar,
                                size: 15,
                                color: Colors.grey,
                              ),
                              Text(
                                "${museu[index].data}",
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
                          onPressed: () {
                            _launchMapsUrl(museu[index].latitude, museu[index].longitude);
                          },
                          iconSize: 20,
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          icon: const Icon(Iconsax.location),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
