
import 'dart:convert';

class DefaultSuccessResponse {
  DefaultSuccessResponse({
    required this.success,
    required this.data,
    required this.message,
  });

  bool success;
  String data;
  String message;

  factory DefaultSuccessResponse.fromJson(Map<String, dynamic> json) => DefaultSuccessResponse(
    success: json["success"],
    data: json["data"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "data": data,
    "message": message,
  };
}
