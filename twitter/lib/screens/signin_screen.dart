import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:twitter/screens/forgot_password_screen.dart';
import 'package:twitter/screens/home_screen.dart';
import 'package:twitter/screens/signup_screen.dart';

import '../widgets/entry_field.dart';
import '../widgets/flat_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: ListView(
            children: [
              const Center(
                child: Text(
                  'Sign In',
                  style: const TextStyle(
                      fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
              ),
              Image.network(
                'http://assets.stickpng.com/images/580b57fcd9996e24bc43c53e.png',
                width: 80,
                height: 80,
              ),
              CustomEntryField(
                hint: "enter email",
                isPassword: false,
                controller: _emailController,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                ),
              ),
              CustomEntryField(
                hint: "enter Password",
                isPassword: false,
                controller: _passwordController,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
              ),
              CustomFlatButton(
                label: "Submit",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
              ),
              CustomFlatButton(
                label: "Sign up",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUp()),
                  );
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                ),
              ),
              CustomFlatButton(
                label: "Forget Password",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgetPassword()),
                  );
                },
              ),

              // List of widgets here
            ],
          ),
        ),
      ),
    );
  }
}
