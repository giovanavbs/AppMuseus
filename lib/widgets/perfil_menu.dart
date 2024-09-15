import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class PerfilMenu extends StatelessWidget {
  const PerfilMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(52, 255, 0, 0),
        ),
        child: const Icon(
          Iconsax.code,
          color: Color.fromARGB(255, 255, 0, 0),
        ),
      ),
      title: const Text(
        "infos",
        style: TextStyle(fontSize: 15),
      ),
      trailing: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(52, 255, 0, 0),
        ),
        child: const Icon(
          Iconsax.align_vertically,
          size: 18.0,
          color: Color.fromARGB(255, 255, 0, 0),
        ),
      ),
    );
  }
}
