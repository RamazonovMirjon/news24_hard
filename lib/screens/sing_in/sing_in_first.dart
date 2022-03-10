import 'package:flutter/material.dart';

class SignInFirst extends StatelessWidget {
  const SignInFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 200,
              child: Image.asset("assets/images/title.png"),
            )
          ],
        ),
      ),
    );
  }
}