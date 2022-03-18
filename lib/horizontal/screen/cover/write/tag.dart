import 'package:flutter/material.dart';

class TagPage extends StatelessWidget {
  List<DropdownMenuItem<int>> _menuItems = [];
  String choseValue = 'taste';
  void itemOnChange(value) {
    // _menuItems.add(DropdownMenuItem(value: '10', child: Text('味覚')));
    // _menuItems.add(DropdownMenuItem(value: 'ear1', child: Text('嗅覚')));
    // _menuItems.add(DropdownMenuItem(value: 'hand1', child: Text('触覚')));
    _menuItems = [DropdownMenuItem(value: 10, child: Text(10.toString()))];
    _menuItems = [DropdownMenuItem(value: 1, child: Text(1.toString()))];
    _menuItems = [DropdownMenuItem(value: 12, child: Text(12.toString()))];
  }

  TagPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                const Text('どのことについて書くか選択してください'),
                DropdownButton(items: const [
                  DropdownMenuItem(child: Text('味覚')),
                ], value: null, onChanged: itemOnChange)
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(),
            ),
            FloatingActionButton.extended(
              onPressed: () {
                DefaultTabController.of(context)!.animateTo(2);
              },
              label:  Text('追加'),
            )
          ],
        ),
      ),
    );
  }
}
