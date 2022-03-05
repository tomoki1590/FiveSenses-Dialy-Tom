import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('プレビュー'),
      ),
      bottomSheet: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [ElevatedButton(onPressed: () {}, child: Text('保存'))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('資料１のデータ'),
            Text('選んだ項目とその内容'),
            Text('資料１のデータ'),
            Text('選んだ項目とその内容'),
            Text('資料１のデータ'),
            Text('選んだ項目とその内容'),
            Text('資料１のデータ'),
            Text('選んだ項目とその内容'),
            Text('資料１のデータ'),
            Text('選んだ項目とその内容'),
            Text('資料１のデータ'),
            Text('選んだ項目とその内容'),
            Text('資料１のデータ'),
            Text('選んだ項目とその内容'),
            Text('資料１のデータ'),
            Text('選んだ項目とその内容'),
            Text('資料１のデータ'),
            Text('選んだ項目とその内容'),
            Text('資料１のデータ'),
            Text('選んだ項目とその内容'),
            Image.network(
                'https://www.hiroshima-navi.or.jp/event/uploads/380ea1a6122bed1d348c6bdf80576f951fff9d23.jpg'),
            Image.network(
                'https://www.hiroshima-navi.or.jp/event/uploads/380ea1a6122bed1d348c6bdf80576f951fff9d23.jpg'),
          ],
        ),
      ),
    );
  }
}
