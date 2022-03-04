import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('プレビュー'),
        actions: [ElevatedButton(onPressed: () {}, child: Text('保存'))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('資料１のデータ'),
            Text('選んだ項目とその内容'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  'https://yt3.ggpht.com/ytc/AKedOLQFH8ac-fniuYWIllGwE96rw-w7K5nG8ZeffyDlCg=s900-c-k-c0x00ffffff-no-rj'),
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                    'https://cdn-ak.f.st-hatena.com/images/fotolife/A/Audience091/20200308/20200308182446.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
