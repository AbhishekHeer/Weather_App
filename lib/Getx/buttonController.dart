import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ButtonController extends GetxController {
  RxBool click = false.obs;

  check(bool val) async {
    if (val == false) {
      click.value = true;
    } else {
      click.value = false;
    }
  }

  cleartext(TextEditingController text) {
    text.clear();
  }
}
