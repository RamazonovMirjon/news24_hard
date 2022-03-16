import 'package:flutter/material.dart';
import 'package:news24/screens/interest_page.dart';
import 'package:news24/screens/my_home_page.dart';
import 'package:news24/screens/sing_in/forget_password.dart';
import 'package:news24/screens/sing_in/gmail_page.dart';
import 'package:news24/screens/sing_in/sing_in_first.dart';
import 'package:news24/screens/terms_page.dart';

class Routes {
  Route? onGenerateRoute(RouteSettings settings) {
    var arguments = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const MyHomePage());
      case "/singin1":
        return MaterialPageRoute(builder: (context) => const SignInFirst());
      case "/singin2":
        return MaterialPageRoute(builder: (context) => const GmailPage());
      case "/singin3":
        return MaterialPageRoute(builder: (context) => const ForgetPassword());
      case "/terms":
        return MaterialPageRoute(builder: (context) => const TermsPage());
      case "/interest":
        return MaterialPageRoute(builder: (context) => const InterestsPage());

      default:
        return null;
    }
  }
}
