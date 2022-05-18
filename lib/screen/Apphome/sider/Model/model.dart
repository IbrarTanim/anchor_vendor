// To parse this JSON data, do
//
//     final weatherModel = weatherModelFromMap(jsonString);

// ignore_for_file: unused_import, camel_case_types

import 'package:meta/meta.dart';
import 'dart:convert';

Ankor_Post weatherModelFromMap(String str) =>
    Ankor_Post.fromMap(json.decode(str));

String weatherModelToMap(Ankor_Post data) => json.encode(data.toMap());

class Ankor_Post {
  Ankor_Post({
    required this.status,
    required this.posts,
  });

  String status;
  List<Post> posts;

  factory Ankor_Post.fromMap(Map<String, dynamic> json) => Ankor_Post(
        status: json["status"],
        posts: List<Post>.from(json["posts"].map((x) => Post.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "posts": List<dynamic>.from(posts.map((x) => x.toMap())),
      };
}

class Post {
  Post({
    required this.id,
    required this.userId,
    required this.categoryId,
    required this.quantity,
    required this.quantityScale,
    required this.state,
    required this.loadLat,
    required this.loadLng,
    required this.unloadLat,
    required this.unloadLng,
    required this.extraPort,
    required this.loadingDate,
    required this.loadingTime,
    required this.unloadingDate,
    required this.unloadingTime,
    required this.agreeWithCondition,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.users,
  });

  int id;
  int userId;
  String categoryId;
  String quantity;
  String quantityScale;
  String state;
  String loadLat;
  String loadLng;
  String unloadLat;
  String unloadLng;
  dynamic extraPort;
  String loadingDate;
  String loadingTime;
  dynamic unloadingDate;
  dynamic unloadingTime;
  String agreeWithCondition;
  String status;
  DateTime createdAt;
  DateTime updatedAt;
  Users users;

  factory Post.fromMap(Map<String, dynamic> json) => Post(
        id: json["id"],
        userId: json["user_id"],
        categoryId: json["category_id"],
        quantity: json["quantity"],
        quantityScale: json["quantity_scale"],
        state: json["state"],
        loadLat: json["load_lat"],
        loadLng: json["load_lng"],
        unloadLat: json["unload_lat"],
        unloadLng: json["unload_lng"],
        extraPort: json["extra_port"],
        loadingDate: json["loading_date"],
        loadingTime: json["loading_time"],
        unloadingDate: json["unloading_date"],
        unloadingTime: json["unloading_time"],
        agreeWithCondition: json["agree_with_condition"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        users: Users.fromMap(json["users"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "user_id": userId,
        "category_id": categoryId,
        "quantity": quantity,
        "quantity_scale": quantityScale,
        "state": state,
        "load_lat": loadLat,
        "load_lng": loadLng,
        "unload_lat": unloadLat,
        "unload_lng": unloadLng,
        "extra_port": extraPort,
        "loading_date": loadingDate,
        "loading_time": loadingTime,
        "unloading_date": unloadingDate,
        "unloading_time": unloadingTime,
        "agree_with_condition": agreeWithCondition,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "users": users.toMap(),
      };
}

class Users {
  Users({
    required this.id,
    required this.name,
    required this.companyName,
    required this.profilePhoto,
    required this.profilePhotoUrl,
  });

  int id;
  String name;
  String companyName;
  String profilePhoto;
  String profilePhotoUrl;

  factory Users.fromMap(Map<String, dynamic> json) => Users(
        id: json["id"],
        name: json["name"],
        companyName: json["company_name"],
        profilePhoto: json["profile_photo"],
        profilePhotoUrl: json["profile_photo_url"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "company_name": companyName,
        "profile_photo": profilePhoto,
        "profile_photo_url": profilePhotoUrl,
      };
}
