// To parse this JSON data, do
//
//     final userRegistationInfo = userRegistationInfoFromMap(jsonString);

// ignore_for_file: unnecessary_null_comparison, prefer_if_null_operators

import 'package:meta/meta.dart';
import 'dart:convert';

UserRegistationInfo userRegistationInfoFromMap(String str) => UserRegistationInfo.fromMap(json.decode(str));

String userRegistationInfoToMap(UserRegistationInfo data) => json.encode(data.toMap());

class UserRegistationInfo {
    UserRegistationInfo({
        required this.status,
        required this.posts,
    });

    String status;
    List<Post> posts;

    factory UserRegistationInfo.fromMap(Map<String, dynamic> json) => UserRegistationInfo(
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
        required this.items,
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
    String items;
    String loadLat;
    String loadLng;
    String unloadLat;
    String unloadLng;
    String extraPort;
    String loadingDate;
    String loadingTime;
    String unloadingDate;
    String unloadingTime;
    String agreeWithCondition;
    String status;
    DateTime createdAt;
    DateTime updatedAt;
    Users users;

    factory Post.fromMap(Map<String, dynamic> json) => Post(
        id: json["id"],
        userId: json["user_id"],
        items: json["items"],
        loadLat: json["load_lat"],
        loadLng: json["load_lng"],
        unloadLat: json["unload_lat"],
        unloadLng: json["unload_lng"],
        extraPort: json["extra_port"]??'20',
        loadingDate: json["loading_date"],
        loadingTime: json["loading_time"],
        unloadingDate: json["unloading_date"]??'10',
        unloadingTime: json["unloading_time"]??'10',
        agreeWithCondition: json["agree_with_condition"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        users: Users.fromMap(json["users"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "user_id": userId,
        "items": items,
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
        name: json["name"] == null ? "null" : json["name"],
        companyName: json["company_name"] == null ? "null" : json["company_name"],
        profilePhoto: json["profile_photo"] == null ? "null" : json["profile_photo"],
        profilePhotoUrl: json["profile_photo_url"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name == null ? "null" : name,
        "company_name": companyName == null ? "null" : companyName,
        "profile_photo": profilePhoto == null ? "null" : profilePhoto,
        "profile_photo_url": profilePhotoUrl,
    };
}
