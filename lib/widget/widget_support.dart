import 'package:flutter/material.dart';

class AppWidget {
  static boldTextFieldStyle() { 
    return const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins');
  }
   static HeadlineTextFieldStyle() { 
    return const TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins');
  }
   static LightTextFieldStyle() { 
    return const TextStyle(
        color: Colors.black38,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins');
  }
}
