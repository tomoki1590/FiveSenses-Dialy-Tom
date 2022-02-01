import 'package:five_senses_dialy/horizontal/screen/tag.dart';
import 'package:flutter/material.dart';

class BasicData extends StatelessWidget {
  const BasicData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('基本情報'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    color: Colors.green,
                    width: 5.0,
                  ),
                ),
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.green,
                ),
                labelText: 'タイトル',
                floatingLabelStyle: const TextStyle(fontSize: 15),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: Colors.green[100]!,
                    width: 5.0,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    color: Colors.green,
                    width: 5.0,
                  ),
                ),
                labelStyle: const TextStyle(
                  fontSize: 15,
                  color: Colors.green,
                ),
                labelText: '作成日',
                hintText: 'フォームをタップして日付を選択してください',
                floatingLabelStyle: const TextStyle(fontSize: 15),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: Colors.green[100]!,
                    width: 5.0,
                  ),
                ),
              ),

              ///TODO
              onTap: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    color: Colors.green,
                    width: 5.0,
                  ),
                ),
                labelStyle: const TextStyle(
                  fontSize: 15,
                  color: Colors.green,
                ),
                labelText: '作成チーム名',
                floatingLabelStyle: const TextStyle(fontSize: 15),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: Colors.green[100]!,
                    width: 5.0,
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: FloatingActionButton.extended(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TagPage()));
              },
              label: Text('検索タグを書く'),
            ),
          )
        ],
      ),
    );
  }
}
