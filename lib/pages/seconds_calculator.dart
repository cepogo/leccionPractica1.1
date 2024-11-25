import 'package:flutter/material.dart';

class SecondsCalculator extends StatelessWidget {
  final TextEditingController timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Segundos Restantes')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: timeController,
              decoration: InputDecoration(
                labelText: 'Ingrese tiempo en segundos',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final time = int.tryParse(timeController.text);
                if (time == null) {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Text('Error'),
                      content: Text('Solo se admite números, ingrese de nuevo.'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('Aceptar'),
                        ),
                      ],
                    ),
                  );
                } else {
                  final remainingSeconds = 60 - (time % 60);
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      content: Text(
                        'Segundos restantes para completar un minuto: $remainingSeconds',
                      ),
                    ),
                  );
                }
              },
              child: Text('Calcular'),
            ),
          ],
        ),
      ),
    );
  }
}
