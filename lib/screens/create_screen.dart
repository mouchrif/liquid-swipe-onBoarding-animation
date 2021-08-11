import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:onboarding_liquid_swipe_animation/models/data_page.dart';
import 'package:onboarding_liquid_swipe_animation/widgets/page_item.dart';

class MainHome extends StatefulWidget {
  //MainHome({Key? key}) : super(key: key);

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  LiquidController? liquidController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    liquidController = LiquidController();
  }

  @override
  Widget build(BuildContext context) {
    return LiquidSwipe(
      positionSlideIcon: 0.9,
      slideIconWidget: Icon(
        Icons.arrow_back_ios,
        color: Colors.white,
      ),
      ignoreUserGestureWhileAnimating: true,
      liquidController: liquidController,
      onPageChangeCallback: (indexPage) {
        setState(() {
          currentPage = indexPage;
        });
      },
      pages: [
        ...DataPage.dataPages.map((page) => PageItem(
          index: DataPage.dataPages.indexOf(page), 
          controller: liquidController,)
        ).toList()
      ],
    );
  }
}


