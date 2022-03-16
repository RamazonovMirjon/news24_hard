import 'package:flutter/material.dart';
import 'package:news24/routes/routes.dart';
import 'package:news24/screens/my_home_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  final Routes _routes = Routes();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
         
      ),
      onGenerateRoute: _routes.onGenerateRoute,
      initialRoute: '/interest',
    );
  }
}
