// // lib/ui/perfil.dart
// import 'package:flutter/material.dart';
// import 'package:museus/models/dados_login.dart';

// class Perfil extends StatelessWidget {
//   final DadosLogin dadosLogin;

//   const Perfil({super.key, required this.dadosLogin});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Builder(
//           builder: (BuildContext context) {
//             WidgetsBinding.instance.addPostFrameCallback((_) {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(
//                   content: Text('Seja bem-vindo, ${dadosLogin.nome}!'),
//                   duration: const Duration(seconds: 5),
//                 ),
//               );
//             });

//             return Stack(
//               children: [
//                 Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const CircleAvatar(
//                         radius: 50,
//                         backgroundImage: AssetImage('assets/images/perfil.png'),
//                       ),
//                       const SizedBox(height: 20),
//                       Text(
//                         'Nome: ${dadosLogin.nome}',
//                         style: const TextStyle(fontSize: 20),
//                       ),
//                       const SizedBox(height: 10),
//                       Text(
//                         'Usuário: ${dadosLogin.usuario}',
//                         style: const TextStyle(fontSize: 20),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
