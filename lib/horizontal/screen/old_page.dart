import 'package:flutter/material.dart';

class OldPage extends StatelessWidget {
  const OldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
      appBar: AppBar(
        title: Text('閲覧ページ'),
      ),
      body: Column(
        children: [
          Text('閲覧データをここに表示'),
          RadioListTile(
              title: Text('味覚'),
              value: 'taste',
              groupValue: choseValue,
              onChanged: null),
          RadioListTile(
              title: Text('触覚'),
              value: 'hand',
              groupValue: choseValue,
              onChanged: null),
          RadioListTile(
              title: Text('嗅覚'),
              value: 'nose',
              groupValue: choseValue,
              onChanged: null),
          RadioListTile(
              title: Text('聴覚'),
              value: 'ear',
              groupValue: choseValue,
              onChanged: null),
          DropdownButton(items: [
            DropdownMenuItem(child: Text('味覚')),
          ], value: null, onChanged: itemOnChange)
        ],
      ),
    );
  }
}
