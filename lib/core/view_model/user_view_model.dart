import 'package:e_commerce/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:e_commerce/shared/helper/local_storage_data.dart';

class UserViewModel extends GetxController {


  UserModel? userModel;


  bool get isProfileLoading => _isProfileLoading;
  bool _isProfileLoading = false;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getCurrentUser();
  }

  void sinOut() {
    GoogleSignIn().signOut();
    FirebaseAuth.instance.signOut();
    LocalStorageData().deleteUser();
  }

  void getCurrentUser() async {
    _isProfileLoading = false;
    await LocalStorageData().getUser.then(
      (value) async {
        userModel = value;
        _isProfileLoading = true;
        print(value!.uId);
      },
    ).catchError(
      (error) {
        print(error.toString());
      },
    );
    update();
  }
}
