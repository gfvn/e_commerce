import 'package:e_commerce/shared/constants/constants.dart';
import 'package:e_commerce/shared/style/dimensions.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

class BuildItemUser extends StatelessWidget {
  BuildItemUser({Key? key, required this.index}) : super(key: key);

  final int index;






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
