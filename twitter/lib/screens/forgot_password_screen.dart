import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  late TextEditingController _emailController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
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
            'Forget Password',
            style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
          child: ListView(
            children: [
              const Center(
                child: Text(
                  'Forget Password',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 20)),
              const Center(
                child: Text(
                  'enter your email address below to \nreceive password reset instuctions.',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 30)),
              CustomEntryField(
                hint: "Enter email",
                controller: _emailController,
                isPassword: false,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
              ),
              CustomFlatButton(label: "Submit", onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
