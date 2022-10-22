import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:dio/dio.dart';
import 'package:vigenesia/Constant/Const.dart';
// import 'package:vigenesia/Models/Login_Model.dart';
import 'package:vigenesia/Screens/MainScreens.dart';
import 'package:vigenesia/Screens/Register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  // Future<LoginModels> postLogin(String email, String password) async {
  //   var dio = Dio();
  //   String baseurl = url;

  //   Map<String, dynamic> data = {"email": email, "password": password};

  //   try {
  //     final response = await dio.post("$baseurl/vigenesia/api/login/",
  //         data: data,
  //         options: Options(headers: {'Content-type': 'application/json'}));

  //     print("Respon -> ${response.data} + ${response.statusCode}");

  //     if (response.statusCode == 200) {
  //       final loginModel = LoginModels.fromJson(response.data);
  //       return loginModel;
  //     }
  //   } catch (e) {
  //     print("Failed To Lead $e");
  //   }
  // }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'LOGIN VIGENESIA',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 20),
                Center(
                  child: Form(
                      child: Container(
                    width: MediaQuery.of(context).size.width / 2.9,
                    child: Column(
                      children: [
                        FormBuilderTextField(
                          name: "Email",
                          controller: emailController,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 10),
                              border: OutlineInputBorder(),
                              labelText: "Email"),
                        ),
                        SizedBox(height: 20),
                        FormBuilderTextField(
                          name: "Password",
                          controller: passwordController,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 10),
                              border: OutlineInputBorder(),
                              labelText: "Password"),
                        ),
                        SizedBox(height: 20),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Dont Have Account ? ',
                                style: TextStyle(color: Colors.black54),
                              ),
                              TextSpan(
                                  text: 'Sign Up',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                          context,
                                          new MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  new Register()));
                                    },
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blueAccent)),
                            ],
                          ),
                        ),
                        SizedBox(height: 40),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MainScreens()));
                            },
                            child: Text('Sign In'),
                          ),
                        )
                      ],
                    ),
                  )),
                )
              ],
            )),
          ),
        ),
      ),
    );
  }
}
