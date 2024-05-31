import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiplatorm/screens/login_screen.dart';
import 'package:multiplatorm/services/auth/login_or_register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.ubuntuTextTheme(),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
          useMaterial3: true,
        ),
        home: LoginOrRegister());
  }
}
