
import 'package:flutter/material.dart';
class RegistroPage extends StatelessWidget {
  const RegistroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Registro')),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Nombre',
                hintText: 'Escribe tu nombre',
                border: OutlineInputBorder(),
              ),
            )
            ],
        ),
      )
    );
  }
}