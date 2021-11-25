import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/core/service/home_service.dart';
import 'package:e_commerce/core/view_model/control_view_model.dart';
import 'package:e_commerce/model/category_model.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  final List<CategoryViewModel> _categorise = [];

  bool isRefresh = false;

  List<CategoryViewModel> get categorise => _categorise;

  HomeViewModel() {
    getCategory();
  }

  getCategory() async {
    isRefresh = false;
    HomeService().getCategory().then((value) {
      value.forEach((element) {
        _categorise.add(
          CategoryViewModel.fromJson(element.data()),
        );
        isRefresh = true;
      });
    });
    update();
  }
}
