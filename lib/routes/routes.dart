import 'package:flutter/material.dart';
import 'package:news24/screens/my_home_page.dart';

class Routes {
  Route? onGenerateRoute(RouteSettings settings) {
    var arguments = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const MyHomePage());

      default:
    }
  }
}
