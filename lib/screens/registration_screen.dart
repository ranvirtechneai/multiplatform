import 'package:flutter/material.dart';
import 'package:multiplatorm/components/button.dart';
import 'package:multiplatorm/components/textfield.dart';
import 'package:multiplatorm/constant/image_strings.dart';
import 'package:multiplatorm/screens/login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  final void Function() onTap;
  const RegistrationScreen({super.key, required this.onTap});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //icon
              Image.asset(chatLogo, scale: 5),
              //spaced
              const SizedBox(height: 20),

              //welcome back text
              const Text("Lets Create an Account For You",
                  style: TextStyle(fontSize: 20)),

              const SizedBox(height: 20),

              // email textfield
              CTextField(
                controller: emailController,
                hintText: 'EMail',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              CTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // confirm password
              CTextField(
                controller: emailController,
                hintText: 'Confirm Password',
                obscureText: true,
              ),

              const SizedBox(height: 20),

              // login button
              CButton(onTap: () {}, text: 'Sign Up'),

              const SizedBox(height: 20),

              // not a member text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("already a member?"),
                  const SizedBox(width: 4),
                  GestureDetector(
                      onTap: widget.onTap,
                      child: const Text('Login',
                          style: TextStyle(fontWeight: FontWeight.bold)))
                ],
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
