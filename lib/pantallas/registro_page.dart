
import 'package:flutter/material.dart';
class RegistroPage extends StatelessWidget {
   RegistroPage({super.key,});

  final TextEditingController controllerNombre = TextEditingController();
  final TextEditingController controllerCorreo = TextEditingController();
  final TextEditingController controllerContrasenia = TextEditingController();
  final TextEditingController controllerContrasenia2 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Registro')),
      ),
      body:  SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Card(
          elevation: 10,
          child: Form(
            child: Column(
              children: [
              const Icon(Icons.person, size: 100, color: Colors.blue,),
              InputItem(controller: controllerNombre,labelText: "Nombre",hintText: "Escribe tu nombre",),
              const Padding(padding:  EdgeInsets.all(10)),
              InputItem(controller: controllerCorreo,labelText:"Correo",hintText: "Escribe tu correo electrónico"),
              const Padding(padding:  EdgeInsets.all(10)),
              InputItem(controller: controllerContrasenia, labelText: "Contraseña",hintText: "Escribe tu contraseña"),
              const Padding(padding:  EdgeInsets.all(10)),
              InputItem(controller: controllerContrasenia2, labelText: "Repetir contraseña",hintText: "Confirma tu contraseña"),
                ],
            ),
          ),
        ),
      )
    );
  }
}

class InputItem extends StatefulWidget {
  const InputItem({super.key, required this.controller, this.labelText, this.hintText});

  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  
  @override
  State<InputItem> createState() => _InputItemState();
}

class _InputItemState extends State<InputItem> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration:  InputDecoration(
      labelText: widget.labelText ,
      hintText: widget.hintText,
      border: const OutlineInputBorder(),
      ),
    );
  }
}