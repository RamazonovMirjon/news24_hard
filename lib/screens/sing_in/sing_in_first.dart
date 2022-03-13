import 'package:flutter/material.dart';
import 'package:news24/widgets/my_text_form_fild.dart';

class SignInFirst extends StatefulWidget {
  SignInFirst({Key? key}) : super(key: key);

  @override
  State<SignInFirst> createState() => _SignInFirstState();
}

class _SignInFirstState extends State<SignInFirst> {
  final _formkey = GlobalKey<FormState>();

  Icon icon = const Icon(Icons.remove_red_eye_outlined);
  bool passwordBoll = true, iconboll = true;

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
                          _controller3;
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
            const SizedBox(height: 50),
            Container(
              height: 60,
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
              child: ElevatedButton(
                child: const Text("Sign Up"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: _controller3.text.isEmpty
                    ? null
                    : () {
                        if (_formkey.currentState!.validate()) {
                          print("KEyingi sahifaga utdi");
                        }
                      },
              ),
            ),
            Center(
              child: Stack(
                children: [
                  const Image(
                      image: AssetImage("assets/images/signInOptions.png")),
                  Positioned(
                      left: 0,
                      bottom: 0,
                      child: InkWell(
                        child: const SizedBox(
                          height: 45,
                          width: 45,
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, "/singin2");
                        },
                      ))
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text("By signing up to News24 you are accepting our"),
            ),
            Center(
              child: InkWell(
                child: const Text(
                  "Terms & Conditions",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
