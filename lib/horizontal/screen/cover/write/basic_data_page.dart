import 'package:flutter/material.dart';

class BasicData extends StatelessWidget {
  const BasicData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    color: Colors.red,
                    width: 5.0,
                  ),
                ),
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
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
          Container(
            child: FloatingActionButton.extended(
              onPressed: () {
                DefaultTabController.of(context)!.animateTo(1);
              },
              label: Text('本文作成'),
            ),
          )
        ],
      ),
    );
  }
}
