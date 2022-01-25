import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'horizontal/screen/cover_page.dart';

main() {
  runApp(
    fiveSensesDiary(),
  );
}

class fiveSensesDiary extends StatefulWidget {
  const fiveSensesDiary({Key? key}) : super(key: key);

  @override
  State<fiveSensesDiary> createState() => _fiveSensesDiaryState();
}

class _fiveSensesDiaryState extends State<fiveSensesDiary> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "FiveSensesDiary",
      home: CoverPage(),
    );
  }
}
