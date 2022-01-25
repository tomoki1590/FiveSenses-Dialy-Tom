import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'member_register.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen[200],
          title: const Text('login'),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MemberRegister()));
                    },
                    child: const Text('会員登録')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    OutlinedButton(onPressed: () {}, child: const Text('ログイン')),
              ),
              OutlinedButton(onPressed: () {}, child: const Text('わかった'))
            ],
          ),
        ));
  }
}
