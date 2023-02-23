import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:twitter/screens/signin_screen.dart';

import '../widgets/entry_field.dart';
import '../widgets/flat_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmController;
  late GlobalKey _formKey;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _nameController = TextEditingController();
    _confirmController = TextEditingController();
    _formKey = GlobalKey();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _confirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.blueAccent, //change your color here
          ),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: const Text(
            'Sign Up',
            style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: ListView(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 88,
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
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
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                        ),
                      ),
                      CustomEntryField(
                        hint: "enter name",
                        isPassword: false,
                        controller: _nameController,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                        ),
                      ),
                      CustomEntryField(
                        hint: "enter email",
                        isPassword: false,
                        controller: _emailController,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
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
                      CustomEntryField(
                        hint: "Confirm Password",
                        isPassword: false,
                        controller: _confirmController,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                        ),
                      ),
                      CustomFlatButton(
                        label: "Submit",
                        onPressed: () {},
                      ),

                      // List of widgets here
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
