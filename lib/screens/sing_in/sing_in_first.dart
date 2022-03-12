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

  @override
  Widget build(BuildContext context) {
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
          Form(
            key: _formkey,
            child: Column(
              children: [
                const MyTextFormFild(text: "Username"),
                const MyTextFormFild(text: "Email"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
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
                      print("Qidiruv tizimi: $input");
                    },
                    onTap: () {},
                    validator: (input) {
                      if (input!.isNotEmpty) return "bo'sh bo'lmasligi kerak";
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
            child: ElevatedButton(
              child: const Text("Sign Up"),
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 200,
            child: Image.asset("assets/images/signInOptions.png"),
          ),
          const Center(
            child: Text(
                "By signing up to News24 you are accepting our"),
          ),
          const Center(
            child: Text(
                "Terms & Conditions",style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    ));
  }
}
