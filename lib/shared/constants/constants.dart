import 'package:e_commerce/core/view_model/profile_view_model.dart';
import 'package:e_commerce/view/edit_profile/edit_profile_view.dart';
import 'package:e_commerce/view/shipping_address/shipping_address_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:hexcolor/hexcolor.dart';

Color primaryColor = HexColor('00C569');

const urlImage = 'assets/images';


EdgeInsets padding(context) {
  var displayHeight = MediaQuery.of(context).size.height;
  var displayWidth = MediaQuery.of(context).size.width;
  return EdgeInsets.only(
      top: displayHeight * 0.03,
      bottom: displayHeight * 0.01,
      left: displayWidth * 0.04,
      right: displayWidth * 0.04);
}
EdgeInsets padding1(context) {
  var displayHeight = MediaQuery.of(context).size.height;
  var displayWidth = MediaQuery.of(context).size.width;
  return EdgeInsets.only(
      top: displayHeight * 0.01,
      left: displayWidth * 0.04,
      right: displayWidth * 0.04);
}

const CACHED_USER = 'USER';

const List<String> text = [
  'Edit Profile',
  'Shipping Address',
  'Order History',
  'Cards',
  'Notifications',
  'Log Out',
];

enum chooseType {
  male , female
}


const List<String> images = [
  '$urlImage/Icon_Edit-Profile.png',
  '$urlImage/Icon_Location.png',
  '$urlImage/Icon_History.png',
  '$urlImage/Icon_Payment.png',
  '$urlImage/Icon_Alert.png',
  '$urlImage/Icon_Exit.png',
];


List<Widget> userPages = [
  EditProfileView(userModel: Get.find<ProfileViewModel>().userModel!,),
  ShippingAddressView(),
  ShippingAddressView(),
  ShippingAddressView(),
  ShippingAddressView(),
  ShippingAddressView(),
];

const kTileHeight = 50.0;
const inProgressColor = Colors.black87;
const todoColor = Color(0xffd1d2d7);

enum Pages {
  DeliveryTime,
  AddAddress,
  Summary,
}
