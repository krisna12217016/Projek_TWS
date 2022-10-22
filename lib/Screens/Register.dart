import 'package:flutter/material.dart';
import 'package:vigenesia/Screens/Login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 2.9,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Register Your Account',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
