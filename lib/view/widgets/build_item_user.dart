import 'package:e_commerce/shared/constants/constants.dart';
import 'package:e_commerce/shared/style/dimensions.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

class BuildItemUser extends StatelessWidget {
  BuildItemUser({Key? key, required this.index}) : super(key: key);

  final int index;

  List<String> images = [
    '$urlImage/Icon_Edit-Profile.png',
    '$urlImage/Icon_Location.png',
    '$urlImage/Icon_History.png',
    '$urlImage/Icon_Payment.png',
    '$urlImage/Icon_Alert.png',
    '$urlImage/Icon_Exit.png',
  ];

  List<String> text = [
    'Edit Profile',
    'Shipping Address',
    'Order History',
    'Cards',
    'Notifications',
    'Log Out',
  ];


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Row(
        children: [
          Image.asset(images[index]),
          wSizedBox2,
          CustomText(
            text: text[index],
            fontSize: 18,
            fontFamily: 'DisplayRegular',
          ),
          const Spacer(),
          const Icon(Icons.navigate_next),
        ],
      ),
    );
  }
}
