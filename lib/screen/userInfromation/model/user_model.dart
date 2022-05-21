
import 'dart:convert';

class UserModel {
  UserModel({
    required this.success,
    required this.data,
    required this.message,
  });

  bool success;
  Data data;
  String message;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    success: json["success"],
    data: Data.fromJson(json["data"]),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "data": data.toJson(),
    "message": message,
  };
}

class Data {
  Data({
    required this.id,
    this.name,
    required this.number,
    this.image,
    this.nidFront,
    this.nidBack,
    this.license,
    this.cheque,
    this.fbId,
    this.googleId,
    required this.createdAt,
    required this.updatedAt,
    required this.point,
  });

  int id;
  dynamic name;
  String number;
  dynamic image;
  dynamic nidFront;
  dynamic nidBack;
  dynamic license;
  dynamic cheque;
  dynamic fbId;
  dynamic googleId;
  DateTime createdAt;
  DateTime updatedAt;
  int point;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    name: json["name"],
    number: json["number"],
    image: json["image"],
    nidFront: json["nid_front"],
    nidBack: json["nid_back"],
    license: json["license"],
    cheque: json["cheque"],
    fbId: json["fb_id"],
    googleId: json["google_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    point: json["point"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "number": number,
    "image": image,
    "nid_front": nidFront,
    "nid_back": nidBack,
    "license": license,
    "cheque": cheque,
    "fb_id": fbId,
    "google_id": googleId,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "point": point,
  };
}
