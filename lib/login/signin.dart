import 'dart:ui';
import 'package:five_senses_dialy/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignIn extends ConsumerWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController mailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title:const Text('新規登録'),
        ),
        body: Container(
          child: Center(
            child: SizedBox(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      TextField(
                        controller:nameController,
                        decoration: InputDecoration(hintText:'name'),),
                      TextField(
                          controller: mailController,
                          decoration: InputDecoration(hintText: 'mail')),
                      TextField(
                          controller: passController,
                          decoration: InputDecoration(hintText: 'pass')),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) =>const Login()));
                            },
                            child: Text('登録')),
                      )
                    ],
                  ),
                )),
          ),
        ));
  }
}
