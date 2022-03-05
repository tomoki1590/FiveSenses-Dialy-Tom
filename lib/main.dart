import 'package:firebase_core/firebase_core.dart';
import 'package:five_senses_dialy/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'horizontal/screen/cover_page.dart';

main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ProviderScope(child: fiveSensesDiary()),
  );
}

class fiveSensesDiary extends StatelessWidget {
  const fiveSensesDiary({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FiveSensesDiary",
      home: CoverPage(),
    );
  }
}
