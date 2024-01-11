import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/weather.dart';
import 'package:weather_app/Screen/todayweather.dart';
import 'package:weather_app/const.dart';

class Homepage extends StatefulWidget {
  final String? locaton;
  const Homepage({super.key, required this.locaton});

  @override
  State<Homepage> createState() => _HomepageState();
}

final WeatherFactory weather = WeatherFactory(api_key);
Weather? eather;

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    weather
        .currentWeatherByCityName(widget.locaton ?? 'Jalandhar')
        .then((value) {
      setState(() {
        eather = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(eather?.areaName ?? ""),
          centerTitle: true,
        ),
        body: eather != null
            ? SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: Get.width,
                      height: Get.height * .45,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(97, 198, 190, 190),
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(Get.width * .1))),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: Get.height * .06),
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  eather!.temperature.toString(),
                                  style: GoogleFonts.poltawskiNowy(
                                      fontWeight: FontWeight.w800,
                                      fontSize: Get.width * .06),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: Get.height * .01),
                            child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    Text(
                                      'Feel Like ',
                                      style: GoogleFonts.niramit(
                                          fontSize: Get.width * .03),
                                    ),
                                    Text(
                                      eather!.tempFeelsLike.toString(),
                                      style: GoogleFonts.poltawskiNowy(
                                          fontWeight: FontWeight.w600,
                                          fontSize: Get.width * .04),
                                    ),
                                  ],
                                )),
                          ),
                          Container(
                            height: Get.height * .22,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "http://openweathermap.org/img/wn/${eather?.weatherIcon}@4x.png",
                                        scale: Get.width * .00000001))),
                          ),
                          Text(
                            eather!.weatherMain.toString(),
                            style: GoogleFonts.abrilFatface(
                              fontWeight: FontWeight.w800,
                              fontSize: Get.width * .05,
                              letterSpacing: Get.width * .01,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Get.width * .05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: Get.width * .26,
                            height: Get.height * .05,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 181, 127, 191),
                                borderRadius:
                                    BorderRadius.circular(Get.width * .05)),
                            child: Center(
                              child: Text(
                                'Today',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                        height: Get.height * .3,
                        width: Get.width,
                        child: Today(
                          wind: eather!.windSpeed.toString(),
                          cloudness: eather!.cloudiness.toString(),
                          pressure: eather!.pressure.toString(),
                          uv: eather!.cloudiness.toString(),
                          humidity: eather!.humidity.toString(),
                        )),
                  ],
                ),
              )
            : const Center(
                child: CircularProgressIndicator(),
              ));
  }
}
