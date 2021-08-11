import 'package:flutter/material.dart';
import 'package:onboarding_liquid_swipe_animation/constants.dart';

class DataPage {
  final String assetName;
  final List<Color>? color;
  final String title;
  final String paragraph;
  DataPage(
      {required this.assetName,
      this.color,
      required this.title,
      required this.paragraph});

  static List<DataPage> dataPages = [
    DataPage(
      assetName: "assets/icons/manage_tasks.svg", 
      color: [kBlueColor, kBlueLightColor],
      title: "Manage Your Task", 
      paragraph: "Organize all your to do's and projects Color tag them to set priorities and categories."
    ),
    DataPage(
      assetName: "assets/icons/work.svg", 
      color: [kRedColor, kRedLightColor],
      title: "Work On Time", 
      paragraph: "When you're overwhelmed by the amount of work you have on your plate, stop and rethink."
    ),
    DataPage(
      assetName: "assets/icons/reminder.svg", 
      color: [kOrangeColor, kOrangeLightColor],
      title: "Get Reminder On Time", 
      paragraph: "When you encounter 8 small task that takes less than 5 minutes to complete."
    ),
  ];
}
