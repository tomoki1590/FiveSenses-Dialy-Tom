import 'package:flutter/material.dart';

class TabNewPage extends StatelessWidget {
  const TabNewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('newTab'),
            ),
            body: DefaultTabController(
                length: 6,
                child: Column(
                  children: const [
                    TabBar(
                        isScrollable: true,
                        labelColor: Colors.black38,
                        indicatorColor: Colors.black38,
                        tabs: [
                          Tab(
                            text: '基本情報',
                          ),
                          Tab(
                            text: '資料1',
                          ),
                          Tab(
                            text: '資料2',
                          ),
                          Tab(
                            text: '手書き',
                          ),
                          Tab(
                            text: '記述',
                          ),
                          Tab(
                            text: 'まとめ',
                          )
                        ])
                  ],
                ))));
  }
}
