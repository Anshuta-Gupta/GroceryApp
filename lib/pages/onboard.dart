import 'dart:async';
import 'package:flutter/material.dart';
import 'package:app1/pages/content_model.dart';
import 'package:app1/pages/signup.dart';
import 'package:app1/widget/widget_support.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int currentIndex = 0;
  late PageController _controller;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
    _startTimer();
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer.cancel(); 
    super.dispose();
  }

  void _startTimer() {
    
    const Duration autoPageDuration = Duration(seconds: 5);
    _timer = Timer.periodic(autoPageDuration, (timer) {
      if (currentIndex < contents.length - 1) {
        _controller.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 10.0),
                        Image.asset(                                                                                       
                          contents[i].image,
                          height: 450,
                          width: MediaQuery.of(context).size.width / 1.5,                     
                          fit: BoxFit.fill,                                                                                              
                        ),
                        const SizedBox(height: 30.0),
                        Text(
                          contents[i].title,
                          style: AppWidget.semiboldTextFieldStyle(),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          contents[i].description,
                          style: AppWidget.lightTextFieldStyle(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            contents.length,
                            (index) => buildDot(index, context),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (currentIndex == contents.length - 1) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUp(),
                                ),
                              );
                            } else {
                              _controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color.fromARGB(255, 85, 60, 60),
                            ),
                            height: 60,
                            margin: const EdgeInsets.all(40),
                            width: double.infinity,
                            child: Center(
                              child: Text(
                                currentIndex == contents.length - 1
                                    ? "Start"
                                    : "Next",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),                                                                                                
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 18 : 7,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.black38,
      ),
    );
  }
}
