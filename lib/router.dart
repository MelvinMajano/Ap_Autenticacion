import 'dart:js';

<<<<<<< HEAD
  


import 'package:ap_autentication/pantallas/inicio_page.dart';
=======
>>>>>>> 79b1c0a2b8fedfc06fe77bdc20a1af76bf6c16c7
import 'package:ap_autentication/pantallas/login_page.dart';
import 'package:ap_autentication/pantallas/registro_page.dart';
import 'package:ap_autentication/routes.dart';
import 'package:flutter/material.dart';
import 'package:ap_autentication/pantallas/InicioPage.dart';

<<<<<<< HEAD
final Map<String, Widget Function(BuildContext)> routes ={
 MyRoutes.loginRoute.name: (context) => const LoginPage(),
 MyRoutes.registroRoute.name: (context) =>  RegistroPage(),
 MyRoutes.homepageRoute.name: (context) => const InicioPage(),
};
=======
final Map<String, Widget Function(BuildContext)> routes = {
  MyRoutes.loginRoute.name: (context) => const LoginPage(),
  MyRoutes.registroRoute.name: (context) => RegistroPage(),
  MyRoutes.InicioPage.name: (context) => InicioPage(),
};
>>>>>>> 79b1c0a2b8fedfc06fe77bdc20a1af76bf6c16c7
