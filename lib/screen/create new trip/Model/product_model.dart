
import 'dart:convert';

class ProductsModel {
  ProductsModel({
    required this.success,
    required this.data,
    required this.message,
  });

  bool success;
  List<Datum> data;
  String message;

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
    success: json["success"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "message": message,
  };
}

class Datum {
  Datum({
    required this.id,
    required this.name,
    this.uploadedBy,
    required this.status,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String name;
  dynamic uploadedBy;
  int status;
  dynamic createdAt;
  dynamic updatedAt;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    name: json["name"],
    uploadedBy: json["uploaded_by"],
    status: json["status"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "uploaded_by": uploadedBy,
    "status": status,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}
