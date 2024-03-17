import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  InicioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: Center(
        child: Text(
          'Bienvenido a la página de inicio',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
