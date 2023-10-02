import 'package:flutter/material.dart';
import 'package:mobile_application/auth_page.dart';
//import 'package:mobile_application/screens/onboarding_screen.dart';
//import 'package:mobile_application/signIn/sign_in.dart';
//import 'package:mobile_application/signUp/sign_up.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ON BOARDING',
      theme: ThemeData.light(useMaterial3: true),
      home: const AuthPage()
    );
  }
}