import 'package:flutter/material.dart';

class TagPage extends StatelessWidget {
  const TagPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('検索タグ'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(),
            Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 30),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('タグ追加'),
                  style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
                )),
            ElevatedButton(
              onPressed: () {},
              child: Text('書き直す'),
              style: ElevatedButton.styleFrom(primary: Colors.amber),
            )
          ],
        ),
      ),
    );
  }
}
