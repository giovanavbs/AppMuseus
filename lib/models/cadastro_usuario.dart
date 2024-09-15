import 'package:museus/models/dados_login.dart';

class UsuariosCadastrados {
  static final List<DadosLogin> usuarios = [
    DadosLogin(
      nome: 'admin', 
      usuario: 'adm', 
      senha: '1'),
  ];

  static DadosLogin? validarUsuario(String usuario, String senha) {
    for (var u in usuarios) {
      if (u.usuario == usuario && u.senha == senha) {
        return u;
      }
    }
    return null;
  }
}
