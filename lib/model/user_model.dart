class UserModel {
  String? name;
  String? email;
  String? uId;
  String? image;

  UserModel({
    this.name,
    this.email,
    this.image,
    this.uId
  });

  UserModel.fromJson(Map<String,dynamic>json){
    name = json['name'];
    email = json['email'];
    uId = json['uId'];
    image = json['image'];
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'uId': uId,
      'image': image,
    };
  }

}