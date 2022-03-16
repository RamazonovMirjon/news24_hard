import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();

  bool check = true, autofocus = false;

  @override
  Widget build(BuildContext context) {
    return _method();
  }

  SafeArea _method() {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
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
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: check
                ? null
                : Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Didn’t receive an email? "),
                          Text(
                            "Re-send",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        alignment: Alignment.center,
                        child: const Text(
                          'Email sent. Please check your email to reset\n your password',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                      ),
                    ],
                  ),
          )),
        ],
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
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.go,
              showCursor: autofocus,
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
      margin: const EdgeInsets.only(top: 40, bottom: 20),
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
                  setState(() {
                    _controller.clear();
                    check = false;
                  });
                }
              },
      ),
    );
  }
}
