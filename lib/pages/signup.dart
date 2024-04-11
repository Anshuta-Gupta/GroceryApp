import 'package:app1/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widget/widget_support.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Color.fromARGB(255, 131, 96, 96),
                  Color.fromARGB(255, 85, 60, 60)
                ])),
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
          ),
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      "images/logo.jpg",
                      height: MediaQuery.of(context).size.height / 10,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      height: MediaQuery.of(context).size.height / 2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              "SignUp",
                              style: AppWidget.semiboldTextFieldStyle(),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: "Name",
                                  hintStyle: AppWidget.semiboldTextFieldStyle(),
                                  prefixIcon:
                                      const Icon(Icons.person_outlined)),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: "Email",
                                  hintStyle: AppWidget.semiboldTextFieldStyle(),
                                  prefixIcon: const Icon(Icons.email_outlined)),
                            ),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle: AppWidget.semiboldTextFieldStyle(),
                                  prefixIcon: const Icon(Icons.lock_outlined)),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const SizedBox(
                              height: 80,
                            ),
                            Material(
                              elevation: 5,
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                width: 200,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 85, 60, 60),
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Center(
                                  child: Text(
                                    "SIGN UP",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LogIn()));
                    },
                    child: Text(
                      "Already have an account? Login",
                      style: AppWidget.semiboldTextFieldStyle(),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
