import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_liquid_swipe_animation/models/data_page.dart';
import 'package:onboarding_liquid_swipe_animation/widgets/custom_shape.dart';

import '../constants.dart';

class SecondPage extends StatelessWidget {
  SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double width = size.width;
    return Stack(
      children: [
        Positioned(
          top: kDefaultPadding * 3,
          left: 0,
          right: 0,
          child: Container(
            height: size.height * 0.26,
            child: SvgPicture.asset(
              DataPage.dataPages[1].assetName,
            ),
          ),
        ),
        Center(
          child: CustomPaint(
            size: Size(width,(width * 0.5).toDouble()), 
            //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: RPSCustomPainter(DataPage.dataPages[1].color!),
          ),
        ),
        Positioned(
          top: kDefaultPadding,
          right: kDefaultPadding / 2,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "skip".toUpperCase(),
              style: GoogleFonts.nunito(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w800),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: size.height * 0.125,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
            ),
            height: size.height * 0.25,
            //color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  DataPage.dataPages[1].title,
                  style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
                Text(
                  DataPage.dataPages[1].paragraph,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: size.height * 0.125 - kDefaultPadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                3,
                (index) => Row(
                  children: [
                    Container(
                      height: kDefaultPadding / 2.5,
                      width: kDefaultPadding * 1.8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(29),
                      ),
                    ),
                    SizedBox(
                      width: kDefaultPadding / 2,
                    ),
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
