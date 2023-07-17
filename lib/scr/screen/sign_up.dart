
import 'package:flutter/material.dart';

import 'code_4.dart';
import 'home.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();

}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> formKey2 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: formKey2,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/image/undraw_city_life_gnpr 1.png"),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: RichText(
                  text: const TextSpan(
                      children: [
                        TextSpan(
                            text: "Creat your",
                            style: TextStyle(fontSize: 28, color: Color(
                                0xFF252B5C))),
                        TextSpan(
                          text: " account",
                          style: TextStyle(color: Color(0xFF1F4C6B),
                              fontSize: 28,
                              fontWeight: FontWeight.w600),
                        ),
                      ]
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25, bottom: 30),
                child: Text(
                    "quis nosturud exercitation ullamco laboris nisi ut"),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Full name",
                    suffixIcon: Icon(Icons.person_outline),

                  ),
                  validator: (value) {
                    if (value!.length > 3) {} else {
                      return "Invalid Password";
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Email",
                    suffixIcon: Icon(Icons.email),
                  ),
                  validator: (value) {
                    bool regex = RegExp(r"^[a-zA-Z0-9]{3,}@gmail.[a-z]{3,}")
                        .hasMatch(value!);
                    if (regex!) {} else {
                      return "Invalid Password";
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password",
                    suffixIcon: Icon(Icons.lock),
                  ),
                  validator: (value) {
                    if (value!.length > 8) {} else {
                      return "Invalid Password";
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Terms of service"),
                    Text("Show password"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 30, top: 40),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightGreen,
                      ),
                      onPressed: () {
                        if (formKey2.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => Code4(),
                            ),
                          );
                        } else {
                          print("Error Login");
                        };
                      },
                      child: Text("Register")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}