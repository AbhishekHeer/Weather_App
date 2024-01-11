import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/Button/button.dart';
import 'package:weather_app/Getx/buttonController.dart';
import 'package:weather_app/Screen/homepage.dart';

class StateorCity extends StatefulWidget {
  const StateorCity({super.key});

  @override
  State<StateorCity> createState() => _StateorCityState();
}

final userlocation = TextEditingController();

ButtonController colors = Get.put(ButtonController());

class _StateorCityState extends State<StateorCity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: Get.height * .2, bottom: Get.height * .02),
              child: Center(
                  child: Icon(
                CupertinoIcons.location_solid,
                size: Get.width * .2,
              )),
            ),
            Center(
              child: Text(
                'Weather Checker !!',
                style: GoogleFonts.poppins(fontSize: Get.width * .05),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: Get.height * .05, horizontal: Get.width * .05),
              child: SearchBar(
                hintText: 'Enter Location To Check Weather',
                controller: userlocation,
                trailing: [
                  IconButton(
                    onPressed: () {
                      colors.cleartext(userlocation);
                    },
                    icon: const Icon(Icons.clear),
                  ),
                ],
                onChanged: (value) {
                  if (userlocation.text.isEmpty) {
                    colors.check(true);
                  } else {
                    colors.check(false);
                  }
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: Get.height * .1),
              child: button('Enter', () {
                if (userlocation.text.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Homepage(
                              locaton: userlocation.text
                                  .trim()
                                  .toLowerCase()
                                  .toString(),
                            )),
                  );
                  Get.snackbar('Welcome', 'You choose ${userlocation.text}');
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      duration: Duration(seconds: 2),
                      backgroundColor: Colors.red,
                      content: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Location is Empty'),
                          Icon(Icons.error),
                        ],
                      )));
                }
              }, colors.click.value),
            )
          ],
        ),
      ),
    ));
  }
}
