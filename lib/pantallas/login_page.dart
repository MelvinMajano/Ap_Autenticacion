import 'package:ap_autentication/Widgets/imputs_item.dart';
import 'package:ap_autentication/pantallas/InicioPage.dart';
import 'package:ap_autentication/routes.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
    
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 final TextEditingController  emailController = TextEditingController();
 final TextEditingController  passwordController = TextEditingController();
  bool obscureText = true;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            const  Padding(padding:  EdgeInsets.all(80)),
              InputItem(
                controller: emailController, 
                labelText: 'Email',
                hintText: 'email', 
                  icon: const Icon(Icons.email)
                  ),
              const SizedBox(height: 20.0),
              InputItem(
                controller: passwordController,
                 labelText: 'Password', 
                 hintText: 'password',
                 obscureText: obscureText,  
                 icon: const Icon(Icons.lock), 
                 suffixIcon: IconButton(icon: Icon(obscureText ? Icons.visibility: Icons.visibility_off),
                  onPressed: () { 
                    // Cambia el estado de la contraseña
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                        ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Verifica las credenciales ingresadas
                  if ( emailController.text == 'joseph.alcerro@unah.hn'  && passwordController.text == '20222000391' ) {
                    // Si las credenciales son correctas, navega a la página de inicio
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const InicioPage())
                    );
                    return;
                  } else {
                    // Si las credenciales son incorrectas, muestra un mensaje de error
                    ScaffoldMessenger.of(context).showSnackBar(
                    const  SnackBar( 
                        content: Text('Credenciales incorrectas'),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 18, color: Colors.blueAccent), // Tamaño del texto
                ),
              ),
               const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                 Navigator.pushNamed(context, MyRoutes.registroRoute.name );
                },
                style: ElevatedButton.styleFrom(foregroundColor: Colors.white),
                child: const Text(
                  'Registrarse',
                  style: TextStyle(color: Colors.blueAccent), // Color del texto
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

