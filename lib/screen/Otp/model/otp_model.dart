import 'dart:convert';

import 'package:flutter/cupertino.dart';

class OTPModel {
  OTPModel({
    required this.success,
    required this.data,
    required this.message,
  });

  bool success;
  Data data;
  String message;

  factory OTPModel.fromJson(Map<String, dynamic> json) => OTPModel(
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
    required this.token,
    this.name,
    required this.id,
  });

  String token;
  dynamic name;
  int id;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    token: json["token"],
    name: json["name"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "name": name,
    "id": id,
  };
}