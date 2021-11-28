import 'package:e_commerce/core/view_model/user_view_model.dart';
import 'package:e_commerce/shared/constants/constants.dart';
import 'package:e_commerce/shared/style/dimensions.dart';
import 'package:e_commerce/shared/style/icon_broken.dart';
import 'package:e_commerce/view/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserView extends StatelessWidget {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserViewModel>(
      init: UserViewModel(),
      builder: (controller) => Padding(
        padding: padding(context),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                    radius: 70.0,
                    backgroundImage: NetworkImage(
                        'https://image.freepik.com/free-photo/happy-bearded-young-man-looks-with-joyful-expression-has-friendly-smile-wears-yellow-sweater-red-hat_295783-1388.jpg')),
                wSizedBox3,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: CustomText(
                        text: 'mostsafs',
                        fontSize: 26.0,
                        fontFamily: 'DisplayRegularMedium',
                        sizeMaxLines: 1,
                      ),
                    ),
                    hSizedBox1,
                    CustomText(
                      text: 'dkshfri976@gmail.com',
                      fontSize: 14.0,
                      fontFamily: 'DisplayRegular',
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 100.0,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('$urlImage/Icon_Edit-Profile.png'),
                      wSizedBox2,
                      CustomText(text: 'Edit Profile', fontSize: 18, fontFamily: 'DisplayRegular',),
                      Spacer(),
                      Icon(IconBroken.Arrow___Right_2),
                    ],
                  ),
                  hSizedBox3,
                  Row(
                    children: [
                      Image.asset('$urlImage/Icon_Location.png'),
                      wSizedBox2,
                      CustomText(text: 'Shipping Address', fontSize: 18, fontFamily: 'DisplayRegular',),
                      Spacer(),
                      Icon(IconBroken.Arrow___Right_2),
                    ],
                  ),
                  hSizedBox3,
                  Row(
                    children: [
                      Image.asset('$urlImage/Icon_History.png'),
                      wSizedBox2,
                      CustomText(text: 'Order History', fontSize: 18, fontFamily: 'DisplayRegular',),
                      Spacer(),
                      Icon(IconBroken.Arrow___Right_2),
                    ],
                  ),
                  hSizedBox3,
                  Row(
                    children: [
                      Image.asset('$urlImage/Icon_Payment.png'),
                      wSizedBox2,
                      CustomText(text: 'Cards', fontSize: 18, fontFamily: 'DisplayRegular',),
                      Spacer(),
                      Icon(IconBroken.Arrow___Right_2),
                    ],
                  ),
                  hSizedBox3,
                  Row(
                    children: [
                      Image.asset('$urlImage/Icon_Alert.png'),
                      wSizedBox2,
                      CustomText(text: 'Notifications', fontSize: 18, fontFamily: 'DisplayRegular',),
                      Spacer(),
                      Icon(IconBroken.Arrow___Right_2),
                    ],
                  ),
                  hSizedBox3,
                  InkWell(
                    onTap: (){
                      controller.sinOut();
                    },
                    child: Row(
                      children: [
                        Image.asset('$urlImage/Icon_Exit.png'),
                        wSizedBox2,
                        CustomText(text: 'Log Out', fontSize: 18, fontFamily: 'DisplayRegular',),
                        Spacer(),
                        Icon(IconBroken.Arrow___Right_2),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
