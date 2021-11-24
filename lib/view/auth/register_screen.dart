import 'package:e_commerce/core/view_model/auth_view_model.dart';
import 'package:e_commerce/shared/constants/constants.dart';
import 'package:e_commerce/shared/style/dimensions.dart';
import 'package:e_commerce/shared/style/icon_broken.dart';
import 'package:e_commerce/view/auth/login_screen.dart';
import 'package:e_commerce/view/widgets/custom_button.dart';
import 'package:e_commerce/view/widgets/custom_text.dart';
import 'package:e_commerce/view/widgets/custom_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends GetWidget<AuthViewModel> {
  final _formKey = GlobalKey<FormState>();

  RegisterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: padding(context),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                    alignment: Alignment.topLeft,
                    child: InkWell(
                        onTap: () => Get.offAll(LoginScreen()),
                        child: const Icon(IconBroken.Arrow___Left_2))),
                hSizedBox4,
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        CustomText(
                          alignment: Alignment.topLeft,
                          text: 'Sign Up',
                          fontSize: 30.0,
                          color: Colors.black,
                          fontFamily: 'DisplayRegularBold',
                        ),
                        hSizedBox4,
                        CustomTextFormField(
                          hint: 'mostafa',
                          text: 'Name',
                          onSaved: (value) {},
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Must write the Name';
                            }
                            return null;
                          },
                          type: TextInputType.name,
                          controller: controller.name,
                        ),
                        hSizedBox3,
                        CustomTextFormField(
                          hint: 'mostafa@gmail.com',
                          text: 'Email',
                          onSaved: (value) {},
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Must write the Email';
                            }
                            return null;
                          },
                          type: TextInputType.emailAddress,
                          controller: controller.email,
                        ),
                        hSizedBox3,
                        CustomTextFormField(
                          hint: '**********',
                          text: 'Password',
                          onSaved: (value) {},
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Must write the Password';
                            }
                            return null;
                          },
                          type: TextInputType.visiblePassword,
                          controller: controller.password,
                        ),
                        hSizedBox3,
                        CustomButton(
                          text: 'SIGN UP',
                          height: 50.0,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              controller.createUserWithEmailAndPassword();
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
