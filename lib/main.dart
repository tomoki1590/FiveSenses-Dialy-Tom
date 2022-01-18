import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'home_screen.dart';

Future<void> main() async {
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight])
      .then((_) => {
            runApp(
              const ProviderScope(child: fiveSensesDiary()),
            )
          });
}

class fiveSensesDiary extends StatelessWidget {
  const fiveSensesDiary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FiveSensesDiary",
      home: HomeScreen(),
    );
  }
}
