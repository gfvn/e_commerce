import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/core/service/home_service.dart';
import 'package:e_commerce/core/view_model/control_view_model.dart';
import 'package:e_commerce/model/category_model.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  final List<CategoryViewModel> _categorise = [];

  HomeViewModel() {
    getCategory();
  }

  getCategory() async {
    HomeService().getCategory().then(
      (value) {

        }
    );
  }
}
