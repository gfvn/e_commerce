import 'package:e_commerce/shared/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckOutViewModel extends GetxController {
  int processIndex = 0;


  Pages pages = Pages.DeliveryTime;

  Color getColor(int index) {
    if (index == processIndex) {
      return inProgressColor;
    } else if (index < processIndex) {
      return Colors.green;
    } else {
      return todoColor;
    }
  }
}