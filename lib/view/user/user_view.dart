import 'package:e_commerce/shared/constants/constants.dart';
import 'package:e_commerce/shared/style/dimensions.dart';
import 'package:e_commerce/view/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserView extends StatelessWidget {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    width: MediaQuery.of(context).size.width*0.4,
                    child: const Text(
                      'Mostafa Omar ',
                      style: TextStyle(
                        fontSize: 26,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  hSizedBox1,
                  CustomText(text: 'dkshfri976@gmail.com', fontSize: 14.0),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
