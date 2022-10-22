import 'package:flutter/material.dart';
import 'package:vigenesia/Screens/Login.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
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
                    'Hello Vigenesia',
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
