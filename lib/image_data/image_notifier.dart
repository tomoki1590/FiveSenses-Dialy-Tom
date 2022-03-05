import 'dart:io';

import 'package:five_senses_dialy/image_data/image_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain.dart';

class ImageNotifier extends StateNotifier<ImageData> {
  final Reader _reader;

  ImageNotifier(this._reader) : super(ImageData());

  setImageFile(File imageFile) {
    state = state.copyWith(imageFile: imageFile);
  }

  savaImage(File imageFile) async {
    final domain = Domain();
    await domain.saveDomainImage(imageFile);
  }
}
