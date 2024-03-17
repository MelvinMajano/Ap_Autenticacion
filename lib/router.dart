

import 'package:ap_autentication/pantallas/InicioPage.dart';
import 'package:ap_autentication/pantallas/login_page.dart';
import 'package:ap_autentication/pantallas/registro_page.dart';
import 'package:ap_autentication/routes.dart';
import 'package:flutter/material.dart';


final Map<String, Widget Function(BuildContext)> routes ={
 MyRoutes.loginRoute.name: (context) => const LoginPage(),
 MyRoutes.registroRoute.name: (context) =>  RegistroPage(),
 MyRoutes.homepageRoute.name: (context) => const InicioPage(),
};

