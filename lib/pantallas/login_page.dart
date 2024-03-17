<<<<<<< HEAD
import 'package:ap_autentication/pantallas/inicio_page.dart';
import 'package:ap_autentication/routes.dart';
import 'package:ap_autentication/widgets/Imput_widget.dart';
import 'package:flutter/material.dart';
=======
import 'package:flutter/material.dart';
import 'registro_page.dart';
import 'InicioPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  // Simulación de credenciales almacenadas
  String Email = 'joseph.alcerro@unah.hn';
  String Password = '20222000391';
>>>>>>> 79b1c0a2b8fedfc06fe77bdc20a1af76bf6c16c7


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
<<<<<<< HEAD
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
=======
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Verifica las credenciales ingresadas
                String email = _emailController.text;
                String password = _passwordController.text;

                if (email == Email && password == Password) {
                  // Si las credenciales son correctas, navega a la página de inicio
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          InicioPage(), // Reemplaza LoginPage con la página de inicio
                    ),
                  );
                } else {
                  // Si las credenciales son incorrectas, muestra un mensaje de error
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Credenciales incorrectas'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                'Login',
                style: TextStyle(
                    fontSize: 18, color: Colors.blueAccent), // Tamaño del texto
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegistroPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(foregroundColor: Colors.white),
              child: Text(
                'Registrarse',
                style: TextStyle(color: Colors.blueAccent), // Color del texto
              ),
            ),
          ],
>>>>>>> 79b1c0a2b8fedfc06fe77bdc20a1af76bf6c16c7
        ),
      ),
    );
  }
}

<<<<<<< HEAD
=======
void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}
>>>>>>> 79b1c0a2b8fedfc06fe77bdc20a1af76bf6c16c7
