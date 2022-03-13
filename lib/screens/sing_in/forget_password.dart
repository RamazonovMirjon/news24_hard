import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return _method();
  }

  SafeArea _method() {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 200,
              child: Image.asset("assets/images/title.png"),
            ),
            const Padding(
              padding: EdgeInsets.all(40),
              child: Text("Enter your email to be sent a reset password link."),
            ),
            _formMethod,
            _buttomMethod,
          ],
        ),
      ),
    ));
  }

  Form get _formMethod {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextFormField(
              controller: _controller,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.go,
              decoration: const InputDecoration(
                hintText: "Email",
                labelText: "Email",
              ),
              onChanged: (input) {
                setState(() {
                  _controller;
                });
                //! print("Qidiruv tizimi: $input");
              },
              onTap: () {},
              validator: (input) {
                if (input!.isEmpty) {
                  return "Bo'sh bo'lmasligi kerak";
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }

  Container get _buttomMethod {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      margin: const EdgeInsets.symmetric(vertical: 50),
      child: ElevatedButton(
        child: const Text("Reset"),
        style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        onPressed: _controller.text.isEmpty
            ? null
            : () {
                if (_formkey.currentState!.validate()) {
                  //! print("Keyingi sahifaga utdi");
                }
              },
      ),
    );
  }
}
