import 'package:e_commerce/shared/constants/constants.dart';
import 'package:e_commerce/view/checkout/finish_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';


class CheckOutViewModel extends GetxController {


  String cardNumber = '';
  String cardCvv = '';
  String cardName = '';


  TextEditingController number = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController nameCard = TextEditingController();
  TextEditingController cvvCard = TextEditingController();

  var maskFormatterNumber = MaskTextInputFormatter(mask: '####    ####    ####    ####');
  var maskFormatterCvv = MaskTextInputFormatter(mask: '##/##');

  void numberCardFun(String num){
    cardNumber = num;
    update();
  }
  void nameFun(String name){
    cardName = name;
    update();
  }
  void cardCvvFun(String num){
    cardCvv = num;
    update();
  }



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
    }
  }
}
