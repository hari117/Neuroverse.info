
import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.displayName,
    this.id,
    this.email,
    this.photoUrl,
  });

  String? displayName;
  String? id;
  String? email;
  String? photoUrl;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    displayName: json[" displayName"] == null ? null : json[" displayName"],
    id: json["id"] == null ? null : json["id"],
    email: json["email"] == null ? null : json["email"],
    photoUrl: json["photoUrl"] == null ? null : json["photoUrl"],
  );

  Map<String, dynamic> toJson() => {
    " displayName": displayName == null ? null : displayName,
    "id": id == null ? null : id,
    "email": email == null ? null : email,
    "photoUrl": photoUrl == null ? null : photoUrl,
  };
}
