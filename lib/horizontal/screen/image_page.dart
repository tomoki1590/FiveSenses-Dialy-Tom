import 'dart:io';

import 'package:five_senses_dialy/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class ImagePage extends ConsumerWidget {
  ImagePage({Key? key}) : super(key: key);
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getImage = ref.watch(imageDataProvider);
    final getImageNotifier = ref.watch(imageDataProvider.notifier);
    return Scaffold(
        body: SingleChildScrollView(
          child: Center(
              child: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  final Picker =
                      await picker.pickImage(source: ImageSource.gallery);
                  if (Picker != null) {
                    getImageNotifier.setImageFile(File(Picker.path));
                  }
                },
                child: Text('アルバムから追加')),
            ElevatedButton(onPressed: () {}, child: Text('カメラから追加')),
            getImage.imageFile == null
                ? Padding(padding: EdgeInsets.all(8.0))
                : Image.file(getImage.imageFile!),
            if (getImage.imageFile != null)
            
              //画像が表示された時に再度画像のとる　表示を変えるのに使用
              const Padding(padding: EdgeInsets.all(1.0)),
            ElevatedButton(onPressed: () {            },child: Text('保存')),
          ],
              ),
            ),
        ));
  }
}
