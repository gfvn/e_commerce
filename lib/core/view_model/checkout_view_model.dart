import 'package:e_commerce/shared/constants/constants.dart';
import 'package:e_commerce/view/checkout/finish_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckOutViewModel extends GetxController {
  int _processIndex = 0;
  int get processIndex => _processIndex;
  Pages get pages => _pages;
  Pages _pages = Pages.DeliveryTime;

  Color getColor(int index) {
    if (index == _processIndex) {
      return inProgressColor;
    } else if (index < _processIndex) {
      return Colors.green;
    } else {
      return todoColor;
    }
  }

  void changePage() {
    _processIndex++;
    if (_processIndex == 1) {
      _pages = Pages.AddAddress;
    } else if (_processIndex == 2) {
      _pages = Pages.Summary;
    } else if (_processIndex == 3) {
      Get.to(const FinishView());
    };
  }
}
