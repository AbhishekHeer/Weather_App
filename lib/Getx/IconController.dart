import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

class IconController extends GetxController {
  RxList icons = [].obs;
  Future<void> fetch() async {
    final String response =
        await rootBundle.loadString('Assets/json/icon.json');
    final url = await jsonDecode(response);

    icons = url['icon'].obs;
  }
}
