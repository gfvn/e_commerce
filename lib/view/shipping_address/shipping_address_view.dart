import 'package:e_commerce/core/view_model/shipping_address_view_model.dart';
import 'package:e_commerce/model/shipping_address_model.dart';
import 'package:e_commerce/shared/constants/constants.dart';
import 'package:e_commerce/shared/style/dimensions.dart';
import 'package:e_commerce/view/shipping_address/add_address_view.dart';
import 'package:e_commerce/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShippingAddressView extends StatelessWidget {
  const ShippingAddressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ShippingAddressViewModel>(
      init: ShippingAddressViewModel(),
      builder: (controller) => Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: padding(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  child: ListView.separated(
                              shrinkWrap: true,
                      itemBuilder: (context, index) =>
                          builderItems(context, controller,controller.addressModel[index],index),
                      separatorBuilder: (context, index) => hSizedBox2,
                      itemCount: controller.addressModel.length,
                    ),
                  ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(const AddAddressView());
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  Widget builderItems(
    BuildContext context,
    ShippingAddressViewModel controller, AddressModel addressModel, int index,
  ) => Card(
    elevation: 3,
    child: Padding(
      padding: padding(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomText(
                text: '${addressModel.name}',
                fontSize: 20,
                fontFamily: 'DisplayRegularMedium',
              ),
              const Spacer(),
              CustomText(
                text: 'Edit',
                fontSize: 20,
                color: primaryColor,
                fontFamily: 'DisplayRegularMedium',
              ),
            ],
          ),
          hSizedBox2,
          CustomText(
              text: '${addressModel.city} ${addressModel.street} ${addressModel.zip}',
              fontSize: 25,
              fontFamily: 'DisplayRegular'), // street
          hSizedBox2,
          CustomText(
              text: '${addressModel.country} ', fontSize: 25, fontFamily: 'DisplayRegular'),
          hSizedBox2,
          Row(
            children: [
              SizedBox(
                width: 20,
                child: Checkbox(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: addressModel.isCheck,
                  onChanged: (bool? value) {
                    AddressModel model = AddressModel(
                      zip: addressModel.zip,
                      country: addressModel.country,
                      city: addressModel.city,
                      address: addressModel.address,
                      name: addressModel.name,
                      id: addressModel.id,
                      isCheck: value,
                      street: addressModel.street,
                    );
                    controller.updateCheckBoxing(controller.idAddress[index], model);
                  },
                ),
              ),
              wSizedBox2,
              CustomText(
                text: 'Use as the shipping address',
                fontSize: 25,
                color: Colors.grey.shade800,
                fontFamily: 'DisplayRegular',
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
