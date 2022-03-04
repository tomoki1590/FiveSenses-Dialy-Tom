import 'dart:io';

import 'package:five_senses_dialy/image_data/image_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import 'image_data/image_notifier.dart';

final imageDataProvider = StateNotifierProvider 
<ImageNotifier, ImageData>
((ref)=> ImageNotifier(ref.read)
); 
