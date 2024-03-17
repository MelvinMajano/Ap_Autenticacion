<<<<<<< HEAD

import 'package:ap_autentication/widgets/Imput_widget.dart';
=======
>>>>>>> 79b1c0a2b8fedfc06fe77bdc20a1af76bf6c16c7
import 'package:flutter/material.dart';

class RegistroPage extends StatelessWidget {
  RegistroPage({
    super.key,
  });

  final TextEditingController controllerNombre = TextEditingController();
  final TextEditingController controllerCorreo = TextEditingController();
  final TextEditingController controllertelefono = TextEditingController();
  final TextEditingController controllerContrasenia = TextEditingController();
  final TextEditingController controllerContrasenia2 = TextEditingController();

  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Registro'),
      ),
      body:  SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formkey, //Llave para el formulario
          child: Column(
            children: [
            const Icon(Icons.person, size: 100, color: Colors.blue,),
            InputItem(
              controller: controllerNombre,labelText: "Nombre",
              hintText: "Escribe tu nombre",
              ),
            const Padding(padding:  EdgeInsets.all(10)),
            InputItem(
             controller: controllerCorreo,labelText:"Correo"
            ,hintText: "Escribe tu correo electrónico",
=======
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Registro',
            style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.normal),
          )),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Card(
            elevation: 10,
            child: Form(
              key: formkey, //Llave para el formulario
              child: Column(
                children: [
                  const Icon(
                    Icons.person,
                    size: 100,
                    color: Colors.blue,
                  ),
                  InputItem(
                    controller: controllerNombre,
                    labelText: "Nombre",
                    hintText: "Escribe tu nombre",
                  ),
                  const Padding(padding: EdgeInsets.all(10)),
                  InputItem(
                    controller: controllerCorreo,
                    labelText: "Correo",
                    hintText: "Escribe tu correo electrónico",
                  ),
                  const Padding(padding: EdgeInsets.all(10)),
                  InputItem(
                    controller: controllertelefono,
                    labelText: "Telefono",
                    hintText: "Escribe tu telefono",
                  ),
                  const Padding(padding: EdgeInsets.all(10)),
                  InputItem(
                    controller: controllerContrasenia,
                    labelText: "Contraseña",
                    hintText: "Escribe tu contraseña",
                  ),
                  const Padding(padding: EdgeInsets.all(10)),
                  InputItem(
                    controller: controllerContrasenia2,
                    labelText: "Repetir contraseña",
                    hintText: "Confirma tu contraseña",
                  ),
                  const Padding(padding: EdgeInsets.all(10)),
                  ElevatedButton(
                    onPressed: () {
                      final nombre = controllerNombre.text;
                      final correo = controllerCorreo.text;
                      final telefeno = controllertelefono.text;
                      final contrasenia = controllerContrasenia.text;
                      final contrasenia2 = controllerContrasenia2.text;

                      if (nombre.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content:
                                    Text("El nombre no puede estar vacío")));
                        return;
                      }

                      if (correo.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content:
                                    Text("El correo no puede estar vacío")));
                        return;
                      }

                      if (telefeno.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content:
                                    Text("El telefono no puede estar vacío")));
                        return;
                      }
                      if (contrasenia.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text(
                                    "La contraseña no puede estar vacía")));
                        return;
                      }

                      if (contrasenia2.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text(
                                    "La contraseña no puede estar vacía")));
                        return;
                      }
                      if (contrasenia == contrasenia2) {
                        print("Nombre: ${controllerNombre.text}");
                        print("Correo: ${controllerCorreo.text}");
                        print("Contraseña: ${controllerContrasenia.text}");
                        print("Contraseña2: ${controllerContrasenia2.text}");
                        return;
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Las contraseñas no coinciden")));
                        return;
                      }
                    },
                    child: const Text("    Registrate   "),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                ],
              ),
>>>>>>> 79b1c0a2b8fedfc06fe77bdc20a1af76bf6c16c7
            ),
            const Padding(padding:  EdgeInsets.all(10)),
            InputItem(controller: controllertelefono, labelText: "Telefono",
            hintText: "Escribe tu telefono",),
            const Padding(padding:  EdgeInsets.all(10)),
            InputItem(
            controller: controllerContrasenia, labelText: "Contraseña",
            hintText: "Escribe tu contraseña",
            ),
            const Padding(padding:  EdgeInsets.all(10)),
            InputItem(
              controller: controllerContrasenia2, labelText: "Repetir contraseña",
              hintText: "Confirma tu contraseña",
            
              ),
              const Padding(padding:  EdgeInsets.all(10)),
              ElevatedButton(
                onPressed: (){
        
                  final nombre= controllerNombre.text;
                  final correo= controllerCorreo.text;
                  final telefeno = controllertelefono.text;
                  final contrasenia= controllerContrasenia.text;
                  final contrasenia2= controllerContrasenia2.text;
                  
        
                  if(nombre.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("El nombre no puede estar vacío"))
                    );
                    return;
                  }
        
                  if(correo.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("El correo no puede estar vacío"))
                    );
                    return;
                  }
        
                 if(telefeno.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("El telefono no puede estar vacío"))
                    );
                    return;
                  }
                  if(contrasenia.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("La contraseña no puede estar vacía"))
                    );
                    return;
                  }
        
                  if(contrasenia2.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("La contraseña no puede estar vacía"))
                    );
                    return;
                  }
                    if(contrasenia == contrasenia2){
                    print("Nombre: ${controllerNombre.text}");
                    print("Correo: ${controllerCorreo.text}");
                    print("Contraseña: ${controllerContrasenia.text}");
                    print("Contraseña2: ${controllerContrasenia2.text}");
                    return;
                    }
                    else{
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Las contraseñas no coinciden"))
                      );
                      return;
                    }
                },
                 child: const Text("    Registrate   "),
                 ),
              const Padding(padding:  EdgeInsets.all(5)),
              ],
          ),
        ));
  }
}

<<<<<<< HEAD
=======
class InputItem extends StatefulWidget {
  const InputItem(
      {super.key,
      required this.controller,
      this.labelText,
      this.hintText,
      this.validator});

  final TextEditingController controller;
  final String? labelText;
  final String? hintText;

  final String? Function(String?)? validator;

  @override
  State<InputItem> createState() => _InputItemState();
}

class _InputItemState extends State<InputItem> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      controller: widget.controller,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
>>>>>>> 79b1c0a2b8fedfc06fe77bdc20a1af76bf6c16c7
