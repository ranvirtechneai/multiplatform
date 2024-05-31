// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:multiplatorm/components/button.dart';
import 'package:multiplatorm/components/textfield.dart';
import 'package:multiplatorm/constant/image_strings.dart';
import 'package:multiplatorm/constant/text_string.dart';
import 'package:multiplatorm/screens/registration_screen.dart';

class LoginScreen extends StatefulWidget {
  final void Function() onTap;
  const LoginScreen({super.key, required this.onTap});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //icon
                  Image.asset(chatLogo, scale: 5),
                  //spaced
                  SizedBox(height: 20),

                  //welcome back text
                  Text(welcomeText, style: TextStyle(fontSize: 20)),

                  SizedBox(height: 20),

                  // email textfield
                  CTextField(
                    controller: emailController,
                    hintText: 'EMail',
                    obscureText: false,
                  ),

                  SizedBox(height: 10),

                  // password textfield
                  CTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: false,
                  ),

                  SizedBox(height: 20),

                  // login button
                  CButton(onTap: () {}, text: 'Sign In'),

                  SizedBox(height: 20),
                  // not a member text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Not a member?"),
                      SizedBox(width: 4),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: Text('Register',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
