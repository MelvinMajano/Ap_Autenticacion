
  
import 'package:ap_autentication/login_page.dart';
import 'package:ap_autentication/registro_page.dart';
import 'package:ap_autentication/routes.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> routes ={
 MyRoutes.loginRoute.name: (context) => const LoginPage(),
 MyRoutes.registroRoute.name: (context) => const RegistroPage(),
};