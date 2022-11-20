// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Future<XFile?> pickImage(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
            onPressed: () async {
              final picker = ImagePicker();
              final file = await picker.pickImage(source: ImageSource.gallery);
              Navigator.of(context).pop(file);
            },
            child: const Text("Gallery"),
          ),
          TextButton(
            onPressed: () async {
              final picker = ImagePicker();
              final file = await picker.pickImage(source: ImageSource.camera);
              Navigator.of(context).pop(file);
            },
            child: const Text("Photo"),
          ),
        ],
      ),
    ),
  );
}
