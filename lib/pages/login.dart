import 'package:app1/pages/bottomnav.dart';
import 'package:app1/pages/forgotpassword.dart';
import 'package:app1/pages/signup.dart';
import 'package:app1/widget/widget_support.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String email = "", password = "";
  final _formkey = GlobalKey<FormState>();
  TextEditingController useremailcontroller = new TextEditingController();
  TextEditingController userpasswordcontroller = new TextEditingController();

 userLogin() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);

      // Save login status in shared preferences
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('loggedInBefore', true);

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const BottomNav()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
            "User Not Found",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ));
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
            "Wrong Password \n Try Again",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ));
      }
    }
  }


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
                        child: Form(
                          key: _formkey,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                "Login",
                                style: AppWidget.semiboldTextFieldStyle(),
                              ),
                              TextFormField(
                                controller: useremailcontroller,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please enter Email";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    hintText: "Email",
                                    hintStyle:
                                        AppWidget.semiboldTextFieldStyle(),
                                    prefixIcon:
                                        const Icon(Icons.email_outlined)),
                              ),
                              TextFormField(
                                controller: userpasswordcontroller,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please enter password";
                                  }
                                  return null;
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle:
                                        AppWidget.semiboldTextFieldStyle(),
                                    prefixIcon:
                                        const Icon(Icons.lock_outlined)),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                alignment: Alignment.topRight,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ForgotPassword()));
                                  },
                                  child: Text(
                                    "Forgot Password?",
                                    style: AppWidget.LightTextFieldStyle(),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 100,
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
                                  child: Center(
                                    child: GestureDetector(
                                      onTap: () async {
                                        if (_formkey.currentState!.validate()) {
                                          setState(() {
                                            email = useremailcontroller.text;

                                            password =
                                                userpasswordcontroller.text;
                                          });
                                        }
                                        userLogin();
                                      },
                                      child: const Text(
                                        "LOGIN",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()));
                    },
                    child: Text(
                      "Don't have an account? Sign up",
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
