import 'package:flutter/material.dart';

class TriangleArea extends StatelessWidget {
  final TextEditingController baseController = TextEditingController();
  final TextEditingController heightController = TextEditingController();

  double calculateTriangleArea(double base, double height) {
    return 0.5 * base * height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Área del Triángulo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: baseController,
              decoration: InputDecoration(
                labelText: 'Ingrese la base',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: heightController,
              decoration: InputDecoration(
                labelText: 'Ingrese la altura',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final base = double.tryParse(baseController.text);
                final height = double.tryParse(heightController.text);

                if (base == null || height == null) {
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
                  final area = calculateTriangleArea(base, height);
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      content: Text('Área del triángulo: $area'),
                    ),
                  );
                }
              },
              child: Text('Calcular Área'),
            ),
          ],
        ),
      ),
    );
  }
}
