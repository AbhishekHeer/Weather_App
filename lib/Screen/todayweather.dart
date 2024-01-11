import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Today extends StatefulWidget {
  final String wind;
  final String cloudness;
  final String pressure;
  final String uv;
  final String humidity;
  const Today(
      {super.key,
      required this.wind,
      required this.cloudness,
      required this.pressure,
      required this.uv,
      required this.humidity});

  @override
  State<Today> createState() => _TodayState();
}

class _TodayState extends State<Today> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // first row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: Get.width * .45,
              height: Get.height * .08,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 175, 179, 181),
                borderRadius: BorderRadius.circular(Get.width * .03),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                          left: Get.width * .03, right: Get.width * .03),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: Get.width * .04,
                        child: const Icon(
                          CupertinoIcons.wind,
                          color: Colors.black,
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: Get.height * .017),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Wind Speed',
                          style: GoogleFonts.poppins(
                            fontSize: Get.width * .03,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "${widget.wind}km/h",
                          style: GoogleFonts.poppins(
                            fontSize: Get.width * .03,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: Get.width * .45,
              height: Get.height * .08,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 175, 179, 181),
                borderRadius: BorderRadius.circular(Get.width * .03),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                          left: Get.width * .03, right: Get.width * .03),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: Get.width * .04,
                        child: const Icon(
                          CupertinoIcons.cloud,
                          color: Colors.black,
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: Get.height * .017),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cloudness',
                          style: GoogleFonts.poppins(
                            fontSize: Get.width * .03,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          widget.cloudness,
                          style: GoogleFonts.poppins(
                            fontSize: Get.width * .03,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),

        //second row

        Padding(
          padding: EdgeInsets.symmetric(vertical: Get.width * .03),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: Get.width * .45,
                height: Get.height * .08,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 175, 179, 181),
                  borderRadius: BorderRadius.circular(Get.width * .03),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                            left: Get.width * .03, right: Get.width * .03),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: Get.width * .04,
                          child: const Icon(
                            CupertinoIcons.rays,
                            color: Colors.black,
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: Get.height * .017),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'UV Rays',
                            style: GoogleFonts.poppins(
                              fontSize: Get.width * .03,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            widget.uv,
                            style: GoogleFonts.poppins(
                              fontSize: Get.width * .03,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: Get.width * .45,
                height: Get.height * .08,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 175, 179, 181),
                  borderRadius: BorderRadius.circular(Get.width * .03),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                            left: Get.width * .03, right: Get.width * .03),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: Get.width * .04,
                          child: const Icon(
                            CupertinoIcons.drop,
                            color: Colors.black,
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: Get.height * .017),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Humidity',
                            style: GoogleFonts.poppins(
                              fontSize: Get.width * .03,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "${widget.humidity}%",
                            style: GoogleFonts.poppins(
                              fontSize: Get.width * .03,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
