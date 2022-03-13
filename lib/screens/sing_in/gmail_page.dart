import 'package:flutter/material.dart';
import 'package:news24/widgets/my_text_form_fild.dart';

class GmailPage extends StatefulWidget {
  @override
  State<GmailPage> createState() => _GmailPageState();
}

class _GmailPageState extends State<GmailPage> {
  final _formkey = GlobalKey<FormState>();

  Icon icon = const Icon(Icons.remove_red_eye_outlined);

  bool passwordBoll = true, iconboll = true;
  String signUpBotton = "";
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 200,
              child: Image.asset("assets/images/title.png"),
            ),
            Form(
              key: _formkey,
              child: Column(
                children: [
                  MyTextFormFild(text: "Username", controller: _controller1),
                  MyTextFormFild(text: "Email", controller: _controller2),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
                      controller: _controller3,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.go,
                      decoration: InputDecoration(
                          hintText: "Password",
                          labelText: "Password",
                          suffix: InkWell(
                            child: iconboll
                                ? const Icon(Icons.remove_red_eye_outlined)
                                : const Icon(Icons.password_outlined),
                            onTap: () {
                              setState(() {
                                passwordBoll = !passwordBoll;
                                iconboll = !iconboll;
                              });
                            },
                          )),
                      obscureText: passwordBoll,
                      onChanged: (input) {
                        setState(() {
                          signUpBotton = input;
                        });
                        print("Qidiruv tizimi: $input");
                      },
                      onTap: () {},
                      validator: (input) {
                        if (input!.length < 6)
                          return "Parol 6 tadan ko'p bo'lishi kerak";
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40, top: 10),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    child: const Text("Forgot password"),
                    onTap: () {},
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
              child: ElevatedButton(
                child: const Text("Sign In"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: signUpBotton.isEmpty
                    ? null
                    : () {
                        if (_formkey.currentState!.validate()) {
                          print("KEyingi sahifaga utdi");
                        }
                      },
              ),
            ),
            const Center(
              child:
                  Image(image: AssetImage("assets/images/signInOptions1.png")),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text("Don’t have an account? Register"),
            ),
          ],
        ),
      ),
    ));
  }
}