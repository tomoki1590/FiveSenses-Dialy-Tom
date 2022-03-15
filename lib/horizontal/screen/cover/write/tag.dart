import 'package:flutter/material.dart';

class TagPage extends StatelessWidget {
  const TagPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Text('どのことについて書くか選択してください'),
                DropdownButton(items: null, onChanged: null),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(),
            ),
            FloatingActionButton.extended(
              onPressed: () {
                DefaultTabController.of(context)!.animateTo(2);
              },
              label: Text('写真の追加へ'),
            )
          ],
        ),
      ),
    );
  }
}
