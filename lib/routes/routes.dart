import 'package:flutter/material.dart';
import 'package:news24/screens/my_home_page.dart';
import 'package:news24/screens/sing_in/gmail_page.dart';
import 'package:news24/screens/sing_in/sing_in_first.dart';

class Routes {
  Route? onGenerateRoute(RouteSettings settings) {
    
    var arguments = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const MyHomePage());
      case "/singin1":
        return MaterialPageRoute(builder: (context) => SignInFirst());
      case "/singin2":
        return MaterialPageRoute(builder: (context) => GmailPage());

      default:
    }
  }
}
