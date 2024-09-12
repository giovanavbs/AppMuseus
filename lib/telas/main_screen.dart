import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:museus/telas/home_screen.dart';
import 'package:museus/telas/museu_list_screen.dart';
import 'package:museus/telas/perfil_screen.dart';
import 'package:museus/widgets/constantes.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0;
  List screens = [
    HomeScreen(),
    MuseuListScreen(),
    PerfilScreen(),
  ]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 0;
              }),
              child: Column(
                mainAxisSize: MainAxisSize.min, 
                children: [
                  Icon(
                    currentTab == 0 ? Iconsax.home5 : Iconsax.home,
                    color: currentTab == 0 ? kprimaryColor : Color(0xFF9B5DE5),
                  ),
                  Text(
                    'Home',  
                    style: 
                      TextStyle(
                        fontSize: 14,
                        color: currentTab == 0 ? kprimaryColor : Colors.grey,
                      ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 1;
              }),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    currentTab == 1 ? Iconsax.book : Iconsax.book,
                    color: currentTab == 1 ? kprimaryColor : Color(0xFF9B5DE5),
                  ),
                  Text(
                    'museu',  
                    style: 
                      TextStyle(
                        fontSize: 14,
                        color: currentTab == 1 ? kprimaryColor : Colors.grey,
                      ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 2;
              }),
              child: Column(
                mainAxisSize: MainAxisSize.min, 
                children: [
                  Icon(
                    currentTab == 2 ? Iconsax.user4 : Iconsax.user,
                    color: currentTab == 2 ? kprimaryColor : Color(0xFF9B5DE5),
                  ),
                  Text(
                    'User',  
                    style: 
                      TextStyle(
                        fontSize: 14,
                        color: currentTab == 2 ? kprimaryColor : Colors.grey,
                      ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: screens[currentTab],
    );
  }
}
