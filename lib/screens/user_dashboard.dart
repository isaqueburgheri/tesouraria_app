import 'package:flutter/material.dart';
import 'login_screen.dart';

class UserDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Painel do Tesoureiro'),
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
              'Últimas Transações',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView(
                children: [
                  Card(
                    child: ListTile(
                      title: Text('Dízimo - Culto de Domingo'),
                      subtitle: Text('R\$ 1.000,00'),
                      trailing: Text('02/01/2025'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Oferta Especial'),
                      subtitle: Text('R\$ 500,00'),
                      trailing: Text('01/01/2025'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Despesa - Energia Elétrica'),
                      subtitle: Text('R\$ 300,00'),
                      trailing: Text('31/12/2024'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navegar para a tela de lançamento de nova transação
              },
              child: Text('Adicionar Nova Transação'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navegar para a tela de histórico completo
              },
              child: Text('Ver Histórico Completo'),
            ),
          ],
        ),
      ),
    );
  }
}
