import 'package:flutter/material.dart';
import 'package:museus/models/dados_login.dart'; 
import 'package:museus/models/servicos/salvar_login.dart'; 

class HomeAppBar extends StatelessWidget {
  
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var usuario = SalvarLogin.dadosLogin; 
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Olá, ${usuario?.nome}',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Container(
            width: double.infinity,
            child: Text(
              'Explore São Paulo descubra a relevância de São Paulo para a arte!',
              style: TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
