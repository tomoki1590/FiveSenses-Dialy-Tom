import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Domain {
  Domain();
  static const String NOW_IMG = "nowImg";

  Future saveDomainImage(File imgFile) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    Directory appDic = await getApplicationDocumentsDirectory();

    try {
      final extension = imgFile.path.substring(imgFile.path.lastIndexOf("."));
      String fileName = "picture" + extension;
      String filePath = appDic.path + "/picture" + extension;
      //SharedPreferencesにパスを保存する。
      await preferences.setString(NOW_IMG, fileName);

      File imageFile = File(filePath);
      await imageFile.writeAsBytes(await imageFile.readAsBytes());
      final imgCache = imageCache;
      if (imgCache != null) {
        imgCache.clear();
      }
    } catch (e) {
      print("エラー" + e.toString());
      throw "現画像保存のエラー";
    }
  }
}
