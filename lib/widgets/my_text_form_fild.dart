import 'package:flutter/material.dart';

class MyTextFormFild extends StatelessWidget {
  const MyTextFormFild({
    Key? key,
    required this.text,
    TextEditingController? controller,
  })  : _controller = controller,
        super(key: key);

  final TextEditingController? _controller;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: TextFormField(
        controller: _controller,
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
          if (input!.isEmpty) return "bo'sh bo'lmasligi kerak";
        },
      ),
    );
  }
}
