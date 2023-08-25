import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

pickImage(ImageSource sourse) async {
  final ImagePicker _imagePicker = ImagePicker();
  XFile? _file = await _imagePicker.pickImage(source: sourse);
  if (_file != null) {
    return await _file.readAsBytes();
  }
}

showSnackBar(
  String content,
  BuildContext context,
) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(content)));
}
