import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("メールアドレスでのログインはこちら"),
          ),
          TextField(decoration: InputDecoration(hintText: 'メールアドレス')),
          TextField(
            decoration: InputDecoration(hintText: 'パスワード'),
          ),
          RichText(text: TextSpan(
            style:TextStyle(color:Colors.black),
            children: [
              TextSpan(
text:'新規利用者は',
              ),
              TextSpan(
                text: 'こちらから',style: TextStyle(color:Colors.amber),recognizer: TapGestureRecognizer()..onTap=(){}         
                )
  
            ]
          )
          ),
          SignInButton(Buttons.Google, onPressed: () {})
        ],
      ),
    );
  }
}
