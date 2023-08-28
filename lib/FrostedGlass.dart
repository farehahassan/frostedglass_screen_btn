// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedGlass extends StatelessWidget {
  double thewidth;
  double theheight;
  String thechild;
  FrostedGlass({
    Key? key,
    required this.thewidth,
    required this.theheight,
    required this.thechild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("HEllo world");
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          // decoration: BoxDecoration(
          //     border: Border.all(
          //         color: Colors.white,
          //         strokeAlign: BorderSide.strokeAlignCenter)),
          width: thewidth,
          height: theheight,
          child: Stack(children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
              child: Text("hello"),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.white.withOpacity(0.15),
                  Colors.white.withOpacity(0.10)
                ], begin: Alignment.topLeft, end: Alignment.topRight),
                // color: Color.fromARGB(53, 255, 255, 255).withOpacity(0.3),
                // borderRadius: BorderRadius.circular(10),
              ),
            ),
            Center(
              child: Text(
                thechild,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
