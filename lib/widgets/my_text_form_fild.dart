import 'package:flutter/material.dart';

class MyTextFormFild extends StatelessWidget {
  const MyTextFormFild({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: TextFormField(
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          hintText: text,
          labelText: text,
        ),
        onChanged: (input) {
          print("Qidiruv tizimi: $input");
        },
        onTap: () {},
        validator: (input) {
          if (input!.isNotEmpty) return "bo'sh bo'lmasligi kerak";
        },
      ),
    );
  }
}
