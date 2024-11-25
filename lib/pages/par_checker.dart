import 'package:flutter/material.dart';

class ParChecker extends StatelessWidget {
  final TextEditingController numberController = TextEditingController();

  bool isEven(int number) {
    return number % 2 == 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Número Par/Impar')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: numberController,
              decoration: InputDecoration(
                labelText: 'Ingrese un número',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final number = int.tryParse(numberController.text);

                if (number == null) {
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
                  final result = isEven(number) ? 'Par' : 'Impar';
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      content: Text('El número es: $result'),
                    ),
                  );
                }
              },
              child: Text('Determinar Par/Impar'),
            ),
          ],
        ),
      ),
    );
  }
}
