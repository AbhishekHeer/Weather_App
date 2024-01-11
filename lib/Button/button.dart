import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Widget button(String text, VoidCallback onpressed, bool color) {
  return InkWell(
    onTap: onpressed,
    child: Container(
      height: Get.height * .05,
      width: Get.width * .8,
      decoration: BoxDecoration(
          color: color
              ? const Color.fromARGB(255, 161, 185, 224)
              : const Color.fromARGB(255, 212, 189, 189),
          borderRadius: BorderRadius.circular(Get.width * .03)),
      child: Center(
          child: Text(
        text,
        style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500, fontSize: Get.width * .04),
      )),
    ),
  );
}
