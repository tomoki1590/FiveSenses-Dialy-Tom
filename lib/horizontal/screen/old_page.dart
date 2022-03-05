import 'package:five_senses_dialy/horizontal/screen/cover/basic.dart';
import 'package:five_senses_dialy/horizontal/screen/cover/hand_written.dart';
import 'package:five_senses_dialy/horizontal/screen/cover/result.dart';
import 'package:five_senses_dialy/horizontal/screen/cover/tag.dart';
import 'package:five_senses_dialy/horizontal/screen/write.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'cover/image_page.dart';

class OldPage extends ConsumerWidget {
  const OldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<TabInfo> tabs = [
      TabInfo(
        '基本情報',
        Basic(),
      ),
      TabInfo('資料1', TagPage()),
      TabInfo('資料2', ImagePage()),
      TabInfo('手書き', Handwritten()),
      TabInfo('記述', Write()),
      TabInfo('まとめ', Result()),
    ];
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(30.0),
            child: TabBar(
              isScrollable: true,
              labelColor: Colors.black38,
              indicatorColor: Colors.black38,
              tabs: tabs.map((TabInfo tab) {
                return Tab(text: tab.label);
              }).toList(),
            ),
          ),
          title: Text('Tab'),
        ),
        body: TabBarView(
          children: tabs.map((tab) => tab.widget).toList(),
        ),
      ),
    );
  }
}

class TabInfo {
  String label;
  Widget widget;
  TabInfo(this.label, this.widget);
}
