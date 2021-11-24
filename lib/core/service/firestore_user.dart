import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/model/user_model.dart';


class FirestoreUsers {
  final CollectionReference _collectionReference =
      FirebaseFirestore.instance.collection('users');
  Future<void> addUserToFirestore(UserModel userModel) async {
    print(userModel.name);
    return await _collectionReference.doc(userModel.uId).set(userModel.toMap());
  }
}
