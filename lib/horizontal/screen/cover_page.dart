import 'package:five_senses_dialy/horizontal/screen/new_page.dart';
import 'package:five_senses_dialy/horizontal/screen/old_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CoverPage extends ConsumerWidget {
  const CoverPage({Key? key}) : super(key: key);

  final String category = '五感観察日記';
  final String tittle = 'FiveSenses';
  final String newData = '新しく記入';
  final String data = 'これまでの作品';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    print('横幅の論理ピクセル:$screenwidth');
    print('縦幅の論理ピクセル：$screenheight');
    return Center(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              child: Image.network(
                  'https://ic4-a.wowma.net/mis/gr/135/image.wowma.jp/13105308/20467-1.jpg'),
              top: 10,
            ),

            //具体的な位置を決めれる
            Positioned(
              child: Text(category),
              top: 30,
              left: 10,
            ),
            Positioned(
              child: Text(tittle),
              top: 150,
              left: 150,
            ),
            Positioned(
              child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NewPage()));
                  },
                  child: Text(newData)),
              top: 300,
              right: 250,
            ),
            Positioned(
              child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OldPage()));
                  },
                  child: Text(data)),
              top: 300,
              left: 250,
            ),
          ],
        ),
      ),
    );
  }
}
