import 'package:firebase_auth/firebase_auth.dart';
import 'package:five_senses_dialy/login/signin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../horizontal/screen/cover_page.dart';



class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController mailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            width: 300,
            child: Column(
              children: [
                TextField(
                  controller: mailController,
                  decoration: InputDecoration(hintText: 'mail'),
                ),
                TextField(
                  controller: passController,
                  decoration: InputDecoration(hintText: 'pass'),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                      onPressed: () async {

          
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>CoverPage ()));
                        
                        },
                    
                      child: Text('ログイン')),
                ),
                RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [
                      TextSpan(text: '新規の方は'),
                      TextSpan(
                          text: 'こちら',
                          style: TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignIn()));
                            })
                    ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
