import 'package:app1/widget/app_constant.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'pages/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = publishableKey;
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCGvidJj_tMBe1CU7_HQdNqFAGFvh2dDlM",
      appId: "1:337110290101:android:649bc4cd0c752b3faf38fc",
      messagingSenderId: "337110290101",
      projectId: "grocery-65d0b",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
