import 'dart:async';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class JustWidgets {
  static const MethodChannel _channel = MethodChannel('just_widgets');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static showToast({required message, Toast duration = Toast.LENGTH_SHORT}) {
    Fluttertoast.showToast(msg: message, toastLength: duration);
  }
}
