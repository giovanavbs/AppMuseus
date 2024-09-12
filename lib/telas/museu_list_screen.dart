import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';
import 'package:museus/models/museus.dart';
import 'package:museus/telas/main_screen.dart';
import 'package:museus/widgets/museu_all_card.dart';
class MuseuListScreen extends StatelessWidget {
  const MuseuListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 70),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, 
                      crossAxisSpacing: 10, 
                      mainAxisSpacing: 10, 
                      childAspectRatio: 1, 
                    ),
                    itemCount: museu.length,
                    itemBuilder: (context, index) {
                      return MuseuCard(museu: museu[index]);
                    },
                  ),
                ),
              ),
            ],
          ),
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
                      MaterialPageRoute(builder: (context) => MainScreen()),
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
                  icon: const Icon(Iconsax.notification),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
