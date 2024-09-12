import 'package:flutter/material.dart';
import 'package:museus/models/cadastro_usuario.dart';
import 'package:museus/models/dados_login.dart';
import 'package:museus/models/servicos/salvar_login.dart';
import 'package:museus/telas/main_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  LoginFORM createState() => LoginFORM();
}

class LoginFORM extends State<LoginForm> with SingleTickerProviderStateMixin {
  late TabController abas;
  late PageController pag;
  DadosLogin dadosLogin = DadosLogin();

  @override
  void initState() {
    super.initState();
    abas = TabController(length: 2, vsync: this);
    pag = PageController();

    abas.addListener(() {
      pag.animateToPage(
        abas.index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    abas.dispose();
    pag.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.blueAccent, 
            child: SizedBox(
              height: 50,
              child: TabBar(
                controller: abas,
                indicatorColor: Colors.white, 
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey[300],
                tabs: const [
                  Tab(text: 'LOGIN'),
                  Tab(text: 'CADASTRO'),
                ],
              ),
            ),
          ),
          Expanded(
            child: PageView(
              controller: pag,
              onPageChanged: (index) {
                abas.animateTo(index);
              },
              children: [
                buildLoginForm(context),
                buildCadastroForm(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLoginForm(BuildContext context) {
    final formID = GlobalKey<FormState>();
    final TextEditingController usuarioController = TextEditingController();
    final TextEditingController senhaController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: formID,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Usuário',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: usuarioController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person, color: Colors.blueAccent),
                hintText: 'Digite o usuário',
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, insira seu usuário';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'Senha',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: senhaController,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock, color: Colors.blueAccent),
                hintText: 'Digite a senha',
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, insira sua senha';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: Colors.blueAccent,
                elevation: 5,
              ),
              onPressed: () {
                if (formID.currentState!.validate()) {
                  dadosLogin.usuario = usuarioController.text;
                  dadosLogin.senha = senhaController.text;

                  DadosLogin? usuarioValido =
                      UsuariosCadastrados.validarUsuario(
                          dadosLogin.usuario, dadosLogin.senha);

                  if (usuarioValido != null) {
                    SalvarLogin.dadosLogin = usuarioValido;

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainScreen(),
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Erro'),
                          content: const Text('Usuário ou senha incorretos.'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                }
              },
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCadastroForm(BuildContext context) {
    final formID = GlobalKey<FormState>();
    final TextEditingController nomeController = TextEditingController();
    final TextEditingController usuarioController = TextEditingController();
    final TextEditingController senhaController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: formID,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Nome',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: nomeController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person, color: Colors.blueAccent),
                hintText: 'Digite seu nome',
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, insira seu nome';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'Usuário',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: usuarioController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person, color: Colors.blueAccent),
                hintText: 'Digite o usuário',
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, insira um usuário';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'Senha',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: senhaController,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock, color: Colors.blueAccent),
                hintText: 'Digite a senha',
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, insira sua senha';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: Colors.blueAccent,
                elevation: 5,
              ),
              onPressed: () {
                if (formID.currentState!.validate()) {
                  dadosLogin.nome = nomeController.text;
                  dadosLogin.usuario = usuarioController.text;
                  dadosLogin.senha = senhaController.text;

                  UsuariosCadastrados.usuarios.add(dadosLogin);

                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Sucesso!'),
                        content: const Text(
                            'Usuário cadastrado com sucesso, realize o login!'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: const Text(
                'Cadastrar',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
