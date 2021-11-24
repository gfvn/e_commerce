import 'package:cloud_firestore/cloud_firestore.dart';

class HomeService{
  final CollectionReference _collectionReference =
  FirebaseFirestore.instance.collection('categories');

  Future<List<QueryDocumentSnapshot>> getCategory() async {
    var value =  await _collectionReference.get();
    return value.docs;
  }
}