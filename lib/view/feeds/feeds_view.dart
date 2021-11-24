import 'package:conditional_builder/conditional_builder.dart';
import 'package:e_commerce/core/view_model/home_view_model.dart';
import 'package:e_commerce/model/category_model.dart';
import 'package:e_commerce/shared/constants/constants.dart';
import 'package:e_commerce/shared/style/dimensions.dart';
import 'package:e_commerce/shared/style/icon_broken.dart';
import 'package:e_commerce/view/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeedsView extends StatelessWidget {
  const FeedsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
        builder: (controller) => ConditionalBuilder(
              condition: controller.isRefresh,
              builder: (context) => Padding(
                padding: padding(context),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 55,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Center(
                        child: TextFormField(
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Icon(
                                  IconBroken.Search,
                                  color: Colors.black,
                                ),
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none),
                        ),
                      ),
                    ),
                    hSizedBox3,
                    CustomText(
                      text: 'Categories',
                      fontSize: 25,
                      fontFamily: 'DisplayRegularBold',
                    ),
                    hSizedBox2,
                    Container(
                      height: 120,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            categoriesItem(controller.categorise[index]),
                        separatorBuilder: (context, index) => wSizedBox2,
                        itemCount: controller.categorise.length,
                      ),
                    ),
                    hSizedBox3,
                    Row(
                      children: [
                        CustomText(
                          text: 'Best Selling',
                          fontSize: 25.0,
                          fontFamily: 'DisplayRegularBold',
                        ),
                        Spacer(),
                        CustomText(
                          text: 'See all',
                          fontSize: 20.0,
                          fontFamily: 'DisplayRegularMedium',
                        )
                      ],
                    ),
                    hSizedBox2,
                    Container(
                      height: 350.0,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => productsItem(),
                        separatorBuilder: (context, index) => wSizedBox2,
                        itemCount: 5,
                      ),
                    ),
                  ],
                ),
              ),
              fallback: (context) =>
                  const Center(child: CircularProgressIndicator()),
            ));
  }

  Widget categoriesItem(CategoryViewModel categorise) => Column(
        children: [
          Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.white),
            child: Image.network('${categorise.image}'),
          ),
          hSizedBox1,
          CustomText(
            text: '${categorise.name}',
            fontSize: 17.0,
            fontFamily: 'DisplayRegularMedium',
          )
        ],
      );

  Widget productsItem() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            '$urlImage/Image1.png',
            fit: BoxFit.cover,
            height: 280.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'BeoPlay Speaker',
                fontSize: 22,
                fontFamily: 'DisplayRegularMedium',
              ),
              const SizedBox(
                height: 4,
              ),
              CustomText(
                text: 'Bang and Olsen',
                fontSize: 18,
                fontFamily: 'DisplayRegular',
                color: Colors.grey,
              ),
              const SizedBox(
                height: 4,
              ),
              CustomText(
                text: '\$755',
                fontSize: 22,
                fontFamily: 'DisplayRegularMedium',
                color: primaryColor,
              ),
            ],
          ),
        ],
      );
}
