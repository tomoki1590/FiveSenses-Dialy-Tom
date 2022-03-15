import 'package:flutter/material.dart';

class Handwritten extends StatelessWidget {
  const Handwritten({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('あなたの感じたものを現実化してみましょう'),
          Text('見た物を書くのではなく感情などに色をつけてみましょう')
        ],
      ),
    );
  }
}
