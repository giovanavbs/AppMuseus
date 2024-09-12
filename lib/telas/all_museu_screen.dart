import 'package:flutter/material.dart';
import 'package:museus/models/museus.dart';
import 'package:museus/widgets/all_screen_app_bar.dart';
import 'package:museus/widgets/museu_all_card.dart';


class AllMuseuScreen extends StatefulWidget {
  const AllMuseuScreen({super.key});

  @override
  State<AllMuseuScreen> createState() => _AllMuseuScreenState();
}

class _AllMuseuScreenState extends State<AllMuseuScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AllEventosScreenAppBar(),
                const SizedBox(height: 20),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 20
                  ),
                  itemBuilder:(context, index) => MuseuCard( museu: museu[index],),
                  itemCount: museu.length,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
