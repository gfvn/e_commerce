import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:e_commerce/shared/helper/local_storage_data.dart';

class UserViewModel extends GetxController{
  late final LocalStorageData localStorageData;

  void sinOut(){
    GoogleSignIn().signOut();
    FirebaseAuth.instance.signOut();
    localStorageData.deleteUser();
  }

}