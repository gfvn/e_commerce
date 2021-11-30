import 'package:flutter/material.dart';
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
const List<String> images = [
  '$urlImage/Icon_Edit-Profile.png',
  '$urlImage/Icon_Location.png',
  '$urlImage/Icon_History.png',
  '$urlImage/Icon_Payment.png',
  '$urlImage/Icon_Alert.png',
  '$urlImage/Icon_Exit.png',
];
