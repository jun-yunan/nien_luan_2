import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum SnackBarStyle { error, success }

void showSnackbar(
    {required String message,
    SnackBarStyle? style = SnackBarStyle.error,
    Duration? duration}) {
  switch (style) {
    case SnackBarStyle.success:
      Get.snackbar(
        "Sucesss",
        message,
        icon: Icon(
          Icons.done,
          size: 30,
          color: Colors.green[800],
        ),
        duration: duration ?? const Duration(seconds: 3),
        backgroundColor: Colors.green[100],
        colorText: Colors.green[800],
        messageText: Text(
          message,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.green[800],
          ),
        ),
      );
      break;
    default:
      Get.snackbar(
        'Error',
        message,
        backgroundColor: Colors.red,
        icon: const Icon(
          Icons.error,
          size: 30,
          color: Colors.white,
        ),
        colorText: Colors.white,
        // Thay đổi vị trí của Snackbar tùy theo nhu cầu
      );
      break;
  }
}
