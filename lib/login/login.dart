import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../horizontal/screen/cover_page.dart';
import 'signin.dart';

class Login extends ConsumerWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
TextEditingController mailController = TextEditingController();
TextEditingController passController = TextEditingController();
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
                                builder: (context) =>const CoverPage()));
                      },
                      child:const Text('ログイン')),
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
                              Navigator.push(
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
