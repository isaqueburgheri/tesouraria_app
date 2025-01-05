import 'package:flutter/material.dart';
import 'user_dashboard.dart'; // Tela para tesoureiros/pastores
import 'admin_dashboard.dart'; // Tela para administradores

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _handleLogin() {
    final username = _usernameController.text.trim();
    final password = _passwordController.text.trim();

    // Simulação de lógica de login (substituir por lógica real posteriormente)
    if (username == "admin" && password == "1234") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AdminDashboard()),
      );
    } else if (username == "user" && password == "123") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => UserDashboard()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Credenciais inválidas')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          // Plano de fundo com imagem
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://i.imgur.com/rRq4Kvs.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Conteúdo da tela
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Bem-vindo',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          offset: Offset(1, 1),
                          blurRadius: 2,
                          color: Colors.black45,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.0),

                  // campos para inserir o usuario
                  TextField(
                    controller: _usernameController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person,
                          color: Colors.white), // Ícone de usuário
                      labelText: 'Usuário',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        // Linha em vez de borda
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        // Linha em vez de borda (focada)
                        borderSide: BorderSide(color: Colors.white, width: 2.5),
                      ),
                    ),
                  ),

                  // campos para inserir a senha
                  SizedBox(height: 16.0), // Espaçamento entre os campos
                  TextField(
                    controller: _passwordController,
                    style: TextStyle(color: Colors.white),
                    obscureText: true, // Oculta a senha
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock,
                          color: Colors.white), // Ícone de senha
                      labelText: 'Senha',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        // Linha em vez de borda
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        // Linha em vez de borda (focada)
                        borderSide: BorderSide(color: Colors.white, width: 2.5),
                      ),
                    ),
                  ),

                  // espaço
                  SizedBox(height: 24.0),

                  // Botão de entrar
                  ElevatedButton(
                    onPressed: _handleLogin,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: 14.0),
                      textStyle: TextStyle(fontSize: 16.0),
                    ),
                    child: Text(
                      'Entrar',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
