import 'package:flutter/material.dart';
import 'login_screen.dart';

class AdminDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Painel do Administrador'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Navegar para a tela de login, removendo o histórico
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
                (route) => false,
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Resumo Financeiro',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Card(
              child: ListTile(
                title: Text('Entradas'),
                trailing: Text('R\$ 10.000,00'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Saídas'),
                trailing: Text('R\$ 3.000,00'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Saldo Geral'),
                trailing: Text('R\$ 7.000,00'),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navegar para a tela de cadastro de usuários
              },
              child: Text('Cadastrar Novo Usuário'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navegar para a tela de relatórios
              },
              child: Text('Relatórios Detalhados'),
            ),
          ],
        ),
      ),
    );
  }
}
