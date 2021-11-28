import 'package:e_commerce/core/service/home_service.dart';
import 'package:e_commerce/model/category_model.dart';
import 'package:e_commerce/model/product_model.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {

  bool _isRefresh = false;
  bool get isRefresh => _isRefresh;

  List<CategoryViewModel> get categorise => _categorise;
  final List<CategoryViewModel> _categorise = [];

  List<ProductModel> get products => _products;
  final List<ProductModel> _products = [];

  HomeViewModel() {
    getCategory();
    getProduct();
  }

  getCategory() async {
    _isRefresh = false;
    await HomeService().getCategory().then((value) {
      value.forEach((element) {
        _categorise.add(
          CategoryViewModel.fromJson(element.data()),
        );
      });
    });
    _isRefresh = true;
    update();
  }

  getProduct() async {
    _isRefresh = false;
    await HomeService().getProduct().then(
          (value) {
            value.forEach((element) {
              _products.add(
                ProductModel.fromJson(element.data()),
              );
            });
          },
        );
    _isRefresh = true;
    update();
  }
}
