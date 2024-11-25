import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
        backgroundColor: Colors.green, // AppBar verde
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Seleccione una opción:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                title: Text('Calcular Segundos Restantes'),
                trailing: Icon(Icons.timer),
                onTap: () => Navigator.pushNamed(context, '/seconds-calculator'),
              ),
            ),
            Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                title: Text('Área del Triángulo'),
                trailing: Icon(Icons.calculate),
                onTap: () => Navigator.pushNamed(context, '/triangle-area'),
              ),
            ),
            Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                title: Text('Número Par/Impar'),
                trailing: Icon(Icons.filter_1),
                onTap: () => Navigator.pushNamed(context, '/par-checker'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
